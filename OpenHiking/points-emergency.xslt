<?xml-stylesheet type="text/xsl"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<!-- 
# OpenHikingMap
#
# Point rendering: Emergency
#
# Copyright (c) 2022-2023 OpenHiking contributors
# SPDX-License-Identifier: GPL-3.0-only
-->
<xsl:template name="points-emergency">

<rule  e="any" k="emergency" v="ambulance_station" zoom-min="15">
    <rule  e="any" k="*" v="*" zoom-max="16">
        <symbol id="ambulance_station" src="{$symbolPath}/ambulance_station.svg" symbol-width="24" priority="{$pr-ambulance-station}"/>
    </rule> 
    <rule  e="any" k="*" v="*" zoom-min="17">
        <symbol id="ambulance_station" src="{$symbolPath}/ambulance_station.svg" symbol-width="26" priority="{$pr-ambulance-station}"/>
    </rule>                         
    <rule e="any" k="*" v="*" zoom-min="15">
        <caption k="name" symbol-id="ambulance_station" 
            font-style="bold" font-size="11" fill="#666666" stroke="#ffffff" stroke-width="2"  priority="{$pr-ambulance-station}"/>
    </rule>       
</rule>

<rule  e="any" k="emergency" v="mountain_rescue" zoom-min="15">
    <rule  e="any" k="*" v="*" zoom-max="15">
        <symbol id="mountain_rescue" src="{$symbolPath}/mountain_rescue.svg" symbol-width="22" priority="{$pr-mountain-rescue}"/>
    </rule> 
    <rule  e="any" k="*" v="*" zoom-min="16">
        <symbol id="mountain_rescue" src="{$symbolPath}/mountain_rescue.svg" symbol-width="24" priority="{$pr-mountain-rescue}"/>
    </rule>                         
    <rule e="any" k="*" v="*" zoom-min="15">
        <caption k="name" symbol-id="mountain_rescue" 
            font-style="bold" font-size="11" fill="#666666" stroke="#ffffff" stroke-width="2"  priority="{$pr-mountain-rescue}"/>
    </rule>       
</rule>

</xsl:template>
</xsl:stylesheet>