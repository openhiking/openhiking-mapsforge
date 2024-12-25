<?xml-stylesheet type="text/xsl"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<!-- 
# OpenHikingMap
#
# Point rendering: Wilderness
#
# Copyright (c) 2022-2024 OpenHiking contributors
# SPDX-License-Identifier: GPL-3.0-only
-->
<xsl:template name="points-wilderness">


<rule  e="any" k="ford" v="*" zoom-min="15">
  <symbol id="ford" src="{$wildernessIconPath}/ford.svg" symbol-width="20"  priority="{$pr-ford}"/>
</rule>

<rule  e="any" k="amenity" v="hunting_stand" zoom-min="16">
  <symbol id="hunting_stand" src="{$wildernessIconPath}/hunting_stand.svg" symbol-width="22"  priority="{$pr-hunting-stand}"/>
</rule>

<rule  e="any" k="amenity" v="game_feeding|feeding_place" zoom-min="16">
  <symbol id="game_feeding" src="{$wildernessIconPath}/feeding_place.svg" symbol-width="20"  priority="{$pr-game-feeding}"/>
</rule>

<rule  e="any" k="amenity" v="watering_place" zoom-min="15">
  <rule  e="any" k="*" v="*" zoom-max="16">
      <symbol id="watering_place" src="{$wildernessIconPath}/watering_place.svg" symbol-width="20"  priority="{$pr-watering-place}"/>
  </rule> 
  <rule  e="any" k="*" v="*" zoom-min="17">
      <symbol id="watering_place" src="{$wildernessIconPath}/watering_place.svg" symbol-width="24"  priority="{$pr-watering-place}"/>
  </rule>                         
</rule>



</xsl:template>
</xsl:stylesheet>