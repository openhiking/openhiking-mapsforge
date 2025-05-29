#######################################################
# OpenHikingMap
#
# Map building automation
#
# Copyright (c) 2021-2025 OpenHiking contributors
# SPDX-License-Identifier: GPL-3.0-only
#
########################################################


##############################################
# Builder configuratios
CONFIG_DIR=config
BOUNDARY_DIR=boundaries
TAGMAP_DIR=tag-map
STYLES_DIR=styles
RESOURCES_DIR=resources

##############################################
# Map configurations


include $(CONFIG_DIR)/environment.mk

ifneq ($(MAP),)
include $(CONFIG_DIR)/$(MAP).cfg
endif


##############################################
# OSM Data Acquisition

GEOFABRIK_URL_EUROPE=http://download.geofabrik.de/europe/
GEOFABRIK_URL_ASIA=https://download.geofabrik.de/asia/
GEOFABRIK_URL_GLOBAL=https://download.geofabrik.de/

OSM_COUNTRIES_EUROPE_ALL := $(OSM_COUNTRIES_EUROPE) $(OSM_COUNTRIES_EUROPE_PARTIAL)
OSM_COUNTRIES_ASIA_ALL := $(OSM_COUNTRIES_ASIA) $(OSM_COUNTRIES_ASIA_PARTIAL)
OSM_COUNTRIES_GLOBAL_ALL := $(OSM_COUNTRIES_GLOBAL) $(OSM_COUNTRIES_GLOBAL_PARTIAL)

OSM_COUNTRIES_EUROPE_FP := $(foreach ds,$(OSM_COUNTRIES_EUROPE_ALL),$(OSM_CACHE_DIR)$(PSEP)$(ds)-latest.osm.pbf)
OSM_COUNTRIES_ASIA_FP := $(foreach ds,$(OSM_COUNTRIES_ASIA_ALL),$(OSM_CACHE_DIR)$(PSEP)$(ds)-latest.osm.pbf)
OSM_COUNTRIES_GLOBAL_FP := $(foreach ds,$(OSM_COUNTRIES_GLOBAL_ALL),$(OSM_CACHE_DIR)$(PSEP)$(ds)-latest.osm.pbf)

MAP_OSM_LATEST_PBF = $(OSM_COUNTRIES_EUROPE_FP) $(OSM_COUNTRIES_ASIA_FP) $(OSM_COUNTRIES_GLOBAL_FP)


##############################################
# Preprocessing

COMMON_DIR=$(WORKING_DIR)$(PSEP)common
MFMAP_DIR = $(WORKING_DIR)$(PSEP)mf-$(MAP)

OSM_COUNTRIES_FULL = $(OSM_COUNTRIES_EUROPE) $(OSM_COUNTRIES_ASIA) $(OSM_COUNTRIES_GLOBAL)
OSM_COUNTRIES_PARTIAL = $(OSM_COUNTRIES_EUROPE_PARTIAL) $(OSM_COUNTRIES_ASIA_PARTIAL) $(OSM_COUNTRIES_GLOBAL_PARTIAL)
ALL_COUNTRIES=$(OSM_COUNTRIES_FULL) $(OSM_COUNTRIES_PARTIAL)


BOUNDARY_POLYGON_FP=$(BOUNDARY_DIR)$(PSEP)$(BOUNDARY_POLYGON)

MAP_INP_OSM_O5M_1 := $(foreach ds,$(OSM_COUNTRIES_FULL),$(COMMON_DIR)$(PSEP)$(ds)-latest.o5m)
MAP_INP_OSM_O5M_2 := $(foreach ds,$(OSM_COUNTRIES_PARTIAL),$(MFMAP_DIR)$(PSEP)$(ds)-clipped.o5m)

MAP_INP_OSM_O5M := $(MAP_INP_OSM_O5M_1) $(MAP_INP_OSM_O5M_2)

MAP_MERGED_PBF=merged$(MAP).pbf
MAP_MERGED_PBF_FP=$(MFMAP_DIR)$(PSEP)$(MAP_MERGED_PBF)


ifeq (${LINUX},1)
OSMC_COMPLETE_OPTS=--complete-ways --complete-multipolygons --complete-boundaries
else
OSMC_COMPLETE_OPTS=
endif
 
MFMAP_DIR_DRIVE=$(word 1,$(subst :, ,$(MFMAP_DIR))):

##############################################
# Route processing

# Backward compatibility
ifeq ($(GENERATE_HIKING_SYMBOLS),yes)
ROUTE_MAPPING=yes
endif

SYMBOLS_START_ID=120000000000	
MAP_ROUTE_MAPPING_CONFIG=$(CONFIG_DIR)$(PSEP)routemapping.ini
MAP_SYMBOL_LOOKUP_FILE=$(CONFIG_DIR)$(PSEP)symbol-lookup.csv
MAP_SYMBOL_STACKING_FILE=$(CONFIG_DIR)$(PSEP)symbol-stacking.csv
MAP_SYMBOL_PRIORITY_FILE=$(CONFIG_DIR)$(PSEP)symbol-priorities.csv

MAP_COUNTRY_ROUTES_O5M_1 := $(foreach ds,$(OSM_COUNTRIES_FULL),$(COMMON_DIR)$(PSEP)$(ds)-routes.o5m)
MAP_COUNTRY_ROUTES_O5M_2 := $(foreach ds,$(OSM_COUNTRIES_PARTIAL),$(MFMAP_DIR)$(PSEP)$(ds)-croutes.o5m)
MAP_COUNTRY_ROUTES_O5M := $(MAP_COUNTRY_ROUTES_O5M_1) $(MAP_COUNTRY_ROUTES_O5M_2)
#MAP_COUNTRY_ROUTES_O5M := $(foreach ds,$(ALL_COUNTRIES),$(COMMON_DIR)$(PSEP)$(ds)-routes.o5m)
MAP_ROUTES_FILE=routes
MAP_ROUTES_PBF_FP=$(MFMAP_DIR)$(PSEP)$(MAP_ROUTES_FILE).pbf
ROUTE_CONDITION?="route=hiking or route=foot or route=bicycle or route=mtb or piste:type=nordic or piste:type=skitour or piste:type=hike "

MAP_HIKING_SYMBOLS_OSM_FP=$(MFMAP_DIR)$(PSEP)symbols.osm
MAP_TRAIL_COLORS_OSC_FP=$(MFMAP_DIR)$(PSEP)trails.osc

MAP_MERGED2_PBF=merged$(MAP)2.pbf
MAP_MERGED2_PBF_FP=$(MFMAP_DIR)$(PSEP)$(MAP_MERGED2_PBF)

ifeq ($(ROUTE_MAPPING),yes)
	MAP_INP_SYMBOLS_OSM :=$(MAP_HIKING_SYMBOLS_OSM_FP)
	MAP_INP_OSC := $(MAP_TRAIL_COLORS_OSC_FP)
	MAP_TTX_INP := $(MAP_MERGED2_PBF_FP)
else
	MAP_TTX_INP := $(MAP_MERGED_PBF_FP)
endif


ifneq ($(DEFAULT_TRAIL_COLOR),)
	DEFAULT_COLOR_OPT=--default-color=$(DEFAULT_TRAIL_COLOR)
endif


##############################################
# Rule-based tag-transform 

MAP_MERGEDX_PBF=merged$(MAP)x.pbf
MAP_MERGEDX_PBF_FP=$(MFMAP_DIR)$(PSEP)$(MAP_MERGEDX_PBF)
TAG_TRANSFORM_RULE_OPTS := $(foreach rules,$(TAG_TRANSFORM_RULES),--rules=$(TAGMAP_DIR)$(PSEP)$(rules))
TAG_TRANSFORM_VAR_OPTS := $(foreach var,$(TAG_TRANSFORM_VARS),--set=$(var))

##############################################
# Master 

MAP_MASTER_INP_OSM_FP=$(MAP_MERGEDX_PBF_FP)

ifneq (${COASTLINES},)
MAP_INP_COASTLINES_O5M_FP=$(COASTLINES_DIR)$(PSEP)$(COASTLINES)
endif

ifneq (${CONTOUR_LINES},)
MAP_INP_CONTOUR=$(CONTOUR_DIR)$(PSEP)$(CONTOUR_LINES)
MAP_INP_CONTOUR_ARGS=--read-pbf file=$(MAP_INP_CONTOUR)
endif

MAP_MASTER_PBF=master$(MAP).pbf
MAP_MASTER_PBF_FP=$(MFMAP_DIR)$(PSEP)$(MAP_MASTER_PBF)


##############################################
# XML-based Tag-transform and map writing

TAG_TRANSFORM_XML?=tag-transform.xml
TAG_MAP_XML?=tag-mapping.xml

TAG_TANSFORM_XML_FP=$(TAGMAP_DIR)$(PSEP)$(TAG_TRANSFORM_XML)
TAG_MAP_XML_FP=$(TAGMAP_DIR)$(PSEP)$(TAG_MAP_XML)

MAP_MASTERX_PBF=master$(MAP)x.pbf
MAP_MASTERX_PBF_FP=$(MFMAP_DIR)$(PSEP)$(MAP_MASTERX_PBF)


##############################################
# Map writing

ifneq (${LICENSE_FILE},)
LICENSE_FILE_FP=$(CONFIG_DIR)$(PSEP)$(LICENSE_FILE)
MAP_LICENSE :=$(file < $(LICENSE_FILE_FP))
MAP_LICENSE_OPT=comment="$(MAP_LICENSE)"
endif

ifeq ($(MAPWRITER_IN_MEMORY),yes)
	MAP_MW_TYPE=ram
else
	MAP_MW_TYPE=hd
endif

MAP_WRITER_THREADS?=4
MAP_BBOX_ENLARGEMENT?=1

MAP_WRITER_CONF=tag-values=true type=$(MAP_MW_TYPE) preferred-languages=$(MAP_LANGUAGES) threads=$(MAP_WRITER_THREADS) bbox-enlargement=$(MAP_BBOX_ENLARGEMENT)  $(MAP_LICENSE_OPT)
MAP_MAPSFORGE_FP=$(MFMAP_DIR)$(PSEP)$(MAPNAME).map
MAP_MAPSFORGE_ZIP_FP=$(MFMAP_DIR)$(PSEP)$(MAPNAME).zip


##############################################
# ZIP
ifeq ($(LINUX),1)
	MAPZIPARGS?=-j
else
	MAPZIPARGS?=a -tzip 
endif


##############################################
# Map style
MAP_STYLE_NAME?=$(STYLE)
MAP_STYLE_RESOURCES?=icons/ hiking/ patterns/
MAP_STYLE_XSLT_FP=$(STYLES_DIR)$(PSEP)$(MAP_STYLE_NAME)$(PSEP)$(MAP_STYLE_NAME).xslt

STYLE_OUTPUT_DIR?=styles
MAP_STYLE_OUTPUT_DIR=$(WORKING_DIR)$(PSEP)$(STYLE_OUTPUT_DIR)
MAP_STYLE_XML=$(MAP_STYLE_NAME).xml
MAP_STYLE_XML_FP = $(MAP_STYLE_OUTPUT_DIR)$(PSEP)$(MAP_STYLE_NAME)$(PSEP)$(MAP_STYLE_XML)

MAP_STYLE_ZIP=$(MAP_STYLE_NAME)-theme.zip

ifeq ($(LINUX),1)
	STYLEZIPARGS?=-r
else
	STYLEZIPARGS?=a -tzip 
endif



##############################################
# Recipes

check_defined_MAP= \
    $(if $(MAP),, \
        $(error MAP variable must be set1))

check_defined_STYLE= \
    $(if $(STYLE),, \
        $(error STYLE variable must be set1))



.PHONY: refresh symbols merge master transform map zip style clean cleancache cleanstyle __check_MAP __check_STYLE

__check_MAP: 
	@:$(call check_defined_MAP)

__check_STYLE: 
	@:$(call check_defined_STYLE)



$(OSM_COUNTRIES_EUROPE_FP): GEOFABRIK_URL = $(GEOFABRIK_URL_EUROPE)
$(OSM_COUNTRIES_ASIA_FP): GEOFABRIK_URL = $(GEOFABRIK_URL_ASIA)
$(OSM_COUNTRIES_GLOBAL_FP): GEOFABRIK_URL = $(GEOFABRIK_URL_GLOBAL)
$(OSM_CACHE_DIR)$(PSEP2)%-latest.osm.pbf:
	$(WGET) $(GEOFABRIK_URL)$*-latest.osm.pbf -P $(OSM_CACHE_DIR)

refresh:  $(MAP_OSM_LATEST_PBF) | __check_MAP
	@echo "Completed"


$(COMMON_DIR)$(PSEP2)%-latest.o5m: $(OSM_CACHE_DIR)$(PSEP)%-latest.osm.pbf
	$(OSMCONVERT) $< -o=$@

$(MFMAP_DIR)$(PSEP2)%-clipped.o5m: $(OSM_CACHE_DIR)$(PSEP)%-latest.osm.pbf
	$(OSMCONVERT) $(OSMC_COMPLETE_OPTS) $< -B=$(BOUNDARY_POLYGON_FP) -o=$@


$(COMMON_DIR)$(PSEP2)%-routes.o5m: $(COMMON_DIR)$(PSEP)%-latest.o5m
	$(OSMFILTER) $< --keep-nodes= --keep-ways-relations=$(ROUTE_CONDITION)  -o=$@

$(MFMAP_DIR)$(PSEP2)%-croutes.o5m: $(MFMAP_DIR)$(PSEP)%-clipped.o5m
	$(OSMFILTER) $< --keep-nodes= --keep-ways-relations=$(ROUTE_CONDITION)  -o=$@

$(MAP_ROUTES_PBF_FP):  $(MAP_COUNTRY_ROUTES_O5M) | __check_MAP
	$(OSMCONVERT) --hash-memory=240-30-2  -B=$(BOUNDARY_POLYGON_FP) --drop-version $^  -o=$@

$(MAP_HIKING_SYMBOLS_OSM_FP): $(MAP_ROUTES_PBF_FP) | __check_MAP
ifneq ($(ROUTEMAPPER),)
	$(ROUTEMAPPER) --config=$(MAP_ROUTE_MAPPING_CONFIG) --prio=$(MAP_SYMBOL_PRIORITY_FILE) --lookup=$(MAP_SYMBOL_LOOKUP_FILE) --stacking=$(MAP_SYMBOL_STACKING_FILE) --pictogram=$(MAP_HIKING_SYMBOLS_OSM_FP) --trail=$(MAP_TRAIL_COLORS_OSC_FP) $(DEFAULT_COLOR_OPT) $(MAP_ROUTES_PBF_FP)
else
	$(MAKESYMBOLS) --start-node-id=$(SYMBOLS_START_ID) --lookup-file=$(MAP_SYMBOL_LOOKUP_FILE) --pictogram-file=$(MAP_HIKING_SYMBOLS_OSM_FP) --trail-file=$(MAP_TRAIL_COLORS_OSC_FP) $(DEFAULT_COLOR_OPT) $(MAP_ROUTES_PBF_FP)	
endif


$(MAP_TRAIL_COLORS_OSC_FP): $(MAP_ROUTES_PBF_FP) | __check_MAP
ifneq ($(ROUTEMAPPER),)
	$(ROUTEMAPPER) --config=$(MAP_ROUTE_MAPPING_CONFIG) --prio=$(MAP_SYMBOL_PRIORITY_FILE) --lookup=$(MAP_SYMBOL_LOOKUP_FILE) --stacking=$(MAP_SYMBOL_STACKING_FILE) --pictogram=$(MAP_HIKING_SYMBOLS_OSM_FP) --trail=$(MAP_TRAIL_COLORS_OSC_FP) $(DEFAULT_COLOR_OPT) $(MAP_ROUTES_PBF_FP)
else
	$(MAKESYMBOLS) --start-node-id=$(SYMBOLS_START_ID) --lookup-file=$(MAP_SYMBOL_LOOKUP_FILE) --pictogram-file=$(MAP_HIKING_SYMBOLS_OSM_FP) --trail-file=$(MAP_TRAIL_COLORS_OSC_FP) $(DEFAULT_COLOR_OPT) $(MAP_ROUTES_PBF_FP)	
endif
	

symbols: $(MAP_HIKING_SYMBOLS_OSM_FP) $(MAP_TRAIL_COLORS_OSC_FP) | __check_MAP
	@echo "Done"

$(MAP_MERGED_PBF_FP):  $(MAP_INP_OSM_O5M) | __check_MAP
	$(OSMCONVERT) --hash-memory=240-30-2  $(OSMC_COMPLETE_OPTS)  $^ -B=$(BOUNDARY_POLYGON_FP) -o=$@


$(MAP_MERGED2_PBF_FP): $(MAP_MERGED_PBF_FP) $(MAP_INP_OSC)  | __check_MAP
	$(OSMCONVERT) --hash-memory=240-30-2 --max-refs=400000 --drop-version $^ -o=$@


merge: $(MAP_TTX_INP) | __check_MAP
	@echo "Merge completed"
	

$(MAP_MERGEDX_PBF_FP): $(MAP_TTX_INP)  | __check_MAP
ifeq ($(TAG_TRANSFORM_RULES),)
	$(OSMOSIS) --rb file=$< --tag-transform file=$(TAG_TANSFORM_XML_FP) --wb file=$@ omitmetadata=true
else
	-$(TAGXFORM) $(TAG_TRANSFORM_RULE_OPTS) $(TAG_TRANSFORM_VAR_OPTS)  $^ --output=$@
endif

transform: $(MAP_MERGEDX_PBF_FP) | __check_MAP
	@echo "DONE"


$(MAP_MASTER_PBF_FP): $(MAP_MASTER_INP_OSM_FP) $(MAP_INP_CONTOUR) $(MAP_INP_COASTLINES_O5M_FP) $(MAP_INP_SYMBOLS_OSM) | __check_MAP
	$(OSMCONVERT) --hash-memory=240-30-2 --max-refs=400000 --drop-version $^ -o=$@

master: $(MAP_MASTER_PBF_FP) | __check_MAP
	@echo "DONE"

merge-osmosis:  $(MAP_INP_OSM_PBF) $(MAP_INP_SUPP_PBF) $(MAP_INP_CONTOUR)
	$(OSMOSIS) $(MAP_INP_OSM_PBF_ARGS) $(MAP_INP_SUPP_PBF_ARGS) $(MAP_INP_CONTOUR_ARGS) --merge --bp file=$(BOUNDARY_POLYGON_FP) --wb file=$@
	@echo "Merge completed"

$(MAP_MASTERX_PBF_FP): $(MAP_MASTER_PBF_FP)
	$(OSMOSIS) --rb file=$< --tag-transform file=$(TAG_TANSFORM_XML_FP) --wb file=$@ omitmetadata=true

$(MAP_MAPSFORGE_FP): $(MAP_MASTER_PBF_FP)
	$(OSMOSIS) --rb file=$< --mw tag-conf-file=$(TAG_MAP_XML_FP) $(MAP_WRITER_CONF) file=$@ 


$(MAP_STYLE_XML_FP): $(MAP_STYLE_XSLT_FP)
	$(XSLTPROC) $< > $@
	
xtransform: $(MAP_MASTERX_PBF_FP) | __check_MAP
	@echo "DONE"

map: $(MAP_MAPSFORGE_FP) | __check_MAP
	@echo "DONE"

zip: $(MAP_MAPSFORGE_FP) | __check_MAP
	$(ZIP) $(MAPZIPARGS) $(MAP_MAPSFORGE_ZIP_FP) $(MAP_MAPSFORGE_FP)


style: $(MAP_STYLE_XML_FP) | __check_STYLE
ifeq ($(LINUX),1)
	cd $(MAP_STYLE_OUTPUT_DIR) && $(ZIP) $(STYLEZIPARGS) $(MAP_STYLE_ZIP) $(MAP_STYLE_NAME)/ 
else
	$(MFMAP_DIR_DRIVE) & cd $(MAP_STYLE_OUTPUT_DIR) & $(ZIP) $(STYLEZIPARGS) $(MAP_STYLE_ZIP) $(MAP_STYLE_NAME)/ 
endif


stage1: refresh master transform map
	@echo Stage-1 completed successfully

all:  master transform map zip
	@echo Map making completed successfully

clean: | __check_MAP
	$(DEL) $(MFMAP_DIR)$(PSEP)*

cleancache: 
	$(DEL) $(OSM_CACHE_DIR)$(PSEP)*.pbf
	$(DEL) $(COMMON_DIR)$(PSEP)*

cleanstyle: | __check_STYLE
	$(DEL) $(MAP_STYLE_XML_FP)
	$(DEL) $(MAP_STYLE_OUTPUT_DIR)$(PSEP)$(MAP_STYLE_ZIP)

test: 
	@echo $(LICENSE_FILE)
	@echo $(MAP_STYLE_OUTPUT_DIR)
