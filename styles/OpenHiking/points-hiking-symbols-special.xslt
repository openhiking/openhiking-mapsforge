<?xml-stylesheet type="text/xsl"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<!-- 
# OpenHikingMap
#
# Specific hiking symbols
#
# Copyright (c) 2022-2025 OpenHiking contributors
# SPDX-License-Identifier: GPL-3.0-only
-->


<xsl:template name="points-hiking-symbols-special">

<rule cat="hiking_routes" e="node" k="{$symbol-tag}_3" v="*" >
	<xsl:call-template name="trail-symbol-special-3">
		<xsl:with-param name="key" select="concat($symbol-tag,'_3')" />
		<xsl:with-param name="variant" select="'-3'" />
	</xsl:call-template>	
</rule>	

<rule cat="hiking_routes" e="node" k="{$symbol-tag}_2" v="*" >
	<xsl:call-template name="trail-symbol-special-3">
		<xsl:with-param name="key" select="concat($symbol-tag,'_2')" />
		<xsl:with-param name="variant" select="'-2'" />
	</xsl:call-template>	
</rule>

<rule cat="hiking_routes" e="node" k="{$symbol-tag}" v="*" >
	<xsl:call-template name="trail-symbol-special-3">
		<xsl:with-param name="key" select="$symbol-tag" />
		<xsl:with-param name="variant" select="''" />
	</xsl:call-template>
</rule>
</xsl:template>

<xsl:template name="trail-symbol-special-3">
<xsl:param name="key" />
<xsl:param name="variant" />
	<xsl:call-template name="render-trail-symbol">
		<xsl:with-param name="key" select="$key" />
		<xsl:with-param name="code" select="'ro:vt'" />
		<xsl:with-param name="icon" select="'ro-vt'" />
		<xsl:with-param name="symbol_width" select="$sw-hiking-z14"/>
		<xsl:with-param name="symbol_width2" select="$sw-hiking-z16"/>
		<xsl:with-param name="priority" select="$pr-hiking-symbols"/>	
		<xsl:with-param name="variant" select="$variant" />
	</xsl:call-template>
</xsl:template>

</xsl:stylesheet>