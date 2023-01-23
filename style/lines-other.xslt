<?xml-stylesheet type="text/xsl"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<!-- 
# OpenHikingMap
#
# Lines rendering: Others
#
# Copyright (c) 2022-2023 OpenHiking contributors
# SPDX-License-Identifier: GPL-3.0-only
-->

<xsl:template name="lines-other">

<rule e="way" k="aeroway" v="*">
  <rule e="way" k="aeroway" v="runway" zoom-min="13">
    <line stroke="#805A5A5A" stroke-width="6"/>  
    <line stroke="#FFFFFF" stroke-width="0.4" stroke-dasharray="12,12" stroke-linecap="square"/>
  </rule>
</rule>

<rule e="way" k="route" v="ferry">
	<line stroke="#78FCF8" stroke-width="{$lw-ferry}" stroke-dasharray="13,3" stroke-linecap="butt" />
</rule>

<rule cat="power" e="way" k="power" v="*">
    <rule e="way" k="power" v="line" zoom-min="14">
      <line stroke="#949494" stroke-width="0.2"  stroke-linecap="butt"/>
      <line stroke="#949494" stroke-width="0.6" stroke-dasharray="2,42" stroke-linecap="round"/>    
    </rule>
    <rule e="way" k="power" v="minor_line" zoom-min="16">
      <line stroke="#949494" stroke-width="0.2"  stroke-linecap="butt"/>
      <line stroke="#949494" stroke-width="0.6" stroke-dasharray="2,42" stroke-linecap="round"/>    
    </rule>   
  </rule>

</xsl:template>
</xsl:stylesheet>