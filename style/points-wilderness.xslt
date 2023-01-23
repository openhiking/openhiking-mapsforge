<?xml-stylesheet type="text/xsl"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<!-- 
# OpenHikingMap
#
# Point rendering: Wilderness
#
# Copyright (c) 2022-2023 OpenHiking contributors
# SPDX-License-Identifier: GPL-3.0-only
-->
<xsl:template name="points-wilderness">


<rule  e="any" k="ford" v="*" zoom-min="15">
  <symbol id="ford" src="{$symbolPath}/ford.svg" symbol-width="20"  priority="{$pr-ford}"/>
</rule>

<rule  e="any" k="amenity" v="hunting_stand" zoom-min="16">
  <symbol id="hunting_stand" src="{$symbolPath}/hunting_stand.svg" symbol-width="22"  priority="{$pr-hunting-stand}"/>
</rule>

<rule  e="any" k="amenity" v="game_feeding|feeding_place" zoom-min="16">
  <symbol id="game_feeding" src="{$symbolPath}/game_feeding.svg" symbol-width="20"  priority="{$pr-game-feeding}"/>
</rule>


</xsl:template>
</xsl:stylesheet>