<?xml-stylesheet type="text/xsl"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<!-- 
# OpenHikingMap
#
# Point rendering: Transportation
#
# Copyright (c) 2022-2023 OpenHiking contributors
# SPDX-License-Identifier: GPL-3.0-only
-->

<xsl:template name="points-transportation">

<rule  e="any" k="amenity" v="parking" zoom-min="16">
    <symbol id="parking" src="{$symbolPath}/parking.svg" symbol-width="14" priority="{$pr-parking}"/>
    <rule e="any" k="*" v="*" >
        <caption k="name" symbol-id="parking" 
        font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2"  priority="{$pr-label-transportation}"/>
    </rule>       
</rule>        

<rule  e="any" k="amenity" v="fuel" zoom-min="14">
    <symbol id="fuel" src="{$symbolPath}/fuel.svg" symbol-width="16" priority="{$pr-fuel}"/>
    <rule e="any" k="*" v="*" zoom-min="16">
        <caption k="name" symbol-id="fuel" 
        font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2"  priority="{$pr-label-transportation}"/>
    </rule>       
</rule>        


<rule  e="any" k="railway" v="station|halt" zoom-min="14">
  <rule  e="any" k="station" v="~|subway" >
    <rule  e="any" k="*" v="*" zoom-max="15">
      <symbol id="train" src="{$symbolPath}/train_station.svg" symbol-width="15" priority="{$pr-train-station}"/>
    </rule>
    <rule  e="any" k="*" v="*" zoom-min="16" >
      <symbol id="train" src="{$symbolPath}/train_station.svg" symbol-width="18" priority="{$pr-train-station}"/>
    </rule>
  </rule>
  <rule  e="any" k="station" v="light_rail" >
    <rule  e="any" k="*" v="*" zoom-max="15">
      <symbol id="train" src="{$symbolPath}/light_rail.svg" symbol-width="15" priority="{$pr-train-station}"/>
    </rule>
    <rule  e="any" k="*" v="*" zoom-min="16" >
      <symbol id="train" src="{$symbolPath}/light_rail.svg" symbol-width="18" priority="{$pr-train-station}"/>
    </rule>
  </rule>
  <rule e="node" k="*" v="*" zoom-min="15">
    <caption k="name" symbol-id="train" position="below" 
    font-style="bold" font-size="10" fill="#4040ff" stroke="#ffffff" stroke-width="2" priority="{$pr-label-public-transport}"/>
  </rule>
</rule>

<rule  e="any" k="railway" v="crossing|level_crossing" zoom-min="17">
  <symbol id="crossing" src="{$symbolPath}/railway_crossing.svg" symbol-width="21" priority="{$pr-crossing}"/>
</rule>


<rule  e="any" k="highway" v="bus_stop">
  <rule  e="any" k="bus_local" v="~" zoom-min="14" zoom-max="15">
    <rule  e="any" k="*" v="*" zoom-min="14" zoom-max="14">
      <symbol id="bus_stop" src="{$symbolPath}/bus_stop_small.svg" symbol-width="8" priority="{$pr-bus-stop}"/>
    </rule>
    <rule  e="any" k="*" v="*" zoom-min="15" zoom-max="15">
      <symbol id="bus_stop" src="{$symbolPath}/bus_stop.svg" symbol-width="14" priority="{$pr-bus-stop}"/>
    </rule>    
  </rule>
  <rule  e="any" k="bus_local" v="yes" zoom-min="15" zoom-max="15">
     <symbol id="bus_stop" src="{$symbolPath}/bus_stop_small.svg" symbol-width="8" priority="{$pr-bus-stop}"/>
  </rule>
  <rule  e="any" k="*" v="*" zoom-min="16" >
    <symbol id="bus_stop" src="{$symbolPath}/bus_stop.svg" symbol-width="18" priority="{$pr-bus-stop}"/>  
  </rule>
  <rule e="node" k="*" v="*" zoom-min="16">
    <caption k="name" symbol-id="bus_stop" 
    font-style="bold" font-size="10" fill="#4040ff" stroke="#ffffff" stroke-width="2" priority="{$pr-label-public-transport}"/>
  </rule>
</rule>

<rule  e="any" k="amenity" v="bus_station">
  <rule  e="any" k="*" v="*" zoom-min="14" zoom-max="15">
    <symbol id="bus_stop" src="{$symbolPath}/bus_stop.svg" symbol-width="14" priority="{$pr-bus-station}"/>
  </rule>
  <rule  e="any" k="*" v="*" zoom-min="16" >
    <symbol id="bus_stop" src="{$symbolPath}/bus_stop.svg" symbol-width="18" priority="{$pr-bus-station}"/>
  </rule>
  <rule e="node" k="*" v="*" zoom-min="15">
    <caption k="name" symbol-id="bus_stop" position="below" 
    font-style="bold" font-size="10" fill="#4040ff" stroke="#ffffff" stroke-width="2" priority="{$pr-label-public-transport}"/>
  </rule>
</rule>

<rule  e="any" k="amenity" v="ferry_terminal">
  <rule  e="any" k="*" v="*" zoom-min="14" zoom-max="15">
    <symbol id="ferry_terminal" src="{$symbolPath}/ferry_terminal.svg" symbol-width="17" priority="{$pr-ferry-terminal}"/>
  </rule>
  <rule  e="any" k="*" v="*" zoom-min="16" >
    <symbol id="ferry_terminal" src="{$symbolPath}/ferry_terminal.svg" symbol-width="20" priority="{$pr-ferry-terminal}"/>
  </rule>
  <rule e="node" k="*" v="*" zoom-min="15">
    <caption k="name" symbol-id="ferry_terminal" 
    font-style="bold" font-size="10" fill="#4040ff" stroke="#ffffff" stroke-width="2" priority="{$pr-label-public-transport}"/>
  </rule>
</rule>

<rule  e="any" k="aeroway" v="aerodrome">
  <rule  e="any" k="*" v="*" zoom-min="13" zoom-max="14">
    <symbol id="airport" src="{$symbolPath}/airport.svg" symbol-width="19" priority="{$pr-airport}"/>
  </rule>
  <rule  e="any" k="*" v="*" zoom-min="15" >
    <symbol id="airport" src="{$symbolPath}/airport.svg" symbol-width="23" priority="{$pr-airport}"/>
  </rule>
  <rule e="any" k="*" v="*" zoom-min="14">
    <caption k="name" symbol-id="airport" 
    font-style="bold" font-size="11" fill="#4040ff" stroke="#ffffff" stroke-width="2" priority="{$pr-label-public-transport}"/>
  </rule>
</rule>

<rule e="any" k="aeroway" v="helipad" >
  <rule  e="any" k="*" v="*" zoom-min="14" zoom-max="15">
    <symbol id="helipad" src="{$symbolPath}/helipad.svg" symbol-width="15" priority="{$pr-helipad}"/>
  </rule>
  <rule  e="any" k="*" v="*" zoom-min="15" >
    <symbol id="helipad" src="{$symbolPath}/helipad.svg" symbol-width="16" priority="{$pr-helipad}"/>
  </rule>
</rule>


</xsl:template>
</xsl:stylesheet>