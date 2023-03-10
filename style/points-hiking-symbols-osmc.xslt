<?xml-stylesheet type="text/xsl"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<!-- 
# OpenHikingMap
#
# Hiking symbols: OSMC
#
# Copyright (c) 2022-2023 OpenHiking contributors
# SPDX-License-Identifier: GPL-3.0-only
-->

<xsl:variable name="ns-symbol-osmc">osmc:</xsl:variable>

<xsl:template name="points-hiking-symbols-osmc">
<rule cat="hiking_symbols" e="node" k="{$symbol-tag}" v="*" >
	<rule  e="node" k="{$symbol-level-tag}" v="major" zoom-min="13">
		<xsl:call-template name="hiking-symbol-osmc-white-bg-rules">
			<xsl:with-param name="color" select="'red'" />
		</xsl:call-template>
		<xsl:call-template name="hiking-symbol-osmc-white-bg-rules">
			<xsl:with-param name="color" select="'blue'" />
		</xsl:call-template>
		<xsl:call-template name="hiking-symbol-osmc-white-bg-rules">
			<xsl:with-param name="color" select="'yellow'" />
		</xsl:call-template>
		<xsl:call-template name="hiking-symbol-osmc-red-bg-rules"/>
		<xsl:call-template name="hiking-symbol-osmc-blue-bg-rules"/>
		<xsl:call-template name="hiking-symbol-osmc-yellow-bg-rules"/>
		<xsl:call-template name="hiking-symbol-osmc-green-bg-rules"/>
		<xsl:call-template name="hiking-symbol-osmc-special-rules"/>
	</rule>
	<rule  e="node" k="{$symbol-level-tag}" v="~" zoom-min="15">
		<xsl:call-template name="hiking-symbol-osmc-white-bg-rules">
			<xsl:with-param name="color" select="'red'" />
		</xsl:call-template>
		<xsl:call-template name="hiking-symbol-osmc-white-bg-rules">
			<xsl:with-param name="color" select="'blue'" />
		</xsl:call-template>
		<xsl:call-template name="hiking-symbol-osmc-white-bg-rules">
			<xsl:with-param name="color" select="'yellow'" />
		</xsl:call-template>
		<xsl:call-template name="hiking-symbol-osmc-red-bg-rules"/>
		<xsl:call-template name="hiking-symbol-osmc-blue-bg-rules"/>
		<xsl:call-template name="hiking-symbol-osmc-yellow-bg-rules"/>
		<xsl:call-template name="hiking-symbol-osmc-green-bg-rules"/>
		<xsl:call-template name="hiking-symbol-osmc-special-rules"/>
	</rule>
	
</rule>	
</xsl:template>


<xsl:template name="hiking-symbol-osmc-white-bg-rules">
<xsl:param name="color" />
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-osmc}white:{$color}_stripe" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/osmc-white-{$color}_stripe.svg" symbol-width="{$sw-hiking-b-z14}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-osmc}white:{$color}_stripe" zoom-min="16">
		<symbol src="{$hikingSymbolPath}/osmc-white-{$color}_stripe.svg" symbol-width="{$sw-hiking-b-z16}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-osmc}white:{$color}_dot" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/osmc-white-{$color}_dot.svg" symbol-width="{$sw-hiking-b-z14}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-osmc}white:{$color}_dot" zoom-min="16">
		<symbol src="{$hikingSymbolPath}/osmc-white-{$color}_dot.svg" symbol-width="{$sw-hiking-b-z16}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-osmc}white:{$color}_cross" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/osmc-white-{$color}_cross.svg" symbol-width="{$sw-hiking-b-z14}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-osmc}white:{$color}_cross" zoom-min="16">
		<symbol src="{$hikingSymbolPath}/osmc-white-{$color}_cross.svg" symbol-width="{$sw-hiking-b-z16}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-osmc}white:{$color}_triangle" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/osmc-white-{$color}_triangle.svg" symbol-width="{$sw-hiking-s-z14}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-osmc}white:{$color}_triangle" zoom-min="16">
		<symbol src="{$hikingSymbolPath}/osmc-white-{$color}_triangle.svg" symbol-width="{$sw-hiking-s-z16}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-osmc}white:{$color}_circle" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/osmc-white-{$color}_circle.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-osmc}white:{$color}_circle" zoom-min="16">
		<symbol src="{$hikingSymbolPath}/osmc-white-{$color}_circle.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-osmc}white:{$color}_corner" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/osmc-white-{$color}_corner.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-osmc}white:{$color}_corner" zoom-min="16">
		<symbol src="{$hikingSymbolPath}/osmc-white-{$color}_corner.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-osmc}white:{$color}_lower" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/osmc-white-{$color}_lower.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-osmc}white:{$color}_lower" zoom-min="16">
		<symbol src="{$hikingSymbolPath}/osmc-white-{$color}_lower.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols}"/>
	</rule>

</xsl:template>

<xsl:template name="hiking-symbol-osmc-red-bg-rules">
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-osmc}red:white_bar" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/osmc-red-white_bar.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-osmc}red:white_bar" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/osmc-red-white_bar.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-osmc}red:white_stripe" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/osmc-red-white_stripe.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-osmc}red:white_stripe" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/osmc-red-white_stripe.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-osmc}red:white_lower" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/osmc-red-white_lower.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-osmc}red:white_lower" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/osmc-red-white_lower.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-osmc}red:blue_lower" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/osmc-red-blue_lower.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-osmc}red:blue_lower" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/osmc-red-blue_lower.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-osmc}red:green_lower" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/osmc-red-green_lower.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-osmc}red:green_lower" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/osmc-red-green_lower.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-osmc}red:yellow_lower" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/osmc-red-yellow_lower.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-osmc}red:yellow_lower" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/osmc-red-yellow_lower.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols}"/>
	</rule>

</xsl:template>

<xsl:template name="hiking-symbol-osmc-blue-bg-rules">
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-osmc}blue:white_bar" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/osmc-blue-white_bar.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-osmc}blue:white_bar" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/osmc-blue-white_bar.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-osmc}blue:white_stripe" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/osmc-blue-white_stripe.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-osmc}blue:white_stripe" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/osmc-blue-white_stripe.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-osmc}blue:white_lower" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/osmc-blue-white_lower.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-osmc}blue:white_lower" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/osmc-blue-white_lower.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-osmc}blue:yellow_lower" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/osmc-blue-yellow_lower.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-osmc}blue:yellow_lower" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/osmc-blue-yellow_lower.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols}"/>
	</rule>
</xsl:template>

<xsl:template name="hiking-symbol-osmc-yellow-bg-rules">
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-osmc}yellow:white_stripe" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/osmc-yellow-white_stripe.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-osmc}yellow:white_stripe" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/osmc-yellow-white_stripe.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-osmc}yellow:white_bar" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/osmc-yellow-white_bar.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-osmc}yellow:white_bar" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/osmc-yellow-white_bar.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-osmc}yellow:white_lower" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/osmc-yellow-white_lower.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-osmc}yellow:white_lower" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/osmc-yellow-white_lower.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-osmc}yellow:red_lower" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/osmc-yellow-red_lower.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-osmc}yellow:red_lower" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/osmc-yellow-red_lower.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-osmc}yellow:blue_lower" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/osmc-yellow-blue_lower.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-osmc}yellow:blue_lower" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/osmc-yellow-blue_lower.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-osmc}yellow:green_lower" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/osmc-yellow-green_lower.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-osmc}yellow:green_lower" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/osmc-yellow-green_lower.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols}"/>
	</rule>
</xsl:template>


<xsl:template name="hiking-symbol-osmc-green-bg-rules">
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-osmc}green:white_bar" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/osmc-green-white_bar.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-osmc}green:white_bar" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/osmc-green-white_bar.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols}"/>
	</rule>
</xsl:template>


<xsl:template name="hiking-symbol-osmc-special-rules">
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-osmc}white:black_bar" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/osmc-white-black_bar.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-osmc}white:black_bar" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/osmc-white-black_bar.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-osmc}white:green_corner" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/osmc-white-green_corner.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-osmc}white:green_corner" zoom-min="16">
		<symbol src="{$hikingSymbolPath}/osmc-white-green_corner.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols}"/>
	</rule>


</xsl:template>


</xsl:stylesheet>