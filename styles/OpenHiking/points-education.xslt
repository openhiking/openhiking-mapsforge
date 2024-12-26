<?xml-stylesheet type="text/xsl"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<!-- 
# OpenHikingMap
#
# Point rendering: Education
#
# Copyright (c) 2022-2024 OpenHiking contributors
# SPDX-License-Identifier: GPL-3.0-only
-->

<xsl:template name="points-education">

<rule  e="any" k="amenity" v="childcare|kindergarten" zoom-min="15">
  <rule  e="any" k="*" v="*" zoom-max="16">
    <symbol id="kindergarten" src="{$educationIconPath}/kindergarten.svg" symbol-width="18" priority="{$pr-school}"/>
  </rule>
  <rule  e="any" k="*" v="*" zoom-min="17">
    <symbol id="kindergarten" src="{$educationIconPath}/kindergarten.svg" symbol-width="22" priority="{$pr-school}"/>
  </rule>
  <rule e="any" k="*" v="*" zoom-min="16">
      <caption k="name" symbol-id="kindergarten" 
      font-style="bold_italic" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2"  priority="{$pr-label-education}"/>
  </rule>       
</rule>

<rule  e="any" k="amenity" v="school" zoom-min="15">
  <rule  e="any" k="*" v="*" zoom-max="16">
    <symbol id="school" src="{$educationIconPath}/school.svg" symbol-width="18" priority="{$pr-school}"/>
  </rule>
  <rule  e="any" k="*" v="*" zoom-min="17"> 
    <symbol id="school" src="{$educationIconPath}/school.svg" symbol-width="22" priority="{$pr-school}"/>
  </rule>     
  <rule e="any" k="*" v="*" zoom-min="16">
      <caption k="name" symbol-id="school" 
      font-style="bold_italic" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2"  priority="{$pr-label-education}"/>
  </rule>       
</rule>

<rule  e="any" k="amenity" v="college|university" zoom-min="14">
  <rule  e="any" k="*" v="*" zoom-max="15">
    <symbol id="university" src="{$educationIconPath}/university.svg" symbol-width="16" priority="{$pr-school}"/>
  </rule>
  <rule  e="any" k="*" v="*" zoom-min="16"> 
    <symbol id="university" src="{$educationIconPath}/university.svg" symbol-width="20" priority="{$pr-school}"/>
  </rule>     
    <rule e="any" k="*" v="*" >
        <caption k="name" symbol-id="university" 
        font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2"  priority="{$pr-label-education}"/>
    </rule>       
</rule>


</xsl:template>
</xsl:stylesheet>
