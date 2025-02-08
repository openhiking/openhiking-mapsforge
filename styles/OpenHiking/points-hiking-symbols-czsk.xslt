<?xml-stylesheet type="text/xsl"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

<!-- 
# OpenHikingMap
#
# Hiking symbols: Czechia and Slovakia
#
# Copyright (c) 2022-2025 OpenHiking contributors
# SPDX-License-Identifier: GPL-3.0-only
-->

<xsl:variable name="ns-symbol-czsk">czsk:</xsl:variable>

<xsl:template name="points-hiking-symbols-czsk">

<rule cat="hiking_routes" e="node" k="{$symbol-tag}_3" v="*" >
	<xsl:call-template name="trail-symbol-czsk-allcolor-3">
		<xsl:with-param name="key" select="concat($symbol-tag,'_3')" />
		<xsl:with-param name="variant" select="'-3'" />
	</xsl:call-template>
</rule>	

<rule cat="hiking_routes" e="node" k="{$symbol-tag}_2" v="*" >
	<xsl:call-template name="trail-symbol-czsk-allcolor-3">
		<xsl:with-param name="key" select="concat($symbol-tag,'_2')" />
		<xsl:with-param name="variant" select="'-2'" />
	</xsl:call-template>
</rule>	

<rule cat="hiking_routes" e="node" k="{$symbol-tag}" v="*" >
	<xsl:call-template name="trail-symbol-czsk-allcolor-3">
		<xsl:with-param name="key" select="$symbol-tag" />
		<xsl:with-param name="variant" select="''" />
	</xsl:call-template>
	<xsl:call-template name="trail-symbol-czsk-allcolor-1">
		<xsl:with-param name="key" select="$symbol-tag" />
		<xsl:with-param name="variant" select="''" />
	</xsl:call-template>
	<xsl:call-template name="trail-symbol-czsk-roundtrip-allcolor">
		<xsl:with-param name="key" select="$symbol-tag" />
		<xsl:with-param name="variant" select="''" />
	</xsl:call-template>
</rule>	
</xsl:template>


<xsl:template name="trail-symbol-czsk-allcolor-3">
<xsl:param name="key" />
<xsl:param name="variant" />
	<xsl:call-template name="trail-symbol-czsk-3">
			<xsl:with-param name="key" select="$key" />
			<xsl:with-param name="variant" select="$variant" />
			<xsl:with-param name="color" select="'red'" />
		</xsl:call-template>
		<xsl:call-template name="trail-symbol-czsk-3">
			<xsl:with-param name="key" select="$key" />
			<xsl:with-param name="variant" select="$variant" />
			<xsl:with-param name="color" select="'blue'" />
		</xsl:call-template>
		<xsl:call-template name="trail-symbol-czsk-3">
			<xsl:with-param name="key" select="$key" />
			<xsl:with-param name="variant" select="$variant" />
			<xsl:with-param name="color" select="'green'" />
		</xsl:call-template>
		<xsl:call-template name="trail-symbol-czsk-3">
			<xsl:with-param name="key" select="$key" />
			<xsl:with-param name="variant" select="$variant" />
			<xsl:with-param name="color" select="'yellow'" />
		</xsl:call-template>
</xsl:template>

<xsl:template name="trail-symbol-czsk-allcolor-1">
<xsl:param name="key" />
<xsl:param name="variant" />
	<xsl:call-template name="trail-symbol-czsk-1">
			<xsl:with-param name="key" select="$key" />
			<xsl:with-param name="variant" select="$variant" />
			<xsl:with-param name="color" select="'red'" />
		</xsl:call-template>
		<xsl:call-template name="trail-symbol-czsk-1">
			<xsl:with-param name="key" select="$key" />
			<xsl:with-param name="variant" select="$variant" />
			<xsl:with-param name="color" select="'blue'" />
		</xsl:call-template>
		<xsl:call-template name="trail-symbol-czsk-1">
			<xsl:with-param name="key" select="$key" />
			<xsl:with-param name="variant" select="$variant" />
			<xsl:with-param name="color" select="'green'" />
		</xsl:call-template>
		<xsl:call-template name="trail-symbol-czsk-1">
			<xsl:with-param name="key" select="$key" />
			<xsl:with-param name="variant" select="$variant" />
			<xsl:with-param name="color" select="'yellow'" />
		</xsl:call-template>
</xsl:template>


<xsl:template name="trail-symbol-czsk-3">
<xsl:param name="key" />
<xsl:param name="variant" />
<xsl:param name="color" />
	<xsl:call-template name="render-trail-symbol">
		<xsl:with-param name="key" select="$key" />
		<xsl:with-param name="code" select="concat($ns-symbol-czsk,$color,':','major')" />
		<xsl:with-param name="icon" select="concat('czsk-',$color,'-major')" />
		<xsl:with-param name="symbol_width" select="$sw-hiking-z14"/>
		<xsl:with-param name="symbol_width2" select="$sw-hiking-z16"/>
		<xsl:with-param name="priority" select="$pr-hiking-symbols"/>	
		<xsl:with-param name="variant" select="$variant" />
	</xsl:call-template>

	<xsl:call-template name="render-trail-symbol">
		<xsl:with-param name="key" select="$key" />
		<xsl:with-param name="code" select="concat($ns-symbol-czsk,$color,':','learning')" />
		<xsl:with-param name="icon" select="concat('czsk-',$color,'-learning')" />
		<xsl:with-param name="symbol_width" select="$sw-hiking-z14"/>
		<xsl:with-param name="symbol_width2" select="$sw-hiking-z16"/>
		<xsl:with-param name="priority" select="$pr-hiking-symbols"/>	
		<xsl:with-param name="variant" select="$variant" />
	</xsl:call-template>

	<xsl:call-template name="render-trail-symbol">
		<xsl:with-param name="key" select="$key" />
		<xsl:with-param name="code" select="concat($ns-symbol-czsk,$color,':','local')" />
		<xsl:with-param name="icon" select="concat('czsk-',$color,'-local')" />
		<xsl:with-param name="symbol_width" select="$sw-hiking-z14"/>
		<xsl:with-param name="symbol_width2" select="$sw-hiking-z16"/>
		<xsl:with-param name="priority" select="$pr-hiking-symbols"/>	
		<xsl:with-param name="variant" select="$variant" />
	</xsl:call-template>
</xsl:template>


<xsl:template name="trail-symbol-czsk-1">
<xsl:param name="key" />
<xsl:param name="variant" />
<xsl:param name="color" />
	<xsl:call-template name="render-trail-symbol">
		<xsl:with-param name="key" select="$key" />
		<xsl:with-param name="code" select="concat($ns-symbol-czsk,$color,':','ruin')" />
		<xsl:with-param name="icon" select="concat('czsk-',$color,'-ruin')" />
		<xsl:with-param name="symbol_width" select="$sw-hiking-z14"/>
		<xsl:with-param name="symbol_width2" select="$sw-hiking-z16"/>
		<xsl:with-param name="priority" select="$pr-hiking-symbols"/>	
		<xsl:with-param name="variant" select="$variant" />
	</xsl:call-template>
	<xsl:call-template name="render-trail-symbol">
		<xsl:with-param name="key" select="$key" />
		<xsl:with-param name="code" select="concat($ns-symbol-czsk,$color,':','peak')" />
		<xsl:with-param name="icon" select="concat('czsk-',$color,'-peak')" />
		<xsl:with-param name="symbol_width" select="$sw-hiking-z14"/>
		<xsl:with-param name="symbol_width2" select="$sw-hiking-z16"/>
		<xsl:with-param name="priority" select="$pr-hiking-symbols"/>	
		<xsl:with-param name="variant" select="$variant" />
	</xsl:call-template>
	<xsl:call-template name="render-trail-symbol">
		<xsl:with-param name="key" select="$key" />
		<xsl:with-param name="code" select="concat($ns-symbol-czsk,$color,':','spring')" />
		<xsl:with-param name="icon" select="concat('czsk-',$color,'-spring')" />
		<xsl:with-param name="symbol_width" select="$sw-hiking-z14"/>
		<xsl:with-param name="symbol_width2" select="$sw-hiking-z16"/>
		<xsl:with-param name="priority" select="$pr-hiking-symbols"/>	
		<xsl:with-param name="variant" select="$variant" />
	</xsl:call-template>
	<xsl:call-template name="render-trail-symbol">
		<xsl:with-param name="key" select="$key" />
		<xsl:with-param name="code" select="concat($ns-symbol-czsk,$color,':','interesting_object')" />
		<xsl:with-param name="icon" select="concat('czsk-',$color,'-interesting')" />
		<xsl:with-param name="symbol_width" select="$sw-hiking-z14"/>
		<xsl:with-param name="symbol_width2" select="$sw-hiking-z16"/>
		<xsl:with-param name="priority" select="$pr-hiking-symbols"/>	
		<xsl:with-param name="variant" select="$variant" />
	</xsl:call-template>
	<xsl:call-template name="render-trail-symbol">
		<xsl:with-param name="key" select="$key" />
		<xsl:with-param name="code" select="concat($ns-symbol-czsk,$color,':','education')" />
		<xsl:with-param name="icon" select="concat('czsk-',$color,'-learning')" />
		<xsl:with-param name="symbol_width" select="$sw-hiking-z14"/>
		<xsl:with-param name="symbol_width2" select="$sw-hiking-z16"/>
		<xsl:with-param name="priority" select="$pr-hiking-symbols"/>	
		<xsl:with-param name="variant" select="$variant" />
	</xsl:call-template>
</xsl:template>


<xsl:template name="trail-symbol-czsk-roundtrip-allcolor">
<xsl:param name="key" />
<xsl:param name="variant" />
	<xsl:call-template name="render-trail-symbol">
		<xsl:with-param name="key" select="$key" />
		<xsl:with-param name="code" select="concat($ns-symbol-czsk,'red',':','roundtrip')" />
		<xsl:with-param name="icon" select="'hu-pq'" />
		<xsl:with-param name="symbol_width" select="$sw-hiking-z14"/>
		<xsl:with-param name="symbol_width2" select="$sw-hiking-z16"/>
		<xsl:with-param name="priority" select="$pr-hiking-symbols"/>	
		<xsl:with-param name="variant" select="$variant" />
	</xsl:call-template>
	<xsl:call-template name="render-trail-symbol">
		<xsl:with-param name="key" select="$key" />
		<xsl:with-param name="code" select="concat($ns-symbol-czsk,'blue',':','roundtrip')" />
		<xsl:with-param name="icon" select="'hu-kq'" />
		<xsl:with-param name="symbol_width" select="$sw-hiking-z14"/>
		<xsl:with-param name="symbol_width2" select="$sw-hiking-z16"/>
		<xsl:with-param name="priority" select="$pr-hiking-symbols"/>	
		<xsl:with-param name="variant" select="$variant" />
	</xsl:call-template>
	<xsl:call-template name="render-trail-symbol">
		<xsl:with-param name="key" select="$key" />
		<xsl:with-param name="code" select="concat($ns-symbol-czsk,'green',':','roundtrip')" />
		<xsl:with-param name="icon" select="'hu-zq'" />
		<xsl:with-param name="symbol_width" select="$sw-hiking-z14"/>
		<xsl:with-param name="symbol_width2" select="$sw-hiking-z16"/>
		<xsl:with-param name="priority" select="$pr-hiking-symbols"/>	
		<xsl:with-param name="variant" select="$variant" />
	</xsl:call-template>
	<xsl:call-template name="render-trail-symbol">
		<xsl:with-param name="key" select="$key" />
		<xsl:with-param name="code" select="concat($ns-symbol-czsk,'yellow',':','roundtrip')" />
		<xsl:with-param name="icon" select="'hu-sq'" />
		<xsl:with-param name="symbol_width" select="$sw-hiking-z14"/>
		<xsl:with-param name="symbol_width2" select="$sw-hiking-z16"/>
		<xsl:with-param name="priority" select="$pr-hiking-symbols"/>	
		<xsl:with-param name="variant" select="$variant" />
	</xsl:call-template>
</xsl:template>



</xsl:stylesheet>