<?xml-stylesheet type="text/xsl"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<!-- 
# OpenHikingMap
#
# Point rendering: Healthcare
#
# Copyright (c) 2022-2024 OpenHiking contributors
# SPDX-License-Identifier: GPL-3.0-only
-->

<xsl:template name="points-healthcare">
<rule  e="any" k="amenity" v="hospital|clinic" zoom-min="14">
  <rule  e="any" k="*" v="*" zoom-max="15">
    <symbol id="hospital" src="{$healthcareIconPath}/hospital.svg" symbol-width="16" priority="{$pr-hospital}"/>
  </rule>
  <rule  e="any" k="*" v="*" zoom-min="16">
    <symbol id="hospital" src="{$healthcareIconPath}/hospital.svg" symbol-width="20" priority="{$pr-hospital}"/>
  </rule>
   <rule e="any" k="*" v="*" zoom-min="15">
      <caption k="name" symbol-id="hospital" 
      font-style="bold_italic" font-size="12" fill="#b90000" stroke="#ffffff" stroke-width="1"  priority="{$pr-label-healthcare}"/>
  </rule>       
</rule>

<rule  e="any" k="amenity" v="doctors" zoom-min="14">
  <rule  e="any" k="*" v="*" zoom-max="15">
    <symbol id="doctors" src="{$healthcareIconPath}/doctors.svg" symbol-width="16" priority="{$pr-doctors}"/>
  </rule>
  <rule  e="any" k="*" v="*" zoom-min="16"> 
    <symbol id="doctors" src="{$healthcareIconPath}/doctors.svg" symbol-width="18" priority="{$pr-doctors}"/>
  </rule>     
  <rule e="any" k="*" v="*" zoom-min="16">
        <caption k="name" symbol-id="doctors" 
        font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2"  priority="{$pr-label-healthcare}"/>
  </rule>       
</rule>

<rule  e="any" k="amenity" v="dentist" zoom-min="14">
        <symbol id="dentist" src="{$healthcareIconPath}/dentist.svg" symbol-width="16" priority="{$pr-dentist}"/>
        <rule e="any" k="*" v="*" >
            <caption k="name" symbol-id="dentist" 
            font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2"  priority="{$pr-label-healthcare}"/>
        </rule>       
</rule>


<rule  e="any" k="amenity" v="pharmacy" zoom-min="15">
        <symbol id="pharmacy" src="{$healthcareIconPath}/pharmacy.svg" symbol-width="17" priority="{$pr-pharmacy}"/>
        <rule e="any" k="*" v="*" >
            <caption k="name" symbol-id="pharmacy" 
            font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2"  priority="{$pr-label-healthcare}"/>
        </rule>       
</rule>



</xsl:template>
</xsl:stylesheet>