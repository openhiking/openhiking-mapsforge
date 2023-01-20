<?xml-stylesheet type="text/xsl"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

<xsl:template name="poly-sport">
<xsl:variable name="pitch-color-asphalt">#878580</xsl:variable>
<xsl:variable name="pitch-color-grass">#5cba2d</xsl:variable>
<xsl:variable name="pitch-color-clay">#CF6D50</xsl:variable>
<xsl:variable name="pitch-color-sand">#dbc254</xsl:variable>
<xsl:variable name="pitch-color-snow">#8ED43E</xsl:variable>


<rule e="way" k="building" v="~" >
  <rule e="way" k="leisure" v="stadium" closed="yes">
    <area fill="#5CE35C" scale="none"/>
    <rule e="way" k="*" v="*" zoom-min="16">
        <caption k="name" font-style="italic" font-family="serif" font-size="14" fill="#000000" stroke="#FFFFFF" stroke-width="1.7" />
    </rule>
  </rule>
</rule> 


<rule e="way" k="leisure" v="sports_centre" closed="yes">
  <area fill="#BDFFD5" scale="none"/>
</rule>

<rule e="way" k="leisure" v="pitch" closed="yes">
  <area fill="{$pitch-color-grass}" stroke="#000000" stroke-width="0.2" scale="none"/>
  <rule e="way" k="surface" v="grass|artificial_turf" >
    <area fill="{$pitch-color-grass}" stroke="#000000" stroke-width="0.2" scale="none"/>
  </rule>
  <rule e="way" k="surface" v="clay|tartan|carpet" >
    <area fill="{$pitch-color-clay}" stroke="#000000" stroke-width="0.2" scale="none"/>
  </rule>
  <rule e="way" k="surface" v="sand" >
    <area fill="{$pitch-color-sand}" stroke="#000000" stroke-width="0.2" scale="none"/>
  </rule>
  <rule e="way" k="surface" v="snow" >
    <area fill="{$pitch-color-snow}" stroke="#000000" stroke-width="0.2" scale="none"/>
  </rule>
  <rule e="way" k="surface" v="~" >
    <area fill="{$pitch-color-grass}" stroke="#000000" stroke-width="0.2" scale="none"/>
  </rule>
</rule>

<rule e="way" k="leisure" v="swimming_pool" closed="yes">
    <rule e="way" k="location" v="~|outdoor" closed="yes">
      <area fill="#66B2FF" stroke="#000000" stroke-width="0.2" scale="none"/>
    </rule>
</rule>

<rule e="way" k="tourism" v="camp_site" closed="yes">
    <area fill="#7BFF8B" stroke="#000000" stroke-width="0.2" scale="none"/>
    <rule e="way" k="*" v="*" zoom-min="16">
        <caption k="name" font-style="italic" font-family="serif" font-size="14" fill="#000000" stroke="#FFFFFF" stroke-width="1.7" />
    </rule>
</rule>

</xsl:template>
</xsl:stylesheet>