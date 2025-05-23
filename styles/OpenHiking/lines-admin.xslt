<?xml-stylesheet type="text/xsl"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<!-- 
# OpenHikingMap
#
# Lines rendering: Administrative boundaries
#
# Copyright (c) 2022-2024 OpenHiking contributors
# SPDX-License-Identifier: GPL-3.0-only
-->

<xsl:template name="lines-admin">

<rule  e="way" k="boundary" v="administrative"  zoom-min="6">
    <rule  e="way" k="admin_level" v="2">
        <rule e="way" k="*" v="*" zoom-max="13">    
            <line stroke="#e680ff" stroke-width="2"/>
        </rule>
        <rule e="way" k="*" v="*" zoom-min="14" zoom-max="14">    
            <line stroke="#a0e680ff" stroke-width="2.5"/>
        </rule>
        <rule e="way" k="*" v="*" zoom-min="15">    
            <line stroke="#80e680ff" stroke-width="3"/>
            <line stroke="#CC00FF" stroke-width="0.4" stroke-dasharray="0.4,2,2,2" scale="all" />
        </rule>

    </rule>
   <rule  cat="region_border" e="way" k="admin_level" v="3">
        <line stroke="#40e680ff" stroke-width="1.5"/>
        <line stroke="#CC00FF" stroke-width="0.3" stroke-dasharray="0.4,2,2,2" scale="all" />
    </rule>
</rule>

</xsl:template>
</xsl:stylesheet>