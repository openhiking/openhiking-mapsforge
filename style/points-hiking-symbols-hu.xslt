<?xml-stylesheet type="text/xsl"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<!-- 
# OpenHikingMap
#
# Hiking symbols: Hungary
#
# Copyright (c) 2022-2023 OpenHiking contributors
# SPDX-License-Identifier: GPL-3.0-only
-->

<xsl:template name="points-hiking-symbols-hu">
<rule cat="hiking_routes" e="node" k="{$symbol-tag}" v="*" >
	<rule  e="node" k="{$symbol-level-tag}" v="major" zoom-min="13">
		<xsl:call-template name="hiking-symbol-hu-rules">
			<xsl:with-param name="color" select="'k'" />
		</xsl:call-template>
		<xsl:call-template name="hiking-symbol-hu-rules">
			<xsl:with-param name="color" select="'p'" />
		</xsl:call-template>
		<xsl:call-template name="hiking-symbol-hu-rules">
			<xsl:with-param name="color" select="'z'" />
		</xsl:call-template>
		<xsl:call-template name="hiking-symbol-hu-rules">
			<xsl:with-param name="color" select="'s'" />
		</xsl:call-template>
		<xsl:call-template name="hiking-symbol-hu-special-rules"/>
	</rule>
	<rule  e="node" k="{$symbol-level-tag}" v="~" zoom-min="15">
		<xsl:call-template name="hiking-symbol-hu-rules">
			<xsl:with-param name="color" select="'k'" />
		</xsl:call-template>
		<xsl:call-template name="hiking-symbol-hu-rules">
			<xsl:with-param name="color" select="'p'" />
		</xsl:call-template>
		<xsl:call-template name="hiking-symbol-hu-rules">
			<xsl:with-param name="color" select="'z'" />
		</xsl:call-template>
		<xsl:call-template name="hiking-symbol-hu-rules">
			<xsl:with-param name="color" select="'s'" />
		</xsl:call-template>
		<xsl:call-template name="hiking-symbol-hu-special-rules"/>
	</rule>	
</rule>	

<rule cat="hiking_routes" e="node" k="{$ski-symbol-tag}" v="*" >
	<rule  e="node" k="{$symbol-level-tag}" v="major" zoom-min="13">
		<xsl:call-template name="hiking-symbol-hu-ski"/>
	</rule>
	<rule  e="node" k="{$symbol-level-tag}" v="~" zoom-min="15">
		<xsl:call-template name="hiking-symbol-hu-ski"/>	
	</rule>	
</rule>	

</xsl:template>


<xsl:template name="hiking-symbol-hu-rules">
<xsl:param name="color" />
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-hu}{$color}" zoom-min="12" zoom-max="15">
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

<xsl:template name="hiking-symbol-hu-special-rules">
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-hu}kpec" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/hu-kpec.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols-minor}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-hu}kpec" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/hu-kpec.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols-minor}"/>
	</rule>

	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-hu}ktmp" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/hu-ktmp.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols-minor}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-hu}ktmp" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/hu-ktmp.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols-minor}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-hu}keml" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/hu-keml.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols-minor}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-hu}keml" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/hu-keml.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols-minor}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-hu}katl" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/hu-katl.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols-minor}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-hu}katl" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/hu-katl.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols-minor}"/>
	</rule>

	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-hu}katlv" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/hu-katlv.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols-minor}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-hu}katlv" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/hu-katlv.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols-minor}"/>
	</rule>

	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-hu}t" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/hu-t.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols-minor}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-hu}t" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/hu-t.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols-minor}"/>
	</rule>

	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-hu}palp" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/hu-palp.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-hu}palp" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/hu-palp.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols}"/>
	</rule>
</xsl:template>

<xsl:template name="hiking-symbol-hu-ski">
	<rule e="node" k="{$ski-symbol-tag}" v="{$ns-symbol-hu}px" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/hu-px.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols-minor}"/>
	</rule>
	<rule e="node" k="{$ski-symbol-tag}" v="{$ns-symbol-hu}px" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/hu-px.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols-minor}"/>
	</rule>

	<rule e="node" k="{$ski-symbol-tag}" v="{$ns-symbol-hu}kx" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/hu-kx.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols-minor}"/>
	</rule>
	<rule e="node" k="{$ski-symbol-tag}" v="{$ns-symbol-hu}kx" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/hu-kx.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols-minor}"/>
	</rule>
</xsl:template>


</xsl:stylesheet>