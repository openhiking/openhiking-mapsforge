<?xml-stylesheet type="text/xsl"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<!-- 
# OpenHikingMap
#
# Point rendering: Wilderness
#
# Copyright (c) 2022-2023 OpenHiking contributors
# SPDX-License-Identifier: GPL-3.0-only
-->
<xsl:template name="points-wilderness">

<rule e="any" k="access" v="~|yes" >

<rule  e="any" k="amenity" v="shelter" >
  <rule  e="any" k="shelter_type" v="basic_hut" zoom-min="14">
    <symbol id="basic_hut" src="{$symbolPath}/basic_hut.svg" symbol-width="26" priority="{$pr-basic-hut}"/>
    <rule e="any" k="*" v="*" >
      <caption k="name" symbol-id="basic_hut" 
      font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2" priority="{$pr-basic-hut}"/>
    </rule>
  </rule>
  <rule  e="any" k="shelter_type" v="picnic_shelter" zoom-min="14">
    <symbol id="picnic_shelter" src="{$symbolPath}/picnic_shelter.svg" symbol-width="18" priority="{$pr-picnic-shelter}"/>
    <rule e="any" k="*" v="*" >
      <caption k="name" symbol-id="picnic_shelter" 
      font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2" priority="{$pr-picnic-shelter}"/>
    </rule>
  </rule>
  <rule  e="any" k="shelter_type" v="~" zoom-min="14">
    <symbol id="shelter" src="{$symbolPath}/shelter.svg" symbol-width="22" priority="{$pr-shelter}"/>
    <rule e="any" k="*" v="*" >
      <caption k="name" symbol-id="shelter" 
      font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2" priority="{$pr-shelter}"/>
    </rule>
  </rule>
</rule>

<rule  e="any" k="tourism" v="picnic_site" zoom-min="15">
  <symbol id="picnic_site" src="{$symbolPath}/picnic.svg" symbol-width="18" priority="{$pr-picnic}"/>
  <rule e="any" k="*" v="*" >
    <caption k="name" symbol-id="picnic_site" 
    font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2"  priority="{$pr-picnic}"/>
  </rule>
</rule>

<rule  e="any" k="leisure" v="picnic_table" zoom-min="15">
  <symbol id="picnic_site" src="{$symbolPath}/picnic.svg" symbol-width="18" priority="{$pr-picnic}"/>
  <rule e="any" k="*" v="*" >
    <caption k="name" symbol-id="picnic_site" 
    font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2"  priority="{$pr-picnic}"/>
  </rule>
</rule>


<rule  e="node" k="amenity" v="bench" zoom-min="16">
  <symbol id="bench" src="{$symbolPath}/bench.svg" symbol-width="16" priority="{$pr-bench}"/>
  <rule e="node" k="*" v="*" zoom-min="16">
    <caption k="name" symbol-id="bench" 
    font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2" priority="{$pr-bench}"/>
  </rule>
</rule>

<rule  e="node" k="leisure" v="firepit" zoom-min="16">
  <symbol id="firepit" src="{$symbolPath}/firepit.svg" symbol-width="18" priority="{$pr-firepit}"/>
  <rule e="node" k="*" v="*" zoom-min="16">
    <caption k="name" symbol-id="firepit" 
    font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2" priority="{$pr-firepit}"/>
  </rule>
</rule>

<rule  e="any" k="tourism" v="viewpoint" zoom-min="14">
    <rule  e="any" k="tower:type" v="observation">
        <symbol id="tower_outlook" src="{$symbolPath}/tower_lookout.svg" symbol-width="24" priority="{$pr-tower-lookout}" display="always"/>
        <rule e="any" k="*" v="*" zoom-min="14">
            <caption k="name" symbol-id="tower_outlook" 
                font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2" priority="{$pr-tower-lookout}" display="ifspace"/>
        </rule>
    </rule>
    <rule e="any" k="tower:type" v="~" >
        <symbol id="viewpoint" src="{$symbolPath}/viewpoint.svg" symbol-width="20" priority="{$pr-viewpoint}"/>
        <rule e="any" k="*" v="*" zoom-min="16">
            <caption k="name" symbol-id="viewpoint" 
            font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2" priority="{$pr-viewpoint}"/>
        </rule>
    </rule>
</rule>

</rule>

<rule  e="node" k="information" v="guidepost" zoom-min="16">
  <symbol id="guidepost" src="{$symbolPath}/guidepost.svg" symbol-width="28" priority="{$pr-guidepost}"/>
  <rule e="node" k="*" v="*" zoom-min="16">
    <caption k="name" symbol-id="guidepost" 
    font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2" priority="{$pr-guidepost}"/>
  </rule>
</rule>

<rule  e="node" k="information" v="board" zoom-min="16">
  <rule  e="any" k="board_type" v="notice" >
    <symbol id="board" src="{$symbolPath}/board_notice.svg" symbol-width="24" priority="{$pr-board}"/>
  </rule>
  <rule  e="any" k="board_type" v="~" >
    <symbol id="board" src="{$symbolPath}/board.svg" symbol-width="24" priority="{$pr-board}"/>
  </rule>
  <rule e="node" k="*" v="*" zoom-min="16">
    <caption k="name" symbol-id="board" 
    font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2" priority="{$pr-board}"/>
  </rule>
</rule>

<rule  e="any" k="ford" v="*" zoom-min="16">
  <symbol id="ford" src="{$symbolPath}/ford.svg" symbol-width="20"  priority="{$pr-ford}"/>
</rule>

<rule  e="any" k="amenity" v="hunting_stand" zoom-min="16">
  <symbol id="hunting_stand" src="{$symbolPath}/hunting_stand.svg" symbol-width="22"  priority="{$pr-hunting-stand}"/>
</rule>

<rule  e="any" k="amenity" v="game_feeding|feeding_place" zoom-min="16">
  <symbol id="game_feeding" src="{$symbolPath}/game_feeding.svg" symbol-width="20"  priority="{$pr-game-feeding}"/>
</rule>


</xsl:template>
</xsl:stylesheet>