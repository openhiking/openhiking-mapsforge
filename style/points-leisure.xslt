<?xml-stylesheet type="text/xsl"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<!-- 
# OpenHikingMap
#
# Point rendering: Leisure
#
# Copyright (c) 2022-2023 OpenHiking contributors
# SPDX-License-Identifier: GPL-3.0-only
-->

<xsl:template name="points-leisure">

<rule  e="any" k="tourism" v="zoo" zoom-min="14">
  <rule  e="any" k="*" v="*" zoom-max="15">
    <symbol id="zoo" src="{$symbolPath}/zoo.svg" symbol-width="22" priority="{$pr-zoo}"/>
  </rule>
  <rule  e="any" k="*" v="*" zoom-min="16"> 
    <symbol id="zoo" src="{$symbolPath}/zoo.svg" symbol-width="26" priority="{$pr-zoo}"/>
  </rule>     
  <rule e="any" k="*" v="*" zoom-min="16">
    <caption k="name" symbol-id="zoo" 
    font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2" priority="{$pr-label-leisure}"/>
  </rule>
</rule>

<rule  e="any" k="leisure" v="playground" zoom-min="16">
        <symbol id="playground" src="{$symbolPath}/playground.svg" symbol-width="23" priority="{$pr-playground}"/>
</rule>

<rule  e="any" k="amenity" v="public_bath|spa" zoom-min="14">
  <rule  e="any" k="*" v="*" zoom-max="15">
    <symbol id="spa" src="{$symbolPath}/spa.svg" symbol-width="24" priority="{$pr-spa}"/>
  </rule>
  <rule  e="any" k="*" v="*" zoom-min="16"> 
    <symbol id="spa" src="{$symbolPath}/spa.svg" symbol-width="26" priority="{$pr-spa}"/>
  </rule>     
  <rule e="any" k="*" v="*" zoom-min="16">
    <caption k="name" symbol-id="spa" 
    font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2" priority="{$pr-label-leisure}"/>
  </rule>
</rule>
<!-- 
<rule  e="node" k="leisure" v="swimming_pool" zoom-min="14">
  <symbol id="swimming_pool" src="{$symbolPath}/swimming_pool.svg" symbol-width="24" priority="{$pr-swimming-pool}"/>
  <rule e="any" k="*" v="*" zoom-min="16">
    <caption k="name" symbol-id="swimming_pool" 
    font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2" priority="{$pr-swimming-pool}"/>
  </rule>
</rule>
-->

<rule  e="any" k="tourism" v="attraction" zoom-min="15">
  <rule  e="any" k="amenity" v="~">
    <rule  e="any" k="leisure" v="~">
      <rule  e="any" k="natural" v="~">    
        <rule  e="any" k="historic" v="~">    
          <symbol id="attraction" src="{$symbolPath}/attraction.svg" symbol-width="16" priority="{$pr-attraction}"/>
          <rule e="any" k="*" v="*" zoom-min="16">
            <caption k="name" symbol-id="attraction" 
            font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2" priority="{$pr-label-leisure}"/>
          </rule>
        </rule>
      </rule>        
    </rule>        
  </rule>
</rule>



</xsl:template>
</xsl:stylesheet>