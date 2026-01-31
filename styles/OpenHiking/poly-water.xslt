<?xml-stylesheet type="text/xsl"?>
<!-- 
# OpenHikingMap
#
# Copyright (c) 2022-2024 OpenHiking contributors
# SPDX-License-Identifier: GPL-3.0-only
-->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<xsl:variable name="wetland-color">#B8FCF8</xsl:variable>
<xsl:template name="poly-water">

  
<!-- DO 6-->
<rule e="way" k="natural" v="glacier">
  <area fill="#b1fefc" scale="none"/>
</rule>


<rule e="way" k="natural" v="water">
    <area fill="#69A7F5"/>    
    <rule e="way" k="tidal" v="yes">
        <area fill="#B8FCF8"/>    
    </rule>
</rule>

<rule e="way" k="landuse" v="reservoir|basin">
    <area fill="#69A7F5"/>    
</rule>

<rule  e="way" k="waterway" v="riverbank"> 
    <area fill="#69A7F5"/>
</rule>

<!-- DO 7-->
<rule e="way" k="natural" v="wetland">
  <rule e="way" k="wetland" v="reedbed">  
      <area fill="{$wetland-color}"/>  
      <rule e="way" k="*" v="*" zoom-max="12">
        <area src="{$patternPath}/reedbed.svg" symbol-height="16"/>
      </rule>
      <rule e="way" k="*" v="*" zoom-min="13" zoom-max="14">
        <area src="{$patternPath}/reedbed.svg" symbol-height="24"/>
      </rule>
      <rule e="way" k="*" v="*" zoom-min="15">
        <area src="{$patternPath}/reedbed.svg" symbol-height="32"/>
      </rule>
  </rule>
  <rule e="way" k="wetland" v="swamp">
      <area fill="#A1E976"/>  
      <rule e="way" k="*" v="*" zoom-max="15">
        <area src="{$patternPath}/swamp.svg" symbol-height="16"/>
      </rule>
      <rule e="way" k="*" v="*" zoom-min="16">
        <area src="{$patternPath}/swamp.svg" symbol-height="32"/>
      </rule>
  </rule>
  <rule e="way" k="wetland" v="tidalflat">
      <area fill="#B8FCF8"/>  
      <rule e="way" k="*" v="*" zoom-max="15">
        <area src="{$patternPath}/tidalflat.svg" symbol-height="16"/>
      </rule>
      <rule e="way" k="*" v="*" zoom-min="16">
        <area src="{$patternPath}/tidalflat.svg" symbol-height="32"/>
      </rule>
  </rule>
  <rule e="way" k="wetland" v="~">
      <area fill="{$wetland-color}"/> 
      <rule e="way" k="*" v="*" zoom-max="15">
        <area src="{$patternPath}/wetland.svg" symbol-height="16"/>
      </rule>
      <rule e="way" k="*" v="*" zoom-min="16">
        <area src="{$patternPath}/wetland.svg" symbol-height="32"/>
      </rule>
  </rule>
</rule>

<rule e="way" k="natural" v="marsh">
  <rule cat="all" e="way" k="*" v="*">
      <area fill="{$wetland-color}"/>    
      <area src="{$patternPath}/wetland.svg" symbol-height="30"/>
  </rule>
</rule>


</xsl:template>
</xsl:stylesheet>