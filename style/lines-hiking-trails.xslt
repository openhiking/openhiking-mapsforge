<?xml-stylesheet type="text/xsl"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<!-- 
# OpenHikingMap
#
# Hiking trail highlightd
#
# Copyright (c) 2022-2023 OpenHiking contributors
# SPDX-License-Identifier: GPL-3.0-only
-->


<xsl:template name="lines-hiking-trails">
<xsl:variable name="lc-trail-blue">#0094F8</xsl:variable>
<xsl:variable name="lc-trail-red">#F80000</xsl:variable>
<xsl:variable name="lc-trail-green">#38C820</xsl:variable>
<xsl:variable name="lc-trail-yellow">#F8C800</xsl:variable>
<xsl:variable name="lc-trail-purple">#be40be</xsl:variable>
<xsl:variable name="lc-trail-orange">#ffa100</xsl:variable>
<xsl:variable name="lc-trail-black">#626262</xsl:variable>

<rule cat="colored_hiking" e="way" k="highway" v="*" zoom-min="12">
	<rule  e="way" k="trail_color" v="blue" >
   		<xsl:call-template name="trail-highlight-rules-unpaved">
        	<xsl:with-param name="color" select="$lc-trail-blue" />
    	</xsl:call-template>
   		<xsl:call-template name="trail-highlight-rules-paved">
        	<xsl:with-param name="color" select="$lc-trail-blue" />
    	</xsl:call-template>
	</rule>
	<rule  e="way" k="trail_color" v="red" >
   		<xsl:call-template name="trail-highlight-rules-unpaved">
        	<xsl:with-param name="color" select="$lc-trail-red" />
    	</xsl:call-template>
   		<xsl:call-template name="trail-highlight-rules-paved">
        	<xsl:with-param name="color" select="$lc-trail-red" />
    	</xsl:call-template>
	</rule>
	<rule  e="way" k="trail_color" v="green" >
   		<xsl:call-template name="trail-highlight-rules-unpaved">
        	<xsl:with-param name="color" select="$lc-trail-green" />
    	</xsl:call-template>
   		<xsl:call-template name="trail-highlight-rules-paved">
        	<xsl:with-param name="color" select="$lc-trail-green" />
    	</xsl:call-template>
	</rule>
	<rule  e="way" k="trail_color" v="yellow" >
   		<xsl:call-template name="trail-highlight-rules-unpaved">
        	<xsl:with-param name="color" select="$lc-trail-yellow" />
    	</xsl:call-template>
   		<xsl:call-template name="trail-highlight-rules-paved">
        	<xsl:with-param name="color" select="$lc-trail-yellow" />
    	</xsl:call-template>
	</rule>
	<rule  e="way" k="trail_color" v="purple" >
   		<xsl:call-template name="trail-highlight-rules-unpaved">
        	<xsl:with-param name="color" select="$lc-trail-purple" />
    	</xsl:call-template>
   		<xsl:call-template name="trail-highlight-rules-paved">
        	<xsl:with-param name="color" select="$lc-trail-purple" />
    	</xsl:call-template>
	</rule>
	<rule  e="way" k="trail_color" v="orange" >
   		<xsl:call-template name="trail-highlight-rules-unpaved">
        	<xsl:with-param name="color" select="$lc-trail-orange" />
    	</xsl:call-template>
   		<xsl:call-template name="trail-highlight-rules-paved">
        	<xsl:with-param name="color" select="$lc-trail-orange" />
    	</xsl:call-template>
	</rule>
	<rule  e="way" k="trail_color" v="black" >
   		<xsl:call-template name="trail-highlight-rules-unpaved">
        	<xsl:with-param name="color" select="$lc-trail-black" />
    	</xsl:call-template>
   		<xsl:call-template name="trail-highlight-rules-paved">
        	<xsl:with-param name="color" select="$lc-trail-black" />
    	</xsl:call-template>
	</rule>
	<rule  e="way" k="trail_color" v="default" >
   		<xsl:call-template name="trail-highlight-rules-unpaved">
        	<xsl:with-param name="color" select="$lc-trail-red" />
    	</xsl:call-template>
   		<xsl:call-template name="trail-highlight-rules-paved">
        	<xsl:with-param name="color" select="$lc-trail-red" />
    	</xsl:call-template>
	</rule>
</rule>

<rule cat="colored_hiking" e="way" k="route" v="ferry" >
	<rule  e="way" k="trail_color" v="blue" >
   		<xsl:call-template name="trail-highlight-rules-ferry">
        	<xsl:with-param name="color" select="$lc-trail-blue" />
    	</xsl:call-template>
	</rule>
	<rule  e="way" k="trail_color" v="red" >
   		<xsl:call-template name="trail-highlight-rules-ferry">
        	<xsl:with-param name="color" select="$lc-trail-red" />
    	</xsl:call-template>
	</rule>
	<rule  e="way" k="trail_color" v="green" >
   		<xsl:call-template name="trail-highlight-rules-ferry">
        	<xsl:with-param name="color" select="$lc-trail-green" />
    	</xsl:call-template>
	</rule>
	<rule  e="way" k="trail_color" v="yellow" >
   		<xsl:call-template name="trail-highlight-rules-ferry">
        	<xsl:with-param name="color" select="$lc-trail-yellow" />
    	</xsl:call-template>
	</rule>
	<rule  e="way" k="trail_color" v="purple" >
   		<xsl:call-template name="trail-highlight-rules-ferry">
        	<xsl:with-param name="color" select="$lc-trail-purple" />
    	</xsl:call-template>
	</rule>
	<rule  e="way" k="trail_color" v="orange" >
   		<xsl:call-template name="trail-highlight-rules-ferry">
        	<xsl:with-param name="color" select="$lc-trail-orange" />
    	</xsl:call-template>
	</rule>
	<rule  e="way" k="trail_color" v="black" >
   		<xsl:call-template name="trail-highlight-rules-ferry">
        	<xsl:with-param name="color" select="$lc-trail-black" />
    	</xsl:call-template>
	</rule>
</rule>


</xsl:template>



</xsl:stylesheet>