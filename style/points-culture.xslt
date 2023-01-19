<?xml-stylesheet type="text/xsl"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<!-- 
# OpenHikingMap
#
# Point rendering: Culture
#
# Copyright (c) 2022-2023 OpenHiking contributors
# SPDX-License-Identifier: GPL-3.0-only
-->

<xsl:template name="points-culture">

<rule  e="any" k="amenity" v="theatre" zoom-min="15">
  <symbol id="theatre" src="{$symbolPath}/theatre.svg" symbol-width="24" priority="{$pr-theatre}"/>
  <rule e="any" k="*" v="*" zoom-min="16">
    <caption k="name" symbol-id="theatre" 
    font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2" priority="{$pr-theatre}"/>
  </rule>
</rule>

<rule  e="any" k="amenity" v="library" zoom-min="15">
  <symbol id="library" src="{$symbolPath}/library.svg" symbol-width="20" priority="{$pr-library}"/>
  <rule e="any" k="*" v="*" zoom-min="16">
    <caption k="name" symbol-id="library" 
    font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2" priority="{$pr-library}"/>
  </rule>
</rule>



<rule  e="any" k="tourism" v="museum" zoom-min="14">
  <symbol id="museum" src="{$symbolPath}/museum.svg" symbol-width="18" priority="{$pr-museum}"/>
  <rule e="any" k="*" v="*" zoom-min="16">
    <caption k="name" symbol-id="museum" 
    font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2" priority="{$pr-museum}"/>
  </rule>
</rule>

<rule  e="any" k="tourism" v="gallery" zoom-min="15">
  <symbol id="gallery" src="{$symbolPath}/art_gallery.svg" symbol-width="22" priority="{$pr-gallery}"/>
  <rule e="any" k="*" v="*" zoom-min="16">
    <caption k="name" symbol-id="gallery" 
    font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2" priority="{$pr-gallery}"/>
  </rule>
</rule>



<rule  e="any" k="man_made" v="cross" zoom-min="15">
  <symbol id="cross" src="{$symbolPath}/cross.svg" symbol-width="24" priority="{$pr-cross}"/>
  <rule e="any" k="*" v="*" zoom-min="16">
    <caption k="name" symbol-id="cross" 
    font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2" priority="{$pr-cross}"/>
  </rule>
</rule>

<rule  e="any" k="man_made" v="obelisk" zoom-min="16">
  <symbol id="obelisk" src="{$symbolPath}/obelisk.svg" symbol-width="24" priority="{$pr-obelisk}"/>
  <rule e="any" k="*" v="*" zoom-min="16">
    <caption k="name" symbol-id="obelisk" 
    font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2" priority="{$pr-obelisk}"/>
  </rule>
</rule>




</xsl:template>
</xsl:stylesheet>