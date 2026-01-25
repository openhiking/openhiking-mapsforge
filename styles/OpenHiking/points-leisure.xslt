<?xml-stylesheet type="text/xsl"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<!-- 
# OpenHikingMap
#
# Point rendering: Leisure
#
# Copyright (c) 2022-2024 OpenHiking contributors
# SPDX-License-Identifier: GPL-3.0-only
-->

<xsl:template name="points-leisure">

<rule  e="any" k="leisure" v="garden" zoom-min="13">
  <rule  e="any" k="garden:type" v="botanical">
    <rule  e="any" k="*" v="*" zoom-max="14">
      <symbol id="botanical_garden" src="{$leisureIconPath}/botanical_garden.svg" symbol-width="16" priority="{$pr-botanical-garden}"/>
    </rule>
    <rule  e="any" k="*" v="*" zoom-min="15"> 
      <symbol id="botanical_garden" src="{$leisureIconPath}/botanical_garden.svg" symbol-width="22" priority="{$pr-botanical-garden}"/>
    </rule>  
    <rule e="any" k="*" v="*" zoom-min="14">
      <caption k="name" symbol-id="botanical_garden" 
      font-style="bold_italic" font-family="serif" font-size="16"  fill="#004208" stroke="#ffffff" stroke-width="1" priority="{$pr-label-leisure}"/>
    </rule>
  </rule>
</rule>

<rule  e="any" k="tourism" v="zoo" zoom-min="14">
  <rule  e="any" k="*" v="*" zoom-max="15">
    <symbol id="zoo" src="{$leisureIconPath}/zoo.svg" symbol-width="18" priority="{$pr-zoo}"/>
  </rule>
  <rule  e="any" k="*" v="*" zoom-min="16"> 
    <symbol id="zoo" src="{$leisureIconPath}/zoo.svg" symbol-width="22" priority="{$pr-zoo}"/>
  </rule>     
  <rule e="any" k="*" v="*" zoom-min="16">
    <caption k="name" symbol-id="zoo" 
    font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2" priority="{$pr-label-leisure}"/>
  </rule>
</rule>

<rule  e="any" k="leisure" v="playground" zoom-min="16">
        <symbol id="playground" src="{$leisureIconPath}/playground.svg" symbol-width="23" priority="{$pr-playground}"/>
</rule>

<rule e="way" k="leisure" v="beach_resort" zoom-min="12">
    <rule  e="any" k="*" v="*" zoom-max="13">
        <symbol id="beach_resort" src="{$leisureIconPath}/beach.svg" symbol-width="14" priority="{$pr-beach-resort}"/>
    </rule>
    <rule  e="any" k="*" v="*" zoom-min="14" zoom-max="15">
        <symbol id="beach_resort" src="{$leisureIconPath}/beach.svg" symbol-width="18" priority="{$pr-beach-resort}"/>
    </rule>
    <rule  e="any" k="*" v="*" zoom-min="16">
        <symbol id="beach_resort" src="{$leisureIconPath}/beach.svg" symbol-width="22" priority="{$pr-beach-resort}"/>
    </rule>
</rule>


<rule  e="any" k="amenity" v="public_bath|spa" zoom-min="14">
  <rule  e="any" k="bath:type" v="hot_spring|thermal" >
    <rule  e="any" k="*" v="*" zoom-max="15">
      <symbol id="spa" src="{$leisureIconPath}/public_bath_hot.svg" symbol-width="18" priority="{$pr-spa}"/>
    </rule>
    <rule  e="any" k="*" v="*" zoom-min="16"> 
      <symbol id="spa" src="{$leisureIconPath}/public_bath_hot.svg" symbol-width="22" priority="{$pr-spa}"/>
    </rule>     
  </rule>
  <rule  e="any" k="bath:type" v="~" >
    <rule  e="any" k="*" v="*" zoom-max="15">
      <symbol id="spa" src="{$leisureIconPath}/public_bath.svg" symbol-width="18" priority="{$pr-spa}"/>
    </rule>
    <rule  e="any" k="*" v="*" zoom-min="16"> 
      <symbol id="spa" src="{$leisureIconPath}/public_bath.svg" symbol-width="22" priority="{$pr-spa}"/>
    </rule>     
  </rule>  
  <rule e="any" k="*" v="*" zoom-min="16">
    <caption k="name" symbol-id="spa" 
    font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2" priority="{$pr-label-leisure}"/>
  </rule>
</rule>


<rule  e="any" k="leisure" v="swimming_facility" zoom-min="14">
  <rule  e="any" k="*" v="*" zoom-max="15">
    <symbol id="swimming_facility" src="{$leisureIconPath}/swimming.svg" symbol-width="18" priority="{$pr-swimming-pool}"/>
  </rule>
  <rule  e="any" k="*" v="*" zoom-min="16"> 
    <symbol id="swimming_facility" src="{$leisureIconPath}/swimming.svg" symbol-width="22" priority="{$pr-swimming-pool}"/>
  </rule>     
  <rule e="any" k="*" v="*" zoom-min="16">
    <caption k="name" symbol-id="swimming_facility" 
    font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2" priority="{$pr-swimming-pool}"/>
  </rule>
</rule>

<rule  e="any" k="leisure" v="fitness_station" zoom-min="15">
  <rule  e="any" k="*" v="*" zoom-max="16">
    <symbol id="fitness_station" src="{$leisureIconPath}/fitness_station.svg" symbol-width="18" priority="{$pr-fitness-station}"/>
  </rule>
  <rule  e="any" k="*" v="*" zoom-min="17"> 
    <symbol id="fitness_station" src="{$leisureIconPath}/fitness_station.svg" symbol-width="22" priority="{$pr-fitness-station}"/>
  </rule>     
  <rule e="any" k="*" v="*" zoom-min="16">
    <caption k="name" symbol-id="fitness_station" 
    font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2" priority="{$pr-label-leisure}"/>
  </rule>
</rule>

<rule  e="any" k="leisure" v="horse_riding" zoom-min="15">
  <rule  e="any" k="*" v="*" zoom-max="16">
    <symbol id="horse_riding" src="{$leisureIconPath}/horse_riding.svg" symbol-width="20" priority="{$pr-horse-riding}"/>
  </rule>
  <rule  e="any" k="*" v="*" zoom-min="17"> 
    <symbol id="horse_riding" src="{$leisureIconPath}/horse_riding.svg" symbol-width="24" priority="{$pr-horse-riding}"/>
  </rule>     
  <rule e="any" k="*" v="*" zoom-min="16">
    <caption k="name" symbol-id="horse_riding" 
    font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2" priority="{$pr-label-leisure}"/>
  </rule>
</rule>

<rule  e="any" k="leisure" v="*" >
  <rule  e="any" k="sport" v="soccer" zoom-min="15">
    <rule  e="any" k="*" v="*" zoom-min="15" zoom-max="16">
      <symbol id="soccer" src="{$leisureIconPath}/soccer.svg" symbol-width="19" priority="{$pr-soccer}"/>
    </rule>
    <rule  e="any" k="*" v="*" zoom-min="17"> 
      <symbol id="soccer" src="{$leisureIconPath}/soccer.svg" symbol-width="22" priority="{$pr-soccer}"/>
    </rule>     
  </rule>
  <rule  e="any" k="sport" v="tennis" zoom-min="15">
    <rule  e="any" k="*" v="*" zoom-min="15" zoom-max="16">
      <symbol id="tennis" src="{$leisureIconPath}/tennis.svg" symbol-width="13" priority="{$pr-tennis}"/>
    </rule>
    <rule  e="any" k="*" v="*" zoom-min="17"> 
      <symbol id="tennis" src="{$leisureIconPath}/tennis.svg" symbol-width="17" priority="{$pr-tennis}"/>
    </rule>     
  </rule>
</rule>  

<rule  e="any" k="leisure" v="golf_course" zoom-min="15">
  <rule  e="any" k="*" v="*" zoom-min="15" zoom-max="16">
    <symbol id="golf_course" src="{$leisureIconPath}/golf.svg" symbol-width="16" priority="{$pr-sport}"/>
  </rule>
  <rule  e="any" k="*" v="*" zoom-min="17"> 
    <symbol id="golf_course" src="{$leisureIconPath}/golf.svg" symbol-width="20" priority="{$pr-sport}"/>
  </rule>  
  <rule e="any" k="*" v="*" zoom-min="16">
    <caption k="name" symbol-id="golf_course" 
    font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2" priority="{$pr-label-leisure}"/>
  </rule>
</rule>

<rule  e="any" k="tourism" v="attraction" zoom-min="15">
  <symbol id="attraction" src="{$leisureIconPath}/attraction.svg" symbol-width="16" priority="{$pr-attraction}"/>
  <rule e="any" k="*" v="*" zoom-min="16">
    <caption k="name" symbol-id="attraction" 
    font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2" priority="{$pr-label-leisure}"/>
  </rule>
</rule>

</xsl:template>
</xsl:stylesheet>