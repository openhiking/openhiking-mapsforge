<?xml-stylesheet type="text/xsl"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<!-- 
# OpenHikingMap
#
# Hazardous area polygons
#
# Copyright (c) 2022-2025 OpenHiking contributors
# SPDX-License-Identifier: GPL-3.0-only
-->


<xsl:template name="poly-hazards">

<rule e="way" k="hazard" v="minefield|unexploded_ordnance">
    <rule e="any" k="*" v="*" zoom-min="12" zoom-max="13">
        <area stroke="#bc0c0c" stroke-width="1" scale="none" src="{$patternPath}/minefield.svg" symbol-height="16"/>
    </rule>
    <rule e="any" k="*" v="*" zoom-min="14">
        <area stroke="#bc0c0c" stroke-width="1" scale="none" src="{$patternPath}/minefield.svg" symbol-height="26"/>
    </rule>
</rule>
<rule e="way" k="hazard" v="contamination">
    <rule e="any" k="*" v="*" zoom-min="12" zoom-max="13">
        <area stroke="#f1a72b" stroke-width="1" scale="none" src="{$patternPath}/contamination.svg" symbol-height="16"/>
    </rule>
    <rule e="any" k="*" v="*" zoom-min="14">
        <area stroke="#f1a72b" stroke-width="1" scale="none" src="{$patternPath}/contamination.svg" symbol-height="26"/>
    </rule>
</rule>


</xsl:template>
</xsl:stylesheet>