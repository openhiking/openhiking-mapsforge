<?xml-stylesheet type="text/xsl"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<!-- 
# OpenHikingMap
#
# Point rendering: Military
#
# Copyright (c) 2022-2023 OpenHiking contributors
# SPDX-License-Identifier: GPL-3.0-only
-->
<xsl:template name="points-military">

<rule  e="any" k="military" v="bunker" zoom-min="16">
        <symbol id="bunker" src="{$symbolPath}/bunker.svg" symbol-width="22" priority="{$pr-bunker}"/>
        <rule e="any" k="*" v="*" >
            <caption k="name" symbol-id="bunker" 
            font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2"  priority="{$pr-label-military}"/>
        </rule>       
</rule>


</xsl:template>
</xsl:stylesheet>