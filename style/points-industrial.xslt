<?xml-stylesheet type="text/xsl"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<!-- 
# OpenHikingMap
#
# Point rendering: Industrial
#
# Copyright (c) 2022-2023 OpenHiking contributors
# SPDX-License-Identifier: GPL-3.0-only
-->

<xsl:template name="points-industrial">

<rule  e="any" k="man_made" v="adit" zoom-min="15">
    <rule  e="any" k="abandoned" v="~" >
        <rule  e="any" k="disused" v="~">
        <symbol id="adit" src="{$symbolPath}/adit.svg" symbol-width="18" priority="{$pr-adit}"/>
        <rule e="any" k="*" v="*" zoom-min="16">
            <caption k="name" symbol-id="adit" 
            font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2"  priority="{$pr-label-industrial}"/>
        </rule>       
        </rule>               
    </rule>           
</rule>

<rule  e="any" k="man_made" v="mineshaft" zoom-min="15">
    <rule  e="any" k="abandoned" v="~" >
        <symbol id="mineshaft" src="{$symbolPath}/mineshaft.svg" symbol-width="17" priority="{$pr-mineshaft}"/>
        <rule e="any" k="*" v="*" zoom-min="16">
            <caption k="name" symbol-id="mineshaft" 
            font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2"  priority="{$pr-label-industrial}"/>     
        </rule>               
    </rule>           
</rule>

<rule  e="any" k="man_made" v="works" zoom-min="14">
  <symbol id="factory" src="{$symbolPath}/factory.svg" symbol-width="24" priority="{$pr-factory}"/>
  <rule e="node" k="*" v="*" zoom-min="16">
    <caption k="name" symbol-id="factory" 
    font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2" priority="{$pr-label-industrial}"/>
  </rule>
</rule>

<rule  e="any" k="man_made" v="water_tower" zoom-min="16">
    <symbol id="mast" src="{$symbolPath}/water_tower.svg" symbol-width="22" priority="{$pr-water-tower}"/>
</rule>

<rule  e="any" k="man_made" v="communications_tower|mast" zoom-min="15">
    <symbol id="mast" src="{$symbolPath}/mast.svg" symbol-width="25" priority="{$pr-mast}"/>
</rule>

<rule  e="any" k="man_made" v="tower" zoom-min="15">
    <rule  e="any" k="tower:type" v="observation">
        <rule  e="any" k="*" v="*" zoom-max="16">
            <symbol id="observation" src="{$symbolPath}/tower_observation.svg" symbol-width="12" priority="{$pr-tower-observation}"/>
        </rule> 
        <rule  e="any" k="*" v="*" zoom-min="17">
            <symbol id="observation" src="{$symbolPath}/tower_observation.svg" symbol-width="14" priority="{$pr-tower-observation}"/>
        </rule>                         
        <rule e="any" k="*" v="*" zoom-min="16">
            <caption k="name" symbol-id="observation" 
            font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2" priority="{$pr-label-industrial}"/>
        </rule>       
    </rule>
</rule>  




</xsl:template>
</xsl:stylesheet>