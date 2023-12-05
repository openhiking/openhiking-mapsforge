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
<rule cat="hiking_routes" e="node" k="{$symbol-tag}" v="*" >
	<rule  e="node" k="{$symbol-level-tag}" v="major" zoom-min="13">
		<xsl:call-template name="hiking-symbols-special-rules"/>
	</rule>
	<rule  e="node" k="{$symbol-level-tag}" v="~" zoom-min="15">
		<xsl:call-template name="hiking-symbols-special-rules"/>	
	</rule>	
</rule>	
</xsl:template>

<xsl:template name="hiking-symbols-special-rules">
	<rule e="node" k="{$symbol-tag}" v="ro:vt" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/ro-vt.svg" symbol-width="{$sw-hiking2-z14}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="ro:vt" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/ro-vt.svg" symbol-width="{$sw-hiking2-z16}" priority="{$pr-hiking-symbols}"/>
	</rule>
</xsl:template>

</xsl:stylesheet>