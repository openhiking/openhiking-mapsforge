<?xml-stylesheet type="text/xsl"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<!-- 
# OpenHikingMap
#
# Polynom rendering: Buildings
#
# Copyright (c) 2022-2024 OpenHiking contributors
# SPDX-License-Identifier: GPL-3.0-only
-->

<xsl:template name="poly-buildings">
<rule cat="buildings" e="way" k="building" v="*" zoom-min="15" closed="yes">
   <rule e="way" k="building" v="yes">
      <area fill="#B0CBCBCB" stroke="#8F8F8F" stroke-width="0.6" scale="none" />
    </rule>
    <rule e="way" k="building" v="supermarket">
      <area fill="#C783A4" stroke="#8F8F8F" stroke-width="0.6" scale="none" />
    </rule>
    <rule e="way" k="building" v="chapel|church|cathedral|basicila|monastry|mosque|synagogue">
      <area fill="#B0d19158" stroke="#8F8F8F" stroke-width="1.6" scale="none" />
    </rule>
     <rule e="way" k="building" v="museum">
      <area fill="#9c626a" stroke="#8F8F8F" stroke-width="0.6" scale="none" />
    </rule>
    <rule e="way" k="building" v="public|education|hospital|transportation">
      <area fill="#B0CBCBCB" stroke="#8F8F8F" stroke-width="0.6" scale="none" />
    </rule>
    <rule e="way" k="building" v="sports_centre">
      <area fill="#B0A3D3D9" stroke="#1b8389" stroke-width="1" scale="none" />
    </rule>
    <rule e="way" k="building" v="swimming_facility">
      <area fill="#1cb0c4" stroke="#8F8F8F" stroke-width="0.6" scale="none" />
     </rule>
   <rule e="way" k="building" v="historic">
      <area fill="#B0CD7878" stroke="#550000" stroke-width="0.6" scale="none" />
    </rule>
</rule>
</xsl:template>
</xsl:stylesheet>