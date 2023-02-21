<?xml-stylesheet type="text/xsl"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<!-- 
# OpenHikingMap
#
# Top-layer polygons
#
# Copyright (c) 2022-2023 OpenHiking contributors
# SPDX-License-Identifier: GPL-3.0-only
-->

<xsl:template name="poly-top">

<rule e="way" k="leisure" v="pitch" closed="yes" zoom-min="14">
  <rule e="way" k="surface" v="asphalt" >
    <area fill="#c3c2c0" stroke="#878580" stroke-width="0.8" scale="none"/>
  </rule>
  <rule e="way" k="surface" v="grass|artificial_turf" >
    <area fill="#a0eaa3" stroke="#5cba2d" stroke-width="0.8" scale="none"/>
  </rule>
  <rule e="way" k="surface" v="clay|tartan|carpet" >
    <area fill="#e9bdb0" stroke="#CF6D50" stroke-width="0.8" scale="none"/>
  </rule>
  <rule e="way" k="surface" v="sand" >
    <area fill="#ebdda1" stroke="#dbc254" stroke-width="0.8" scale="none"/>
  </rule>
  <rule e="way" k="surface" v="snow" >
    <area fill="#b3e8ff" stroke="#9cb2ff" stroke-width="0.8" scale="none"/>
  </rule>
  <rule e="way" k="surface" v="~" >
    <area fill="#a0eaa3" stroke="#5cba2d" stroke-width="0.8" scale="none"/>
  </rule>
  <rule e="way" k="*" v="*" zoom-min="16">
      <caption k="name" font-style="italic" font-family="serif" font-size="12" fill="#000000" stroke="#FFFFFF" stroke-width="1.7" />
  </rule>
</rule>

<rule e="way" k="aeroway" v="helipad" closed="yes">
    <area fill="#a9a9a9" stroke="#818181" stroke-width="1" scale="none"/>
  </rule>

</xsl:template>
</xsl:stylesheet>
