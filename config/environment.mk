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

COASTLINES_DIR=${MKG_COASTLINES_DIR}
ifeq ($(COASTLINES_DIR),)
$(error MKG_COASTLINES_DIR env variable must be set)
endif


WORKING_DIR=${MKG_WORKING_DIR}
ifeq ($(WORKING_DIR),)
$(error MKG_WORKING_DIR env variable must be set)
endif

SEA_AREA_DIR=$(MKG_SEA_AREA_DIR)
OUTPUT_DIR=${MKG_OUTPUT_DIR}

ifneq (${MKG_WGET},)
WGET=${MKG_WGET}
endif

ifneq (${MKG_OSMCONVERT},)
OSMCONVERT=${MKG_OSMCONVERT}
endif

ifneq (${MKG_OSMFILTER},)
OSMFILTER=${MKG_OSMFILTER}
endif

ifneq (${MKG_PHYGHTMAP},)
PHYGHTMAP=${MKG_PHYGHTMAP}
endif

ifneq (${MKG_PHYGHTMAP_JOBS},)
PHYGHTMAP_JOBS=${MKG_PHYGHTMAP_JOBS}
endif

ifneq (${MKG_MAKESYMBOLS},)
MAKESYMBOLS=${MKG_MAKESYMBOLS}
endif

ifneq (${MKG_DEMMGR},)
DEMMGR=${MKG_DEMMGR}
endif

ifneq (${MKG_OSMOSIS},)
OSMOSIS=${MKG_OSMOSIS}
endif

ifneq (${MKG_XSLTPROC},)
XSLTPROC=${MKG_XSLTPROC}
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
	XSLTPROC?=xsltproc
	ZIP?=zip
	ZIPARGS?=-r
	PSEP=$(subst /,/,/)
	PSEP2=$(PSEP)
	CMDLIST=&&
	COPY=cp
	MOVE=mv
	DEL=rm
	CAT=cat
else
	LINUX=0
	OSMCONVERT?=osmconvert64.exe
	OSMFILTER?=osmfilter.exe
	OSMOSIS?=c:\Apps\osmosis-0-48\bin\osmosis
	XSLTPROC?=xsltproc
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
