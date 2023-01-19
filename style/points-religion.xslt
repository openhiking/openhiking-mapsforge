<?xml-stylesheet type="text/xsl"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<!-- 
# OpenHikingMap
#
# Point rendering: Religion
#
# Copyright (c) 2022-2023 OpenHiking contributors
# SPDX-License-Identifier: GPL-3.0-only
-->

<xsl:template name="points-religion">

<rule  e="any" k="amenity" v="place_of_worship" zoom-min="14">
  <rule  e="any" k="building" v="church|cathedral" >
    <symbol id="church" src="{$symbolPath}/church.svg" symbol-width="26" priority="{$pr-church}"/>
  </rule>
  <rule  e="any" k="building" v="chapel" >
    <symbol id="church" src="{$symbolPath}/chapel.svg" symbol-width="26" priority="{$pr-church}"/>
  </rule>

  <rule  e="any" k="building" v="~" >
    <rule  e="any" k="religion" v="christian" >
      <symbol id="church" src="{$symbolPath}/church.svg" symbol-width="26" priority="{$pr-church}"/>
    </rule>
  </rule>
  <rule e="any" k="*" v="*" zoom-min="16">
      <caption k="name" symbol-id="church" 
      font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2" priority="{$pr-church}"/>
  </rule>
</rule>


<rule  e="any" k="historic" v="wayside_cross|wayside_shrine|tree_shrine" zoom-min="16">
  <symbol id="wayside_cross" src="{$symbolPath}/wayside_cross.svg" symbol-width="18" priority="{$pr-wayside-cross}"/>
  <rule e="any" k="*" v="*" zoom-min="16">
    <caption k="name" symbol-id="wayside_cross" 
    font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2" priority="{$pr-wayside-cross}"/>
  </rule>
</rule>

<rule  e="any" k="amenity" v="grave_yard" zoom-min="16">
  <symbol id="graveyard" src="{$symbolPath}/graveyard.svg" symbol-width="18" priority="{$pr-graveyard}"/>
  <rule e="any" k="*" v="*" zoom-min="16">
    <caption k="name" symbol-id="graveyard" 
    font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2" priority="{$pr-graveyard}"/>
  </rule>
</rule>


<rule  e="any" k="man_made" v="campanile" zoom-min="15">
  <symbol id="bell_tower" src="{$symbolPath}/bell_tower.svg" symbol-width="24" priority="{$pr-bell-tower}"/>
  <rule e="any" k="*" v="*" zoom-min="16">
    <caption k="name" symbol-id="bell_tower" 
    font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2" priority="{$pr-bell-tower}"/>
  </rule>
</rule>
<!-- 
<rule  e="any" k="tower:type" v="bell_tower" zoom-min="15">
  <symbol id="bell_tower" src="{$symbolPath}/bell_tower.svg" symbol-width="24" priority="{$pr-bell-tower}"/>
  <rule e="any" k="*" v="*" zoom-min="16">
    <caption k="name" symbol-id="bell_tower" 
    font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2" priority="{$pr-bell-tower}"/>
  </rule>
</rule>
-->

<rule  e="any" k="man_made" v="stupa" >
  <rule  e="any" k="*" v="*" zoom-min="14" zoom-max="15">   
    <symbol id="stupa" src="{$symbolPath}/stupa.svg" symbol-width="26" priority="{$pr-stupa}"/>           
  </rule>
  <rule  e="any" k="*" v="*" zoom-min="16" >        
    <symbol id="stupa" src="{$symbolPath}/stupa.svg" symbol-width="30" priority="{$pr-stupa}"/>                   
  </rule>
  <rule e="any" k="*" v="*" zoom-min="15">
    <caption k="name" symbol-id="stupa" 
    font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2" priority="{$pr-stupa}"/>
  </rule>
</rule>



</xsl:template>
</xsl:stylesheet>