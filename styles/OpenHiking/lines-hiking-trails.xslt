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

<rule cat="hiking_routes" e="way" k="highway" v="*" zoom-min="11">
	<rule  e="way" k="trail_color" v="blue" >
   		<xsl:call-template name="trail-highlight-rules">
        	<xsl:with-param name="color" select="$lc-trail-blue" />
    	</xsl:call-template>
	</rule>
	<rule  e="way" k="trail_color" v="red" >
   		<xsl:call-template name="trail-highlight-rules">
        	<xsl:with-param name="color" select="$lc-trail-red" />
    	</xsl:call-template>
	</rule>
	<rule  e="way" k="trail_color" v="green" >
   		<xsl:call-template name="trail-highlight-rules">
        	<xsl:with-param name="color" select="$lc-trail-green" />
    	</xsl:call-template>
	</rule>
	<rule  e="way" k="trail_color" v="yellow" >
   		<xsl:call-template name="trail-highlight-rules">
        	<xsl:with-param name="color" select="$lc-trail-yellow" />
    	</xsl:call-template>
	</rule>
	<rule  e="way" k="trail_color" v="purple" >
   		<xsl:call-template name="trail-highlight-rules">
        	<xsl:with-param name="color" select="$lc-trail-purple" />
    	</xsl:call-template>
	</rule>
	<rule  e="way" k="trail_color" v="orange" >
   		<xsl:call-template name="trail-highlight-rules">
        	<xsl:with-param name="color" select="$lc-trail-orange" />
    	</xsl:call-template>
	</rule>
	<rule  e="way" k="trail_color" v="black" >
   		<xsl:call-template name="trail-highlight-rules">
        	<xsl:with-param name="color" select="$lc-trail-black" />
    	</xsl:call-template>
	</rule>
</rule>

<rule cat="unmarked_routes" e="way" k="highway" v="*" zoom-min="11">
	<rule  e="way" k="trail_color" v="default" >
   		<xsl:call-template name="trail-highlight-rules-unpaved">
        	<xsl:with-param name="color" select="$lc-trail-red" />
    	</xsl:call-template>
   		<xsl:call-template name="trail-highlight-rules-paved">
        	<xsl:with-param name="color" select="$lc-trail-red" />
    	</xsl:call-template>
	</rule>
</rule>

<rule cat="hiking_routes" e="way" k="route" v="ferry" >
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

<xsl:template name="trail-highlight-rules">
<xsl:param name="color" />
	<xsl:call-template name="trail-highlight-rules-unpaved">
		<xsl:with-param name="color" select="$color" />
	</xsl:call-template>
	<xsl:call-template name="trail-highlight-rules-paved">
		<xsl:with-param name="color" select="$color" />
	</xsl:call-template>
	<rule cat="seasonal_closure" e="way" k="{$route_condition}" v="*" >
		<xsl:call-template name="trail-highlight-rules-conditional-unpaved">
			<xsl:with-param name="color" select="$color" />
		</xsl:call-template>
	</rule>

</xsl:template>

</xsl:stylesheet>