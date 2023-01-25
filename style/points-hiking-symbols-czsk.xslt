<?xml-stylesheet type="text/xsl"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

<!-- 
# OpenHikingMap
#
# Hiking symbols: Czechia and Slovakia
#
# Copyright (c) 2022-2023 OpenHiking contributors
# SPDX-License-Identifier: GPL-3.0-only
-->

<xsl:variable name="ns-symbol-czsk">czsk:</xsl:variable>

<xsl:template name="points-hiking-symbols-czsk">

<rule cat="hiking_symbols" e="node" k="{$symbol-tag}" v="*" >
	<rule  e="node" k="{$symbol-level-tag}" v="major" zoom-min="13">
		<xsl:call-template name="hiking-symbol-czsk-rules-1">
			<xsl:with-param name="color" select="'blue'" />
			<xsl:with-param name="code" select="'k'" />
		</xsl:call-template>
		<xsl:call-template name="hiking-symbol-czsk-rules-1">
			<xsl:with-param name="color" select="'red'" />
			<xsl:with-param name="code" select="'p'" />			
		</xsl:call-template>
		<xsl:call-template name="hiking-symbol-czsk-rules-1">
			<xsl:with-param name="color" select="'green'" />
			<xsl:with-param name="code" select="'z'" />			
		</xsl:call-template>
		<xsl:call-template name="hiking-symbol-czsk-rules-1">
			<xsl:with-param name="color" select="'yellow'" />
			<xsl:with-param name="code" select="'s'" />			
		</xsl:call-template>		
	</rule>
	<rule  e="node" k="{$symbol-level-tag}" v="~" zoom-min="14">
		<xsl:call-template name="hiking-symbol-czsk-rules-1">
			<xsl:with-param name="color" select="'blue'" />
			<xsl:with-param name="code" select="'k'" />
		</xsl:call-template>
		<xsl:call-template name="hiking-symbol-czsk-rules-1">
			<xsl:with-param name="color" select="'red'" />
			<xsl:with-param name="code" select="'p'" />			
		</xsl:call-template>
		<xsl:call-template name="hiking-symbol-czsk-rules-1">
			<xsl:with-param name="color" select="'green'" />
			<xsl:with-param name="code" select="'z'" />			
		</xsl:call-template>
		<xsl:call-template name="hiking-symbol-czsk-rules-1">
			<xsl:with-param name="color" select="'yellow'" />
			<xsl:with-param name="code" select="'s'" />			
		</xsl:call-template>
	</rule>
	
</rule>	
</xsl:template>


<xsl:template name="hiking-symbol-czsk-rules-1">
<xsl:param name="color" />
<xsl:param name="code" />
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-czsk}{$color}:major" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/hu-{$code}.svg" symbol-width="{$sw-hiking2-z14}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-hu}{$color}:major" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/hu-{$code}.svg" symbol-width="{$sw-hiking2-z16}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-czsk}{$color}:ruin" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/hu-{$code}l.svg" symbol-width="{$sw-hiking2-z14}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-hu}{$color}:ruin" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/hu-{$code}l.svg" symbol-width="{$sw-hiking2-z16}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-czsk}{$color}:peak" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/hu-{$code}3.svg" symbol-width="{$sw-hiking2-z14}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-hu}{$color}:peak" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/hu-{$code}3.svg" symbol-width="{$sw-hiking2-z16}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-czsk}{$color}:roundtrip" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/hu-{$code}q.svg" symbol-width="{$sw-hiking2-z14}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-hu}{$color}:roundtrip" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/hu-{$code}q.svg" symbol-width="{$sw-hiking2-z16}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-czsk}{$color}:education" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/hu-{$code}atlv.svg" symbol-width="{$sw-hiking2-z14}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-hu}{$color}:education" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/hu-{$code}atlv.svg" symbol-width="{$sw-hiking2-z16}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-czsk}{$color}:learning" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/hu-{$code}atlv.svg" symbol-width="{$sw-hiking2-z14}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-hu}{$color}:learning" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/hu-{$code}atlv.svg" symbol-width="{$sw-hiking2-z16}" priority="{$pr-hiking-symbols}"/>
	</rule>
</xsl:template>


<xsl:template name="hiking-symbol-czsk-rules">
<xsl:param name="color" />
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-czsk}{$color}:major" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/hu-{$color}.svg" symbol-width="{$sw-hiking2-z14}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-hu}{$color}" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/hu-{$color}.svg" symbol-width="{$sw-hiking2-z16}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-hu}{$color}+" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/hu-{$color}+.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-hu}{$color}+" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/hu-{$color}+.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-hu}{$color}3" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/hu-{$color}3.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-hu}{$color}3" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/hu-{$color}3.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-hu}{$color}4" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/hu-{$color}4.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-hu}{$color}4" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/hu-{$color}4.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-hu}{$color}q" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/hu-{$color}q.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-hu}{$color}q" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/hu-{$color}q.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-hu}{$color}b" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/hu-{$color}b.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-hu}{$color}b" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/hu-{$color}b.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-hu}{$color}l" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/hu-{$color}l.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-hu}{$color}l" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/hu-{$color}l.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-hu}{$color}c" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/hu-{$color}c.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols-minor}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-hu}{$color}c" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/hu-{$color}c.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols-minor}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-hu}{$color}t" zoom-min="12" zoom-max="15" >
		<symbol src="{$hikingSymbolPath}/hu-{$color}t.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols-minor}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-hu}{$color}t" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/hu-{$color}t.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols-minor}"/>
	</rule>

</xsl:template>




</xsl:stylesheet>