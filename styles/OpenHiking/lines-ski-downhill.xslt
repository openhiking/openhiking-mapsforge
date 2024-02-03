<?xml-stylesheet type="text/xsl"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<!-- 
# OpenHikingMap
#
# Downhill ski tracks
#
# Copyright (c) 2022-2023 OpenHiking contributors
# SPDX-License-Identifier: GPL-3.0-only
-->

<xsl:template name="lines-ski-downhill">
<xsl:variable name="lw-ski-downhill">1.6</xsl:variable>
<rule cat="ski_downhill" e="way" k="piste:type" v="downhill" closed="no"  zoom-min="14">
    <rule e="way" k="piste:difficulty" v="novice">
      <line stroke="#73e373" stroke-width="{$lw-ski-downhill}"/>
    </rule>
    <rule e="way" k="piste:difficulty" v="easy">
      <line stroke="#7B95FF" stroke-width="{$lw-ski-downhill}"/>
    </rule>
    <rule e="way" k="piste:difficulty" v="~|intermediate">
      <line stroke="#FF958B" stroke-width="{$lw-ski-downhill}"/>
    </rule>
    <rule e="way" k="piste:difficulty" v="advanced|expert|extreme">
    <line stroke="#737373" stroke-width="{$lw-ski-downhill}"/>
    </rule>
  </rule>

</xsl:template>
</xsl:stylesheet>