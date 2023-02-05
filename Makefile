#######################################################
# OpenHikingMap
#
# Map building automation
#
# Copyright (c) 2021-2023 OpenHiking contributors
# SPDX-License-Identifier: GPL-3.0-only
#
########################################################


##############################################
# External data sources
GEOFABRIK_URL=http://download.geofabrik.de/europe/

##############################################
# Builder configuratios

CONFIG_DIR=config
BOUNDARY_DIR=boundaries
TAGMAP_DIR=tag-map
STYLES_DIR=style
RESOURCES_DIR=resources


##############################################
# Map configurations

ifeq ($(MAP),)
$(error MAP variable must be set)
endif

include $(CONFIG_DIR)/$(MAP).cfg

include $(CONFIG_DIR)/environment.mk


##############################################
# Contour Lines

PHYGHTMAP_JOBS?=2

CONTOUR_START_ID=100000000000
CONTOUR_FILE_FP=$(CONTOUR_DIR)$(PSEP)$(CONTOUR_LINES)

ifeq ($(DEM_SOURCES),)
	DEM_SOURCES=alos
endif

DEM_SOURCE_TILES=$(shell $(DEMMGR) -s -i -p $(BOUNDARY_POLYGON_FP) -d $(DEM_DIR) $(DEM_SOURCES))

ifeq ($(CONTOUR_LINE_STEP),10)
	CONTOUR_LINE_MEDIUM=20
	CONTOUR_LINE_MAJOR=100
else ifeq ($(CONTOUR_LINE_STEP),20)
	CONTOUR_LINE_MEDIUM=40
	CONTOUR_LINE_MAJOR=200
endif


##############################################
# Preprocessing

COMMON_DIR=$(WORKING_DIR)$(PSEP)common
MFMAP_DIR = $(WORKING_DIR)$(PSEP)mf-$(MAP)

ALL_COUNTRIES=$(OSM_COUNTRY_LIST) $(OSM_COUNTRY_LIST_PARTIAL)

BOUNDARY_POLYGON_FP=$(BOUNDARY_DIR)$(PSEP)$(BOUNDARY_POLYGON)
MAP_OSM_LATEST_PBF := $(foreach ds,$(ALL_COUNTRIES),$(OSM_CACHE_DIR)$(PSEP)$(ds)-latest.osm.pbf)

MAP_INP_OSM_O5M_1 := $(foreach ds,$(OSM_COUNTRY_LIST),$(COMMON_DIR)$(PSEP)$(ds)-latest.o5m)
MAP_INP_OSM_O5M_2 := $(foreach ds,$(OSM_COUNTRY_LIST_PARTIAL),$(MFMAP_DIR)$(PSEP)$(ds)-clipped.o5m)

MAP_INP_OSM_O5M := $(MAP_INP_OSM_O5M_1) $(MAP_INP_OSM_O5M_2)


##############################################
# Hiking Symbol Generation

MAP_SYMBOL_LOOKUP_FILE=$(CONFIG_DIR)$(PSEP)symbol-lookup.csv
MAP_COUNTRY_ROUTES_O5M := $(foreach ds,$(ALL_COUNTRIES),$(COMMON_DIR)$(PSEP)$(ds)-routes.o5m)
MAP_ROUTES_FILE=routes
MAP_ROUTES_PBF_FP=$(MFMAP_DIR)$(PSEP)$(MAP_ROUTES_FILE).pbf
ROUTE_CONDITION?="route=hiking or route=foot or ( route=piste and ( jel=px or jel=kx ) )"

MAP_HIKING_SYMBOLS_OSM_FP=$(MFMAP_DIR)$(PSEP)symbols.osm
MAP_TRAIL_COLORS_OSC_FP=$(MFMAP_DIR)$(PSEP)trails.osc

ifeq ($(GENERATE_HIKING_SYMBOLS),yes)
	MAP_INP_SYMBOLS_OSM=$(MAP_HIKING_SYMBOLS_OSM_FP)
endif

SYMBOLS_START_ID=120000000000


##############################################
# Merging

#MAP_INP_OSM_PBF := $(MAP_OSM_LATEST_PBF)
#MAP_INP_OSM_PBF_ARGS=$(foreach wrd,$(MAP_INP_OSM_PBF),--read-pbf file=$(wrd))

MAP_INP_CONTOUR=$(CONTOUR_DIR)$(PSEP)$(CONTOUR_LINES)
MAP_INP_CONTOUR_ARGS=--read-pbf file=$(MAP_INP_CONTOUR)

MAP_MERGED_PBF=merged$(MAP).pbf
MAP_MERGED_O5M=merged$(MAP).o5m
MAP_MERGED_PBF_FP=$(MFMAP_DIR)$(PSEP)$(MAP_MERGED_PBF)
MAP_MERGED_O5M_FP=$(MFMAP_DIR)$(PSEP)$(MAP_MERGED_O5M)

MAP_INP_OSC := $(MAP_TRAIL_COLORS_OSC_FP)

MAP_MASTER_PBF=master$(MAP).pbf
MAP_MASTER_PBF_FP=$(MFMAP_DIR)$(PSEP)$(MAP_MASTER_PBF)


##############################################
# Tag-transform and map writing

MAP_TAG_TRANSFORM=tag-transform.xml
MAP_TAG_MAP=tag-mapping.xml

MAP_TAG_TANSFORM_FP=$(TAGMAP_DIR)$(PSEP)$(MAP_TAG_TRANSFORM)
MAP_TAG_MAP_FP=$(TAGMAP_DIR)$(PSEP)$(MAP_TAG_MAP)

MAP_MASTERX_PBF=master$(MAP)x.pbf
MAP_MASTERX_PBF_FP=$(MFMAP_DIR)$(PSEP)$(MAP_MASTERX_PBF)


ifeq ($(MAPWRITER_IN_MEMORY),yes)
	MAP_MW_TYPE=ram
else
	MAP_MW_TYPE=hd
endif

MAP_WRITER_THREADS?=2
MAP_WRITER_CONF=tag-values=true type=$(MAP_MW_TYPE) preferred-languages=$(MAP_LANGUAGES) threads=$(MAP_WRITER_THREADS)
MAP_MAPSFORGE_FP=$(MFMAP_DIR)$(PSEP)$(MAPNAME).map
MAP_MAPSFORGE_ZIP_FP=$(MFMAP_DIR)$(PSEP)$(MAPNAME).zip


##############################################
# Map style
MAP_STYLE_NAME=OpenHiking
MAP_STYLE_RESOURCES=icons/ hiking/ patterns/
MAP_STYLE_XSLT_FP=$(STYLES_DIR)$(PSEP)$(MAP_STYLE_NAME).xslt


MAP_STYLE_OUTPUT_DIR= $(WORKING_DIR)$(PSEP)styles
MAP_STYLE_XML=$(MAP_STYLE_NAME).xml
MAP_STYLE_XML_FP = $(MAP_STYLE_OUTPUT_DIR)$(PSEP)$(MAP_STYLE_NAME)$(PSEP)$(MAP_STYLE_XML)

MAP_STYLE_ZIP=$(MAP_STYLE_NAME)-theme.zip
STYLEZIPARGS=-r

##############################################
# Recipes

alos:
	$(DEMMGR) -r --poly=$(BOUNDARY_POLYGON_FP) --dem=$(DEM_DIR) --alos=$(ALOS_DOWNLOAD_SUBDIR)

contour:
	cd $(DEM_DIR) &&  $(PHYGHTMAP) --jobs=$(PHYGHTMAP_JOBS) \
	 -s $(CONTOUR_LINE_STEP) -c $(CONTOUR_LINE_MAJOR),$(CONTOUR_LINE_MEDIUM)  \
	 --start-node-id=$(CONTOUR_START_ID) --start-way-id=$(CONTOUR_START_ID) $(CONTOUR_RDP) \
	 --max-nodes-per-tile=0 --o5m -o $(CONTOUR_FILE_FP) $(DEM_SOURCE_TILES)


$(OSM_CACHE_DIR)$(PSEP2)%-latest.osm.pbf:
	$(WGET) $(GEOFABRIK_URL)$*-latest.osm.pbf -P $(OSM_CACHE_DIR)


refresh:  $(MAP_OSM_LATEST_PBF) 
	@echo "Completed"

$(COMMON_DIR)$(PSEP2)%-latest.o5m: $(OSM_CACHE_DIR)$(PSEP)%-latest.osm.pbf
	$(OSMCONVERT) $< -o=$@

$(MFMAP_DIR)$(PSEP2)%-clipped.o5m: $(OSM_CACHE_DIR)$(PSEP)%-latest.osm.pbf
	$(OSMCONVERT) $< -B=$(BOUNDARY_POLYGON_FP) -o=$@


$(COMMON_DIR)$(PSEP2)%-routes.o5m: $(COMMON_DIR)$(PSEP)%-latest.o5m
	$(OSMFILTER) $< --keep-nodes= --keep-ways-relations=$(ROUTE_CONDITION)  -o=$@


$(MAP_ROUTES_PBF_FP):  $(MAP_COUNTRY_ROUTES_O5M)
	$(OSMCONVERT) --hash-memory=240-30-2  -B=$(BOUNDARY_POLYGON_FP) --drop-version $^  -o=$@

$(MAP_HIKING_SYMBOLS_OSM_FP): $(MAP_ROUTES_PBF_FP)
	$(MAKESYMBOLS) --start-node-id=$(SYMBOLS_START_ID) --lookup-file=$(MAP_SYMBOL_LOOKUP_FILE) --pictogram-file=$(MAP_HIKING_SYMBOLS_OSM_FP) --trail-file=$(MAP_TRAIL_COLORS_OSC_FP) $(MAP_ROUTES_PBF_FP)

$(MAP_TRAIL_COLORS_OSC_FP): $(MAP_ROUTES_PBF_FP)
	$(MAKESYMBOLS) --start-node-id=$(SYMBOLS_START_ID) --lookup-file=$(MAP_SYMBOL_LOOKUP_FILE) --pictogram-file=$(MAP_HIKING_SYMBOLS_OSM_FP) --trail-file=$(MAP_TRAIL_COLORS_OSC_FP) $(MAP_ROUTES_PBF_FP)


symbols: $(MAP_HIKING_SYMBOLS_OSM_FP) $(MAP_TRAIL_COLORS_OSC_FP)
	@echo "Done"


$(MAP_MERGED_PBF_FP):  $(MAP_INP_OSM_O5M) $(MAP_INP_SYMBOLS_OSM) $(MAP_INP_CONTOUR)
	$(OSMCONVERT) --hash-memory=240-30-2  $^ -B=$(BOUNDARY_POLYGON_FP) -o=$@

merge: $(MAP_MERGED_PBF_FP)
	@echo "Merge completed"
	
$(TILES_DIR)$(PSEP2)%-places.o5m: $(TILES_DIR)$(PSEP)%-clipped.o5m
	$(OSMFILTER) $< --keep=$(PLACE_CONDITION)  -o=$@

$(TILES_DIR)$(PSEP2)%-places.pbf: $(TILES_DIR)$(PSEP)%-places.o5m
	$(OSMCONVERT) $< -o=$@

$(TILES_DIR)$(PSEP2)%-places.osc: $(TILES_DIR)$(PSEP)%-places.pbf
	$(MAKENAMES) $^ $@


$(MAP_MASTER_PBF_FP): $(MAP_MERGED_PBF_FP) $(MAP_INP_OSC)
	$(OSMCONVERT) --hash-memory=240-30-2   --drop-version $^ -o=$@

master: $(MAP_MASTER_PBF_FP)
	@echo "DONE"

merge-osmosis:  $(MAP_INP_OSM_PBF) $(MAP_INP_SUPP_PBF) $(MAP_INP_CONTOUR)
	$(OSMOSIS) $(MAP_INP_OSM_PBF_ARGS) $(MAP_INP_SUPP_PBF_ARGS) $(MAP_INP_CONTOUR_ARGS) --merge --bp file=$(BOUNDARY_POLYGON_FP) --wb file=$@
	@echo "Merge completed"

$(MAP_MASTERX_PBF_FP): $(MAP_MASTER_PBF_FP)
	$(OSMOSIS) --rb file=$< --tag-transform file=$(MAP_TAG_TANSFORM_FP) --wb file=$@ omitmetadata=true

$(MAP_MAPSFORGE_FP): $(MAP_MASTERX_PBF_FP)
	$(OSMOSIS) --rb file=$< --mw tag-conf-file=$(MAP_TAG_MAP_FP) $(MAP_WRITER_CONF) file=$@ 


$(MAP_STYLE_XML_FP): $(MAP_STYLE_XSLT_FP)
	$(XSLTPROC) $< > $@
	
transform: $(MAP_MASTERX_PBF_FP)
	@echo "DONE"

map: $(MAP_MAPSFORGE_FP)
	@echo "DONE"

zip: $(MAP_MAPSFORGE_FP)
	$(ZIP) -j $(MAP_MAPSFORGE_ZIP_FP) $(MAP_MAPSFORGE_FP)

style: $(MAP_STYLE_XML_FP)
	cd $(MAP_STYLE_OUTPUT_DIR) && $(ZIP) $(STYLEZIPARGS) $(MAP_STYLE_ZIP) $(MAP_STYLE_NAME)/ 


stage1: refresh master transform map
	@echo Stage-1 completed successfully

all:  master transform map zip
	@echo Map making completed successfully

clean:
	$(DEL) $(MFMAP_DIR)$(PSEP)*

cleancache:
	$(DEL) $(OSM_CACHE_DIR)$(PSEP)*.pbf
	$(DEL) $(COMMON_DIR)$(PSEP)*.o5m

cleanstyle:
	$(DEL) $(MAP_STYLE_XML_FP)
	$(DEL) $(MAP_STYLE_OUTPUT_DIR)$(PSEP)$(MAP_STYLE_ZIP)


test:
	@echo $(MAP_MAPSFORGE_ZIP_FP)
	@echo $(MAP_STYLE_XML_FP)





