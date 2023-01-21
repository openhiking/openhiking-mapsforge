<?xml-stylesheet type="text/xsl"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<xsl:variable name="sw-hiking-z14">14</xsl:variable>
<xsl:variable name="sw-hiking-z16">15</xsl:variable>
<xsl:variable name="sw-hiking2-z14">16</xsl:variable>
<xsl:variable name="sw-hiking2-z16">17</xsl:variable>

<xsl:variable name="symbol-tag">trail_symbol</xsl:variable>
<xsl:variable name="symbol-level-tag">trail_symbol_level</xsl:variable>
<xsl:variable name="ns-symbol-hu">hu:</xsl:variable>

<xsl:template name="points-hiking-symbols-hu">

<rule cat="hiking_symbols" e="node" k="{$symbol-tag}" v="*" >
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
	<rule  e="node" k="{$symbol-level-tag}" v="~" zoom-min="14">
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

	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-hu}px" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/hu-px.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols-minor}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-hu}px" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/hu-px.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols-minor}"/>
	</rule>

	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-hu}kx" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/hu-kx.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols-minor}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-hu}kx" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/hu-kx.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols-minor}"/>
	</rule>



	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-hu}km" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/hu-km.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-hu}km" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/hu-km.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-hu}pm" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/hu-pm.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-hu}pm" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/hu-pm.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-hu}zm" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/hu-zm.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-hu}zm" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/hu-zm.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-hu}sm" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/hu-sm.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-hu}sm" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/hu-sm.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-hu}lm" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/hu-lm.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$symbol-tag}" v="{$ns-symbol-hu}lm" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/hu-lm.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols}"/>
	</rule>


</xsl:template>


</xsl:stylesheet>