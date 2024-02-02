<?xml-stylesheet type="text/xsl"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<!-- 
# OpenHikingMap
#
# Specific hiking symbols
#
# Copyright (c) 2022-2023 OpenHiking contributors
# SPDX-License-Identifier: GPL-3.0-only
-->


<xsl:template name="points-hiking-symbols-special">

<rule cat="hiking_routes" e="node" k="{$symbol-tag}_3" v="*" >
	<rule  e="node" k="{$symbol-level-tag}" v="major" zoom-min="13">
		<xsl:call-template name="trail-symbol-special-3">
			<xsl:with-param name="key" select="concat($symbol-tag,'_3')" />
			<xsl:with-param name="variant" select="'-3'" />
		</xsl:call-template>
	</rule>
	<rule  e="node" k="{$symbol-level-tag}" v="~" zoom-min="15">
		<xsl:call-template name="trail-symbol-special-3">
			<xsl:with-param name="key" select="concat($symbol-tag,'_3')" />
			<xsl:with-param name="variant" select="'-3'" />
		</xsl:call-template>	
	</rule>	
</rule>	

<rule cat="hiking_routes" e="node" k="{$symbol-tag}_2" v="*" >
	<rule  e="node" k="{$symbol-level-tag}" v="major" zoom-min="13">
		<xsl:call-template name="trail-symbol-special-3">
			<xsl:with-param name="key" select="concat($symbol-tag,'_2')" />
			<xsl:with-param name="variant" select="'-2'" />
		</xsl:call-template>
	</rule>
	<rule  e="node" k="{$symbol-level-tag}" v="~" zoom-min="15">
		<xsl:call-template name="trail-symbol-special-3">
			<xsl:with-param name="key" select="concat($symbol-tag,'_2')" />
			<xsl:with-param name="variant" select="'-2'" />
		</xsl:call-template>	
	</rule>	
</rule>

<rule cat="hiking_routes" e="node" k="{$symbol-tag}" v="*" >
	<rule  e="node" k="{$symbol-level-tag}" v="major" zoom-min="13">
		<xsl:call-template name="trail-symbol-special-3">
			<xsl:with-param name="key" select="$symbol-tag" />
			<xsl:with-param name="variant" select="''" />
		</xsl:call-template>
	</rule>
	<rule  e="node" k="{$symbol-level-tag}" v="~" zoom-min="15">
		<xsl:call-template name="trail-symbol-special-3">
			<xsl:with-param name="key" select="$symbol-tag" />
			<xsl:with-param name="variant" select="''" />
		</xsl:call-template>	
	</rule>	
</rule>
</xsl:template>

<xsl:template name="trail-symbol-special-3">
<xsl:param name="key" />
<xsl:param name="variant" />
	<rule e="node" k="{$key}" v="ro:vt" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/ro-vt{$variant}.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols}" display="always"/>
	</rule>
	<rule e="node" k="{$key}" v="ro:vt" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/ro-vt{$variant}.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols}" display="always"/>
	</rule>
</xsl:template>

</xsl:stylesheet>