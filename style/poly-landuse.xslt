<?xml-stylesheet type="text/xsl"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<!-- 
# OpenHikingMap
#
# Landuse polygons
#
# Copyright (c) 2022-2023 OpenHiking contributors
# SPDX-License-Identifier: GPL-3.0-only
-->


<xsl:template name="poly-landuse">

<rule e="way" k="natural" v="sea">
  <area fill="#8CC5FF"/>
</rule>

<rule e="way" k="natural" v="land|nosea">
  <area fill="#FDFEEE"/>
</rule>

<!-- DO 3-->
<rule e="way" k="landuse" v="field|farm|farmland">
  <area fill="#FFFFE6"/>
</rule>

<!-- DO 4-->
<rule e="way" k="landuse" v="residential">
  <area fill="#FADEA5" stroke="#000000" stroke-width="0.2" scale="none" />   
</rule>
<rule e="way" k="landuse" v="garages">
  <area fill="#FADEA5" stroke="#000000" stroke-width="0.2" scale="none" />   
</rule>

<rule e="way" k="landuse" v="forest"  zoom-min="10">
  <rule e="way" k="leaf_type" v="~|broadleaved" >
  <!-- 
    <area fill="#A1E976"/>
    -->
    <area fill="#aee98a"/>
  </rule>
</rule>  

<rule e="way" k="natural" v="wood"  zoom-min="10">
  <rule e="way" k="leaf_type" v="~|broadleaved" >
  <!--
    <area fill="#A1E976"/>
    -->
    <area fill="#aee98a"/>
  </rule>
</rule>  

<rule e="way" k="landuse" v="meadow">
<!--
  <area fill="#d8fca4" scale="none"/>
  -->
  <area fill="#e4fdbf" scale="none"/>
</rule>

<rule e="way" k="natural" v="grass|grassland">
  <area fill="#e4fdbf" scale="none"/>
</rule>

<rule e="way" k="tourism" v="zoo" closed="yes">
  <area fill="#CFFF9E" stroke="#1f7d18" stroke-width="1" scale="none"/>
  <rule e="way" k="*" v="*" zoom-max="14">
    <area src="file:/patterns/zoo.svg" symbol-height="20"/>
  </rule>
  <rule e="way" k="*" v="*" zoom-min="15">
    <area src="file:/patterns/zoo.svg" symbol-height="30"/>
  </rule>  
  <rule e="way" k="*" v="*" zoom-min="16">
    <caption k="name" font-style="italic" font-family="serif" font-size="12" fill="#000000" stroke="#FFFFFF" stroke-width="1.7" />
  </rule>
</rule>


<!-- DO 5-->
<rule e="way" k="landuse" v="forest"  zoom-min="10">
  <rule e="way" k="leaf_type" v="needleleaved" >
    <area fill="#83E36E"/>
  </rule>
</rule>  

<rule e="way" k="natural" v="wood"  zoom-min="10">
  <rule e="way" k="leaf_type" v="needleleaved" >
    <area fill="#83E36E"/>
  </rule>
</rule>  


<rule e="way" k="natural" v="beach">
  <area fill="#F8F898" scale="none"/>
</rule>

<rule e="way" k="natural" v="glacier">
  <area fill="#b1fefc" scale="none"/>
</rule>

<rule e="way" k="landuse" v="orchard">
    <area fill="#F8FCC8"/>
    <rule e="way" k="*" v="*" zoom-max="14">
      <area src="file:/patterns/orchard.svg" symbol-height="16"/>
    </rule>
    <rule e="way" k="*" v="*" zoom-min="15">
      <area src="file:/patterns/orchard.svg" symbol-height="20"/>
  </rule>
</rule>


<rule  e="way" k="natural" v="scrub">
  <area fill="#e2fbac" scale="none" />   
  <rule e="any" k="*" v="*">
    <rule e="way" k="*" v="*" zoom-max="14">
      <area src="file:/patterns/scrub.svg" symbol-height="28"/>
    </rule>
    <rule e="way" k="*" v="*" zoom-min="15">
      <area src="file:/patterns/scrub.svg" symbol-height="42"/>
    </rule>
  </rule>
</rule>

<rule e="way" k="natural" v="sand">
  <area fill="#F8F898" scale="none"/>
</rule>
<!-- 
<rule e="way" k="man_made" v="clearcut" zoom-min="12">
  <area fill="#D8FCB0" scale="none"/>
</rule>
-->
<rule e="way" k="landuse" v="farmyard">
  <area fill="#D1DAB2"/>
</rule>

<rule e="way" k="landuse" v="vineyard">
  <area fill="#D8FCB0"/>
  <rule e="way" k="*" v="*" zoom-max="14">
    <area src="file:/patterns/vineyard.svg" symbol-height="20"/>
  </rule>
  <rule e="way" k="*" v="*" zoom-min="15">
    <area src="file:/patterns/vineyard.svg" symbol-height="30"/>
  </rule>
</rule>

<rule e="way" k="landuse" v="allotments">
  <area fill="#80FFF8C5" />
</rule>

<rule  e="way" k="natural" v="heath">
    <area fill="#eef9a8" scale="none"/>
</rule>

<rule  e="way" k="natural" v="fell">
    <area fill="#ecf6e2" scale="none"/>
</rule>


<rule  e="way" k="natural" v="scree">
  <area fill="#ebedeb" scale="none"/>
  <rule e="way" k="*" v="*" zoom-max="14">
    <area src="file:/patterns/scree.svg" symbol-height="14"/>
  </rule>
  <rule e="way" k="*" v="*" zoom-min="15">
    <area src="file:/patterns/scree.svg" symbol-height="18"/>
  </rule>
</rule>

<rule  e="way" k="natural" v="shingle">
  <area fill="#E0E4E0" scale="none"/>
  <rule e="way" k="*" v="*" zoom-max="12">
    <area src="file:/patterns/shingle.svg" symbol-height="14"/>
  </rule>
  <rule e="way" k="*" v="*" zoom-min="13" zoom-max="14">
    <area src="file:/patterns/shingle.svg" symbol-height="18"/>
  </rule>
  <rule e="way" k="*" v="*" zoom-min="15">
    <area src="file:/patterns/shingle.svg" symbol-height="25"/>
  </rule>
</rule>


<rule  e="way" k="natural" v="bare_rock">
  <area fill="#E0E4E0" scale="none"/>
  <rule e="way" k="*" v="*" zoom-max="15">
    <area src="file:/patterns/bare_rock.svg" symbol-height="18"/>
  </rule>
  <rule e="way" k="*" v="*" zoom-min="16">
    <area src="file:/patterns/bare_rock.svg" symbol-height="32"/>
  </rule>
</rule>

<rule e="way" k="natural" v="mud">
  <area fill="#AEAE97" scale="none"/>
</rule>


<rule e="way" k="landuse" v="quarry">
  <area fill="#E0E4E0"/>
  <rule e="way" k="*" v="*" zoom-max="15">
    <area src="file:/patterns/quarry.svg" symbol-height="32"/>
  </rule>
  <rule e="way" k="*" v="*" zoom-min="16">
    <area src="file:/patterns/quarry.svg" symbol-height="48"/>
  </rule>
</rule>

  
</xsl:template>
</xsl:stylesheet>