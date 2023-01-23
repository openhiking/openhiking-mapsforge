<?xml-stylesheet type="text/xsl"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

<xsl:template name="lines-contours">

<rule cat="contours" e="way" k="contour_ext" v="*">
  <rule e="way" k="contour_ext" v="elevation_major" zoom-min="11" zoom-max="13">
    <line stroke="#7B6520" stroke-width="0.4" stroke-linecap="butt" scale="none"/>
  </rule>
  <rule e="way" k="contour_ext" v="elevation_major" zoom-min="14">
    <line stroke="#7B6520" stroke-width="0.7" stroke-linecap="butt" scale="none"/>
  </rule>
  <rule e="way" k="contour_ext" v="elevation_medium" zoom-min="12" zoom-max="13">
    <line stroke="#BD956A" stroke-width="0.3" stroke-linecap="butt" scale="none"/>
  </rule>
  <rule e="way" k="contour_ext" v="elevation_medium" zoom-min="14">
    <line stroke="#BD956A" stroke-width="0.5" stroke-linecap="butt" scale="none"/>
  </rule>
  <rule e="way" k="contour_ext" v="elevation_minor" zoom-min="14">
    <line stroke="#FFDB8888" stroke-width="0.3" stroke-linecap="butt" scale="none"/>
  </rule>
  <rule e="way" k="contour_ext" v="elevation_major" zoom-min="14" zoom-max="15">
    <pathText k="ele" font-size="7" font-style="bold" fill="#A86868" stroke="#FFFFFF" stroke-width="1" repeat="true" repeat-gap="250" priority="{$pr-label-contour-ele}"/>
  </rule>
  <rule e="way" k="contour_ext" v="elevation_major" zoom-min="16">
    <pathText k="ele" font-size="9" font-style="bold" fill="#A86868" stroke="#FFFFFF" stroke-width="1" repeat="true" repeat-gap="300" priority="{$pr-label-contour-ele}"/>
  </rule>
  <rule e="way" k="contour_ext" v="elevation_medium" zoom-min="15">
    <pathText k="ele" font-size="8" font-style="bold" fill="#A86868" stroke="#FFFFFF" stroke-width="1" repeat="true" repeat-gap="350" priority="{$pr-label-contour-ele}"/>
  </rule>
</rule>


</xsl:template>
</xsl:stylesheet>