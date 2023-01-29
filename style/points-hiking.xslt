<?xml-stylesheet type="text/xsl"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<!-- 
# OpenHikingMap
#
# Point rendering: Hiking
#
# Copyright (c) 2022-2023 OpenHiking contributors
# SPDX-License-Identifier: GPL-3.0-only
-->
<xsl:template name="points-hiking">

<rule  e="any" k="tourism" v="alpine_hut" zoom-min="14">
    <rule  e="any" k="*" v="*" zoom-max="15">
        <symbol id="alpine_hut" src="{$symbolPath}/alpine_hut.svg" symbol-width="23" priority="{$pr-alpine-hut}"/>
    </rule> 
    <rule  e="any" k="*" v="*" zoom-min="16">
        <symbol id="alpine_hut" src="{$symbolPath}/alpine_hut.svg" symbol-width="26" priority="{$pr-alpine-hut}"/>
    </rule>                         
    <rule e="any" k="*" v="*" zoom-min="16">
        <caption k="name" symbol-id="alpine_hut" 
        font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2"  priority="{$pr-label-accomodation}"/>
    </rule>
</rule>

<rule  e="any" k="tourism" v="wilderness_hut" zoom-min="14">
    <rule  e="any" k="*" v="*" zoom-max="15">
        <symbol id="wilderness_hut" src="{$symbolPath}/wilderness_hut.svg" symbol-width="21" priority="{$pr-wilderness-hut}"/>
    </rule> 
    <rule  e="any" k="*" v="*" zoom-min="16">
        <symbol id="wilderness_hut" src="{$symbolPath}/wilderness_hut.svg" symbol-width="25" priority="{$pr-wilderness-hut}"/>
    </rule>                         
    <rule e="any" k="*" v="*" zoom-min="16">
        <caption k="name" symbol-id="wilderness_hut" 
        font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2"  priority="{$pr-label-accomodation}"/>
    </rule>
</rule>        


<rule  e="any" k="amenity" v="shelter" >
  <rule  e="any" k="shelter_type" v="basic_hut" zoom-min="14">
    <rule  e="any" k="*" v="*" zoom-max="15">
      <symbol id="basic_hut" src="{$symbolPath}/basic_hut.svg" symbol-width="20" priority="{$pr-basic-hut}"/>
    </rule> 
    <rule  e="any" k="*" v="*" zoom-min="16">
      <symbol id="basic_hut" src="{$symbolPath}/basic_hut.svg" symbol-width="25" priority="{$pr-basic-hut}"/>
    </rule>                         
    <rule e="any" k="*" v="*" zoom-min="16">
      <caption k="name" symbol-id="basic_hut" 
      font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2" priority="{$pr-label-wilderness}"/>
    </rule>
  </rule>
  <rule  e="any" k="shelter_type" v="picnic_shelter" zoom-min="14">
    <rule  e="any" k="*" v="*" zoom-max="15">
      <symbol id="picnic_shelter" src="{$symbolPath}/picnic_shelter.svg" symbol-width="20" priority="{$pr-picnic-shelter}"/>
    </rule> 
    <rule  e="any" k="*" v="*" zoom-min="16">
      <symbol id="picnic_shelter" src="{$symbolPath}/picnic_shelter.svg" symbol-width="22" priority="{$pr-picnic-shelter}"/>
    </rule>                         
    <rule e="any" k="*" v="*" zoom-min="16">
      <caption k="name" symbol-id="picnic_shelter" 
      font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2" priority="{$pr-label-wilderness}"/>
    </rule>
  </rule>
  <rule  e="any" k="shelter_type" v="~" zoom-min="14">
    <rule  e="any" k="*" v="*" zoom-max="15">
      <symbol id="shelter" src="{$symbolPath}/shelter.svg" symbol-width="22" priority="{$pr-shelter}"/>
    </rule> 
    <rule  e="any" k="*" v="*" zoom-min="16">
      <symbol id="shelter" src="{$symbolPath}/shelter.svg" symbol-width="24" priority="{$pr-shelter}"/>
    </rule>                         
    <rule e="any" k="*" v="*" zoom-min="16">
      <caption k="name" symbol-id="shelter" 
      font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2" priority="{$pr-label-wilderness}"/>
    </rule>
  </rule>
</rule>

<rule  e="any" k="tourism" v="picnic_site" zoom-min="15">
    <rule  e="any" k="*" v="*" zoom-max="16">
        <symbol id="picnic_site" src="{$symbolPath}/picnic.svg" symbol-width="20" priority="{$pr-picnic}"/>
    </rule> 
    <rule  e="any" k="*" v="*" zoom-min="17">
        <symbol id="picnic_site" src="{$symbolPath}/picnic.svg" symbol-width="22" priority="{$pr-picnic}"/>
    </rule>                         
    <rule e="any" k="*" v="*" zoom-min="16">
        <caption k="name" symbol-id="picnic_site" 
        font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2"  priority="{$pr-label-wilderness}"/>
    </rule>
</rule>

<rule  e="any" k="leisure" v="picnic_table" zoom-min="15">
    <rule  e="any" k="*" v="*" zoom-max="16">
        <symbol id="picnic_site" src="{$symbolPath}/picnic.svg" symbol-width="20" priority="{$pr-picnic}"/>
    </rule> 
    <rule  e="any" k="*" v="*" zoom-min="17">
        <symbol id="picnic_site" src="{$symbolPath}/picnic.svg" symbol-width="22" priority="{$pr-picnic}"/>
    </rule>                         
    <rule e="any" k="*" v="*" zoom-min="16">
        <caption k="name" symbol-id="picnic_site" 
            font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2"  priority="{$pr-label-wilderness}"/>
    </rule>
</rule>


<rule  e="node" k="amenity" v="bench" zoom-min="16">
  <symbol id="bench" src="{$symbolPath}/bench.svg" symbol-width="16" priority="{$pr-bench}"/>
  <rule e="node" k="*" v="*" zoom-min="16">
    <caption k="name" symbol-id="bench" 
    font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2" priority="{$pr-label-wilderness}"/>
  </rule>
</rule>

<rule  e="node" k="leisure" v="firepit" zoom-min="16">
  <symbol id="firepit" src="{$symbolPath}/firepit.svg" symbol-width="20" priority="{$pr-firepit}"/>
</rule>

<rule  e="any" k="tower" v="outlook" zoom-min="14">
  <rule  e="any" k="*" v="*" zoom-max="15">
    <symbol id="tower_outlook" src="{$symbolPath}/tower_lookout.svg" symbol-width="19" priority="{$pr-tower-lookout}" display="always"/>      
  </rule>
  <rule  e="any" k="*" v="*" zoom-min="16">
    <symbol id="tower_outlook" src="{$symbolPath}/tower_lookout.svg" symbol-width="23" priority="{$pr-tower-lookout}" display="always"/>      
  </rule>
  <rule e="any" k="*" v="*" zoom-min="15">
      <caption k="name" symbol-id="tower_outlook" 
          font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2" priority="{$pr-label-wilderness}" display="ifspace"/>
  </rule>
</rule>       

<rule  e="any" k="tourism" v="viewpoint" zoom-min="14">
    <symbol id="viewpoint" src="{$symbolPath}/viewpoint.svg" symbol-width="20" priority="{$pr-viewpoint}"/>
    <rule e="any" k="*" v="*" zoom-min="16">
        <caption k="name" symbol-id="viewpoint" 
        font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2" priority="{$pr-label-wilderness}"/>
    </rule>
</rule>



<rule  e="node" k="information" v="guidepost" zoom-min="16">
  <rule  e="any" k="*" v="*" zoom-max="17">
    <symbol id="guidepost" src="{$symbolPath}/guidepost.svg" symbol-width="18" priority="{$pr-guidepost}"/>
  </rule>
  <rule  e="any" k="*" v="*" zoom-min="18">
    <symbol id="guidepost" src="{$symbolPath}/guidepost.svg" symbol-width="20" priority="{$pr-guidepost}"/>
  </rule>
  <rule e="node" k="*" v="*" zoom-min="16">
    <caption k="name" symbol-id="guidepost" 
    font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2" priority="{$pr-label-wilderness}"/>
  </rule>
</rule>

<rule  e="node" k="information" v="board" zoom-min="16">
  <rule  e="any" k="board_type" v="notice" >
    <symbol id="board" src="{$symbolPath}/board_notice.svg" symbol-width="24" priority="{$pr-board}"/>
  </rule>
  <rule  e="any" k="board_type" v="~" >
    <symbol id="board" src="{$symbolPath}/board.svg" symbol-width="24" priority="{$pr-board}"/>
  </rule>
  <rule e="node" k="*" v="*" zoom-min="17">
    <caption k="name" symbol-id="board" 
    font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2" priority="{$pr-label-wilderness}"/>
  </rule>
</rule>

<rule  e="node" k="checkpoint" v="hiking" zoom-min="15">
  <symbol id="checkpoint" src="{$symbolPath}/checkpoint.svg" symbol-width="18" priority="{$pr-checkpoint}"/>
  <rule e="node" k="*" v="*" zoom-min="16">
    <caption k="name" symbol-id="checkpoint" 
    font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2" priority="{$pr-label-wilderness}"/>
  </rule>
</rule>


</xsl:template>
</xsl:stylesheet>