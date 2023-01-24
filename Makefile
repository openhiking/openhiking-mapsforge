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
STYLES_DIR=styles
RESOURCES_DIR=resources


##############################################
# Map configurations

ifeq ($(MAP),)
$(error MAP variable must be set)
endif

include $(CONFIG_DIR)/$(MAP).cfg


##############################################
# Directory configurations

OSM_CACHE_DIR=${MKG_OSM_CACHE_DIR}
ifeq ($(OSM_CACHE_DIR),)
$(error MKG_OSM_CACHE_DIR env variable must be set)
endif

DEM_DIR=${MKG_DEM_DIR}
ifeq ($(DEM_DIR),)
$(error MKG_DEM_DIR env variable must be set)
endif


CONTOUR_DIR=${MKG_CONTOUR_DIR}
ifeq ($(CONTOUR_DIR),)
$(error MKG_CONTOUR_DIR env variable must be set)
endif


WORKING_DIR=${MKG_WORKING_DIR}
ifeq ($(WORKING_DIR),)
$(error MKG_WORKING_DIR env variable must be set)
endif

SEA_AREA_DIR=$(MKG_SEA_AREA_DIR)
OUTPUT_DIR=${MKG_OUTPUT_DIR}
MAPSOURCE_DIR?=${MKG_MAPSOURCE_DIR}

ifneq (${MKG_WGET},)
WGET=${MKG_WGET}
endif

ifneq (${MKG_OSMCONVERT},)
OSMCONVERT=${MKG_OSMCONVERT}
endif

ifneq (${MKG_OSMFILTER},)
OSMFILTER=${MKG_OSMFILTER}
endif


ifneq (${MKG_MAKESYMBOLS},)
MAKESYMBOLS=${MKG_MAKESYMBOLS}
endif

ifneq (${MKG_ZIP},)
ZIP=${MKG_ZIP}
endif


##############################################
# Operating System Dependent Tools


ifeq (${ComSpec},)
	LINUX=1
	OSMCONVERT?=osmconvert64
	OSMFILTER?=osmfilter
	OSMOSIS?=${HOME}/tools/osmosis-0.48.3/bin/osmosis
	ZIP?=zip
	ZIPARGS?=-r
	PSEP=$(subst /,/,/)
	PSEP2=$(PSEP)
	CMDLIST=&&
	COPY=cp
	MOVE=mv
	DEL=rm -rf
	CAT=cat
else
	LINUX=0
	OSMCONVERT?=osmconvert64.exe
	OSMFILTER?=osmfilter.exe
	OSMOSIS?=c:\Apps\osmosis-0-48\bin\osmosis
	ZIP?="c:\Program Files\7-Zip\7z.exe"
	ZIPARGS?=a -tzip
	PSEP=$(subst /,\,/)
	PSEP2=$(PSEP)$(PSEP)
	CMDLIST=&
	COPY=copy /b
	MOVE=move
	DEL=del /f /q
        RMDIR=rmdir /s /q
endif

WGET?=wget


##############################################
# Preprocessing

COMMON_DIR=$(WORKING_DIR)$(PSEP)common
MFMAP_DIR = $(WORKING_DIR)$(PSEP)mf-$(MAP)

BOUNDARY_POLYGON_FP=$(BOUNDARY_DIR)$(PSEP)$(BOUNDARY_POLYGON)
MAP_OSM_LATEST_PBF := $(foreach ds,$(OSM_COUNTRY_LIST),$(OSM_CACHE_DIR)$(PSEP)$(ds)-latest.osm.pbf)
MAP_INP_OSM_O5M := $(foreach ds,$(OSM_COUNTRY_LIST),$(COMMON_DIR)$(PSEP)$(ds)-latest.o5m)


##############################################
# Hiking Symbol Generation

MAP_SYMBOL_LOOKUP_FILE=$(CONFIG_DIR)$(PSEP)symbol-lookup.csv
MAP_COUNTRY_ROUTES_O5M := $(foreach ds,$(OSM_COUNTRY_LIST),$(COMMON_DIR)$(PSEP)$(ds)-routes.o5m)
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

MAP_MASTER_PBF=master$(MAP).pbf
MAP_MASTER_PBF_FP=$(MFMAP_DIR)$(PSEP)$(MAP_MASTER_PBF)

MAP_INP_OSC := $(MAP_TRAIL_COLORS_OSC_FP)


##############################################
# Recipes

$(OSM_CACHE_DIR)$(PSEP2)%-latest.osm.pbf:
	$(WGET) $(GEOFABRIK_URL)$*-latest.osm.pbf -P $(OSM_CACHE_DIR)


refresh:  $(MAP_OSM_LATEST_PBF) 
	@echo "Completed"

$(COMMON_DIR)$(PSEP2)%-latest.o5m: $(OSM_CACHE_DIR)$(PSEP)%-latest.osm.pbf
	$(OSMCONVERT) $< -o=$@

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

$(MAP_MERGED_O5M_FP): $(MAP_MERGED_PBF_FP)
	$(OSMCONVERT) $^ -o=$@




zip:
ifeq ($(OUTPUT_DIR),)
$(error MKG_OUTPUT_DIR env variable is not set!)
endif
	$(DEL) "$(OUTPUT_DIR)$(PSEP)$(IMG_ZIP_NAME)"
	$(ZIP) $(ZIPARGS) "$(OUTPUT_DIR)$(PSEP)$(IMG_ZIP_NAME)" "$(GMAP_DIR)$(PSEP)7*.img" "$(GMAP_DIR)$(PSEP)$(MAPNAME).img" \
	"$(GMAP_DIR)$(PSEP)$(MAPNAME)_mdr.img" "$(GMAP_DIR)$(PSEP)*.mdx" "$(GMAP_DIR)$(PSEP)*.tdb" "$(GMAP_DIR)$(PSEP)*.typ"


stage1: refresh merge tiles
	@echo Stage-1 completed successfully

stage2: map nsi-script install $(MAKE_GMAPI)
	@echo Stage-2 completed successfully

all: refresh merge tiles map nsi-script install $(MAKE_GMAPI)
	@echo Map making completed successfully

clean:
	$(DEL) $(MF_DIR)$(PSEP)*

cleancache:
	$(DEL) $(OSM_CACHE_DIR)$(PSEP)*.pbf
	$(DEL) $(COMMON_DIR)$(PSEP)*.pbf
	$(DEL) $(COMMON_DIR)$(PSEP)*.o5m



test:
	@echo $(MAP_MERGED_PBF_FP)





