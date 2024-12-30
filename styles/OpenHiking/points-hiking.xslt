<?xml-stylesheet type="text/xsl"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<!-- 
# OpenHikingMap
#
# Point rendering: Hiking
#
# Copyright (c) 2022-2024 OpenHiking contributors
# SPDX-License-Identifier: GPL-3.0-only
-->
<xsl:template name="points-hiking">

<rule  e="any" k="tourism" v="alpine_hut" zoom-min="11">
    <rule  e="any" k="*" v="*" zoom-max="13">
        <symbol id="alpine_hut" src="{$hikingIconPath}/alpine_hut.svg" symbol-width="20" priority="{$pr-alpine-hut}"/>
    </rule> 
    <rule  e="any" k="*" v="*" zoom-min="14" zoom-max="15">
        <symbol id="alpine_hut" src="{$hikingIconPath}/alpine_hut.svg" symbol-width="23" priority="{$pr-alpine-hut}"/>
    </rule> 
    <rule  e="any" k="*" v="*" zoom-min="16">
        <symbol id="alpine_hut" src="{$hikingIconPath}/alpine_hut.svg" symbol-width="26" priority="{$pr-alpine-hut}"/>
    </rule>                         
    <rule e="any" k="*" v="*" zoom-min="14">
        <caption k="name" symbol-id="alpine_hut" 
        font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2"  priority="{$pr-label-accomodation}"/>
    </rule>
</rule>


<rule  e="any" k="tourism" v="wilderness_hut" zoom-min="12">
    <rule  e="any" k="*" v="*" zoom-max="14">
        <symbol id="wilderness_hut" src="{$hikingIconPath}/wilderness_hut.svg" symbol-width="18" priority="{$pr-wilderness-hut}"/>
    </rule> 
    <rule  e="any" k="*" v="*" zoom-min="15">
        <symbol id="wilderness_hut" src="{$hikingIconPath}/wilderness_hut.svg" symbol-width="24" priority="{$pr-wilderness-hut}"/>
    </rule>                         
    <rule e="any" k="*" v="*" zoom-min="15">
        <caption k="name" symbol-id="wilderness_hut" 
        font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2"  priority="{$pr-label-accomodation}"/>
    </rule>
</rule>       



<rule  e="any" k="amenity" v="shelter" >
  <rule  e="any" k="shelter_type" v="basic_hut" zoom-min="13">
    <rule  e="any" k="*" v="*" zoom-max="15">
      <symbol id="basic_hut" src="{$hikingIconPath}/basic_hut.svg" symbol-width="20" priority="{$pr-basic-hut}"/>
    </rule> 
    <rule  e="any" k="*" v="*" zoom-min="16">
      <symbol id="basic_hut" src="{$hikingIconPath}/basic_hut.svg" symbol-width="25" priority="{$pr-basic-hut}"/>
    </rule>                         
    <rule e="any" k="*" v="*" zoom-min="16">
      <caption k="name" symbol-id="basic_hut" 
      font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2" priority="{$pr-label-wilderness}"/>
    </rule>
  </rule>
  <rule  e="any" k="shelter_type" v="picnic_shelter" zoom-min="14">
    <rule  e="any" k="*" v="*" zoom-max="15">
      <symbol id="picnic_shelter" src="{$hikingIconPath}/picnic_shelter.svg" symbol-width="20" priority="{$pr-picnic-shelter}"/>
    </rule> 
    <rule  e="any" k="*" v="*" zoom-min="16">
      <symbol id="picnic_shelter" src="{$hikingIconPath}/picnic_shelter.svg" symbol-width="22" priority="{$pr-picnic-shelter}"/>
    </rule>                         
    <rule e="any" k="*" v="*" zoom-min="16">
      <caption k="name" symbol-id="picnic_shelter" 
      font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2" priority="{$pr-label-wilderness}"/>
    </rule>
  </rule>
  <rule  e="any" k="shelter_type" v="~" zoom-min="14">
    <rule  e="any" k="*" v="*" zoom-max="15">
      <symbol id="shelter" src="{$hikingIconPath}/shelter.svg" symbol-width="22" priority="{$pr-shelter}"/>
    </rule> 
    <rule  e="any" k="*" v="*" zoom-min="16">
      <symbol id="shelter" src="{$hikingIconPath}/shelter.svg" symbol-width="24" priority="{$pr-shelter}"/>
    </rule>                         
    <rule e="any" k="*" v="*" zoom-min="16">
      <caption k="name" symbol-id="shelter" 
      font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2" priority="{$pr-label-wilderness}"/>
    </rule>
  </rule>
</rule>

<rule  e="any" k="tourism" v="picnic_site" zoom-min="15">
    <rule  e="any" k="*" v="*" zoom-max="16">
        <symbol id="picnic_site" src="{$hikingIconPath}/picnic_site.svg" symbol-width="20" priority="{$pr-picnic}"/>
    </rule> 
    <rule  e="any" k="*" v="*" zoom-min="17">
        <symbol id="picnic_site" src="{$hikingIconPath}/picnic_site.svg" symbol-width="22" priority="{$pr-picnic}"/>
    </rule>                         
    <rule e="any" k="*" v="*" zoom-min="16">
        <caption k="name" symbol-id="picnic_site" 
        font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2"  priority="{$pr-label-wilderness}"/>
    </rule>
</rule>

<rule  e="any" k="leisure" v="picnic_table" zoom-min="15">
    <rule  e="any" k="*" v="*" zoom-max="16">
        <symbol id="picnic_site" src="{$hikingIconPath}/picnic_site.svg" symbol-width="20" priority="{$pr-picnic}"/>
    </rule> 
    <rule  e="any" k="*" v="*" zoom-min="17">
        <symbol id="picnic_site" src="{$hikingIconPath}/picnic_site.svg" symbol-width="22" priority="{$pr-picnic}"/>
    </rule>                         
    <rule e="any" k="*" v="*" zoom-min="16">
        <caption k="name" symbol-id="picnic_site" 
            font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2"  priority="{$pr-label-wilderness}"/>
    </rule>
</rule>


<rule  e="node" k="amenity" v="bench" zoom-min="16">
  <symbol id="bench" src="{$hikingIconPath}/bench.svg" symbol-width="16" priority="{$pr-bench}"/>
  <rule e="node" k="*" v="*" zoom-min="16">
    <caption k="name" symbol-id="bench" 
    font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2" priority="{$pr-label-wilderness}"/>
  </rule>
</rule>

<rule  e="node" k="leisure" v="firepit" zoom-min="16">
  <symbol id="firepit" src="{$hikingIconPath}/firepit.svg" symbol-width="20" priority="{$pr-firepit}"/>
</rule>

<rule  e="any" k="tower" v="outlook" zoom-min="13">
  <rule  e="any" k="*" v="*" zoom-max="15">
    <symbol id="lookout_tower" src="{$hikingIconPath}/lookout_tower.svg" symbol-width="22" priority="{$pr-tower-lookout}" display="always"/>      
  </rule>
  <rule  e="any" k="*" v="*" zoom-min="16">
    <symbol id="lookout_tower" src="{$hikingIconPath}/lookout_tower.svg" symbol-width="26" priority="{$pr-tower-lookout}" display="always"/>      
  </rule>
  <rule e="any" k="*" v="*" zoom-min="15">
      <caption k="name" symbol-id="lookout_tower" 
          font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2" priority="{$pr-label-wilderness}" display="ifspace"/>
  </rule>
</rule>       

<rule  e="any" k="tower" v="outlook_closed" zoom-min="14">
  <rule  e="any" k="*" v="*" zoom-max="15">
    <symbol id="lookout_tower_closed" src="{$hikingIconPath}/lookout_tower_closed.svg" symbol-width="22" priority="{$pr-tower-lookout}" display="always"/>      
  </rule>
  <rule  e="any" k="*" v="*" zoom-min="16">
    <symbol id="lookout_tower_closed" src="{$hikingIconPath}/lookout_tower_closed.svg" symbol-width="26" priority="{$pr-tower-lookout}" display="always"/>      
  </rule>
  <rule e="any" k="*" v="*" zoom-min="15">
      <caption k="name" symbol-id="lookout_tower_closed" 
          font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2" priority="{$pr-label-wilderness}" display="ifspace"/>
  </rule>
</rule>     

<rule  e="any" k="tourism" v="viewpoint" zoom-min="13">
    <symbol id="viewpoint" src="{$hikingIconPath}/viewpoint.svg" symbol-width="20" priority="{$pr-viewpoint}"/>
    <rule e="any" k="*" v="*" zoom-min="16">
        <caption k="name" symbol-id="viewpoint" 
        font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2" priority="{$pr-label-wilderness}"/>
    </rule>
</rule>


<rule  e="node" k="information" v="guidepost" zoom-min="16">
  <rule  e="any" k="*" v="*" zoom-max="17">
    <symbol id="guidepost" src="{$hikingIconPath}/guidepost.svg" symbol-width="18" priority="{$pr-guidepost}"/>
  </rule>
  <rule  e="any" k="*" v="*" zoom-min="18">
    <symbol id="guidepost" src="{$hikingIconPath}/guidepost.svg" symbol-width="20" priority="{$pr-guidepost}"/>
  </rule>
  <rule e="node" k="*" v="*" zoom-min="16">
    <caption k="name" symbol-id="guidepost" 
    font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2" priority="{$pr-label-wilderness}"/>
  </rule>
</rule>


<rule  e="node" k="information" v="board" zoom-min="16">
  <rule  e="any" k="board_type" v="notice|rules" >
    <symbol id="board" src="{$hikingIconPath}/board_notice.svg" symbol-width="20" priority="{$pr-board}"/>
  </rule>
  <rule  e="any" k="board_type" v="~" >
    <symbol id="board" src="{$hikingIconPath}/board.svg" symbol-width="20" priority="{$pr-board}"/>
  </rule>
  <rule e="node" k="*" v="*" zoom-min="17">
    <caption k="name" symbol-id="board" 
    font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2" priority="{$pr-label-wilderness}"/>
  </rule>
</rule>

<rule  e="node" k="checkpoint" v="hiking" zoom-min="15">
  <symbol id="checkpoint" src="{$hikingIconPath}/checkpoint.svg" symbol-width="18" priority="{$pr-checkpoint}"/>
  <rule e="node" k="*" v="*" zoom-min="16">
    <caption k="name" symbol-id="checkpoint" 
    font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2" priority="{$pr-label-wilderness}"/>
  </rule>
</rule>

<rule  e="any" k="emergency" v="mountain_rescue" zoom-min="15">
    <rule  e="any" k="*" v="*" zoom-max="15">
        <symbol id="mountain_rescue" src="{$hikingIconPath}/mountain_rescue.svg" symbol-width="22" priority="{$pr-mountain-rescue}"/>
    </rule> 
    <rule  e="any" k="*" v="*" zoom-min="16">
        <symbol id="mountain_rescue" src="{$hikingIconPath}/mountain_rescue.svg" symbol-width="24" priority="{$pr-mountain-rescue}"/>
    </rule>                         
    <rule e="any" k="*" v="*" zoom-min="15">
        <caption k="name" symbol-id="mountain_rescue" 
            font-style="bold" font-size="11" fill="#666666" stroke="#ffffff" stroke-width="2"  priority="{$pr-mountain-rescue}"/>
    </rule>       
</rule>


</xsl:template>
</xsl:stylesheet>