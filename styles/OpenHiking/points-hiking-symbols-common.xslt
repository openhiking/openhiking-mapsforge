<?xml-stylesheet type="text/xsl"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<!-- 
# OpenHikingMap
#
# Hiking symbols: Rendering
#
# Copyright (c) 2022-2025 OpenHiking contributors
# SPDX-License-Identifier: GPL-3.0-only
-->

<xsl:template name="render-trail-symbol">
<xsl:param name="key" />
<xsl:param name="code"/>
<xsl:param name="icon"/>
<xsl:param name="symbol_width"/>
<xsl:param name="symbol_width2"/>
<xsl:param name="priority"/>
<xsl:param name="variant" />
	<rule e="node" k="{$key}" v="{$code}">
		<rule  e="node" k="{$symbol-level-tag}" v="major" zoom-min="13" zoom-max="14">
			<symbol src="{$hikingSymbolPath}/{$icon}{$variant}.svg" symbol-width="{$symbol_width}" priority="{$priority}" display="always"/>
		</rule>
		<rule  e="node" k="*" v="*" zoom-min="15" zoom-max="15">
			<symbol src="{$hikingSymbolPath}/{$icon}{$variant}.svg" symbol-width="{$symbol_width}" priority="{$priority}" display="always"/>
		</rule>
		<rule  e="node" k="*" v="*" zoom-min="16">
			<symbol src="{$hikingSymbolPath}/{$icon}{$variant}.svg" symbol-width="{$symbol_width2}" priority="{$priority}" display="always"/>
		</rule>
	</rule>
</xsl:template>


</xsl:stylesheet>