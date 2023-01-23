<?xml-stylesheet type="text/xsl"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<!-- 
# OpenHikingMap
#
# Highway polygons
#
# Copyright (c) 2022-2023 OpenHiking contributors
# SPDX-License-Identifier: GPL-3.0-only
-->


<xsl:template name="poly-highways">
<xsl:variable name="fc-highway">#bdcaee</xsl:variable>
<xsl:variable name="bc-highway">#7f8683</xsl:variable>

<rule e="way" k="area" v="yes">
    <rule e="way" k="highway" v="steps|path|steps|footway|cycleway|raceway" zoom-min="{$zm-path}">
        <area fill="{$fc-highway}" stroke="{$bc-highway}" stroke-width="0.04"/>
    </rule>
    <rule e="way" k="highway" v="track|service" zoom-min="{$zm-service}">
        <area fill="{$fc-highway}" stroke="{$bc-highway}" stroke-width="0.06"/>
    </rule>
    <rule e="way" k="highway" v="living_street|pedestrian|residential" zoom-min="{$zm-residential}">
        <area fill="{$fc-highway}" stroke="{$bc-highway}" stroke-width="0.06"/>
    </rule>
    <rule e="way" k="highway" v="unclassified" zoom-min="{$zm-unclassified}">
        <area fill="{$fc-highway}" stroke="{$bc-highway}" stroke-width="0.06"/>
    </rule>
 </rule>

</xsl:template>
</xsl:stylesheet>