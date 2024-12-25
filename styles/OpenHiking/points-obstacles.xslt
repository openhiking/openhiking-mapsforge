<?xml-stylesheet type="text/xsl"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<!-- 
# OpenHikingMap
#
# Point rendering: Accomodation
#
# Copyright (c) 2022-2024 OpenHiking contributors
# SPDX-License-Identifier: GPL-3.0-only
-->
<xsl:template name="points-obstacles">

<rule  e="node" k="obstacle" v="vegetation" zoom-min="15">
  <symbol id="obstacle" src="{$hikingIconPath}/obstacle_vegetation.svg" symbol-width="22" priority="{$pr-obstacle}"/>
</rule>

<rule  e="node" k="obstacle" v="fallen_tree" zoom-min="15">
  <symbol id="obstacle" src="{$hikingIconPath}/obstacle_fallen_tree.svg" symbol-width="22" priority="{$pr-obstacle}"/>
</rule>

<rule  e="node" k="obstacle" v="yes" zoom-min="15">
  <symbol id="obstacle" src="{$hikingIconPath}/obstacle.svg" symbol-width="22" priority="{$pr-obstacle}"/>
</rule>

</xsl:template>
</xsl:stylesheet>