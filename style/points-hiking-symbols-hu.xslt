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
<rule cat="hiking_routes" e="node" k="{$symbol-tag}_3" v="*" >
	<rule  e="node" k="{$symbol-level-tag}" v="major" zoom-min="13">
		<xsl:call-template name="trail-symbol-hu-mtsz-allcolor-3">
			<xsl:with-param name="key" select="concat($symbol-tag,'_3')" />
			<xsl:with-param name="variant" select="'-3'" />
		</xsl:call-template>
		<xsl:call-template name="trail-symbol-hu-special-3">
			<xsl:with-param name="key" select="concat($symbol-tag,'_3')" />
			<xsl:with-param name="variant" select="'-3'" />
		</xsl:call-template>
	</rule>
	<rule  e="node" k="{$symbol-level-tag}" v="~" zoom-min="15">
		<xsl:call-template name="trail-symbol-hu-mtsz-allcolor-3">
			<xsl:with-param name="key" select="concat($symbol-tag,'_3')" />
			<xsl:with-param name="variant" select="'-3'" />
		</xsl:call-template>
		<xsl:call-template name="trail-symbol-hu-special-3">
			<xsl:with-param name="key" select="concat($symbol-tag,'_3')" />
			<xsl:with-param name="variant" select="'-3'" />
		</xsl:call-template>		
	</rule>	
</rule>	

<rule cat="hiking_routes" e="node" k="{$ski-symbol-tag}_3" v="*" >
	<rule  e="node" k="{$symbol-level-tag}" v="major" zoom-min="13">
		<xsl:call-template name="trail-symbol-hu-ski-3">
			<xsl:with-param name="key" select="concat($ski-symbol-tag,'_3')" />
			<xsl:with-param name="variant" select="'-3'" />
		</xsl:call-template>
	</rule>
	<rule  e="node" k="{$symbol-level-tag}" v="~" zoom-min="15">
		<xsl:call-template name="trail-symbol-hu-ski-3">
			<xsl:with-param name="key" select="concat($ski-symbol-tag,'_3')" />
			<xsl:with-param name="variant" select="'-3'" />
		</xsl:call-template>
	</rule>	
</rule>	

<rule cat="hiking_routes" e="node" k="{$symbol-tag}_2" v="*" >
	<rule  e="node" k="{$symbol-level-tag}" v="major" zoom-min="13">
		<xsl:call-template name="trail-symbol-hu-mtsz-allcolor-3">
			<xsl:with-param name="key" select="concat($symbol-tag,'_2')" />
			<xsl:with-param name="variant" select="'-2'" />
		</xsl:call-template>
		<xsl:call-template name="trail-symbol-hu-mtsz-allcolor-2">
			<xsl:with-param name="key" select="concat($symbol-tag,'_2')" />
			<xsl:with-param name="variant" select="'-2'" />
		</xsl:call-template>
		<xsl:call-template name="trail-symbol-hu-special-3">
			<xsl:with-param name="key" select="concat($symbol-tag,'_2')" />
			<xsl:with-param name="variant" select="'-2'" />
		</xsl:call-template>		
	</rule>
	<rule  e="node" k="{$symbol-level-tag}" v="~" zoom-min="15">
		<xsl:call-template name="trail-symbol-hu-mtsz-allcolor-3">
			<xsl:with-param name="key" select="concat($symbol-tag,'_2')" />
			<xsl:with-param name="variant" select="'-2'" />
		</xsl:call-template>
		<xsl:call-template name="trail-symbol-hu-mtsz-allcolor-2">
			<xsl:with-param name="key" select="concat($symbol-tag,'_2')" />
			<xsl:with-param name="variant" select="'-2'" />
		</xsl:call-template>
		<xsl:call-template name="trail-symbol-hu-special-3">
			<xsl:with-param name="key" select="concat($symbol-tag,'_2')" />
			<xsl:with-param name="variant" select="'-2'" />
		</xsl:call-template>		
	</rule>	
</rule>	

<rule cat="hiking_routes" e="node" k="{$ski-symbol-tag}_2" v="*" >
	<rule  e="node" k="{$symbol-level-tag}" v="major" zoom-min="13">
		<xsl:call-template name="trail-symbol-hu-ski-3">
			<xsl:with-param name="key" select="concat($ski-symbol-tag,'_2')" />
			<xsl:with-param name="variant" select="'-2'" />
		</xsl:call-template>
	</rule>
	<rule  e="node" k="{$symbol-level-tag}" v="~" zoom-min="15">
		<xsl:call-template name="trail-symbol-hu-ski-3">
			<xsl:with-param name="key" select="concat($ski-symbol-tag,'_2')" />
			<xsl:with-param name="variant" select="'-2'" />
		</xsl:call-template>
	</rule>	
</rule>	

<rule cat="hiking_routes" e="node" k="{$symbol-tag}" v="*" >
	<rule  e="node" k="{$symbol-level-tag}" v="major" zoom-min="13">
		<xsl:call-template name="trail-symbol-hu-mtsz-allcolor-3">
			<xsl:with-param name="key" select="$symbol-tag" />
			<xsl:with-param name="variant" select="''" />
		</xsl:call-template>
		<xsl:call-template name="trail-symbol-hu-mtsz-allcolor-3">
			<xsl:with-param name="key" select="$symbol-tag" />
			<xsl:with-param name="variant" select="''" />
		</xsl:call-template>
		<xsl:call-template name="trail-symbol-hu-special-3">
			<xsl:with-param name="key" select="$symbol-tag" />
			<xsl:with-param name="variant" select="''" />
		</xsl:call-template>
		<xsl:call-template name="trail-symbol-hu-special-1">
			<xsl:with-param name="key" select="$symbol-tag" />
			<xsl:with-param name="variant" select="''" />
		</xsl:call-template>		
	</rule>
	<rule  e="node" k="{$symbol-level-tag}" v="~" zoom-min="15">
		<xsl:call-template name="trail-symbol-hu-mtsz-allcolor-3">
			<xsl:with-param name="key" select="$symbol-tag" />
			<xsl:with-param name="variant" select="''" />
		</xsl:call-template>
		<xsl:call-template name="trail-symbol-hu-mtsz-allcolor-2">
			<xsl:with-param name="key" select="$symbol-tag" />
			<xsl:with-param name="variant" select="''" />
		</xsl:call-template>
		<xsl:call-template name="trail-symbol-hu-special-3">
			<xsl:with-param name="key" select="$symbol-tag" />
			<xsl:with-param name="variant" select="''" />
		</xsl:call-template>	
		<xsl:call-template name="trail-symbol-hu-special-1">
			<xsl:with-param name="key" select="$symbol-tag" />
			<xsl:with-param name="variant" select="''" />
		</xsl:call-template>		
	</rule>	
</rule>	

<rule cat="hiking_routes" e="node" k="{$ski-symbol-tag}" v="*" >
	<rule  e="node" k="{$symbol-level-tag}" v="major" zoom-min="13">
		<xsl:call-template name="trail-symbol-hu-ski-3">
			<xsl:with-param name="key" select="$ski-symbol-tag" />
			<xsl:with-param name="variant" select="''" />
		</xsl:call-template>
	</rule>
	<rule  e="node" k="{$symbol-level-tag}" v="~" zoom-min="15">
		<xsl:call-template name="trail-symbol-hu-ski-3">
			<xsl:with-param name="key" select="$ski-symbol-tag" />
			<xsl:with-param name="variant" select="''" />
		</xsl:call-template>
	</rule>	
</rule>	
</xsl:template>








<xsl:template name="trail-symbol-hu-mtsz-allcolor-3">
<xsl:param name="key" />
<xsl:param name="variant" />
	<xsl:call-template name="trail-symbol-hu-mtsz-3">
			<xsl:with-param name="key" select="$key" />
			<xsl:with-param name="variant" select="$variant" />
			<xsl:with-param name="color" select="'k'" />
		</xsl:call-template>
		<xsl:call-template name="trail-symbol-hu-mtsz-3">
			<xsl:with-param name="key" select="$key" />
			<xsl:with-param name="variant" select="$variant" />
			<xsl:with-param name="color" select="'p'" />
		</xsl:call-template>
		<xsl:call-template name="trail-symbol-hu-mtsz-3">
			<xsl:with-param name="key" select="$key" />
			<xsl:with-param name="variant" select="$variant" />
			<xsl:with-param name="color" select="'z'" />
		</xsl:call-template>
		<xsl:call-template name="trail-symbol-hu-mtsz-3">
			<xsl:with-param name="key" select="$key" />
			<xsl:with-param name="variant" select="$variant" />
			<xsl:with-param name="color" select="'s'" />
		</xsl:call-template>
</xsl:template>

<xsl:template name="trail-symbol-hu-mtsz-allcolor-2">
<xsl:param name="key" />
<xsl:param name="variant" />
	<xsl:call-template name="trail-symbol-hu-mtsz-2">
			<xsl:with-param name="key" select="$key" />
			<xsl:with-param name="variant" select="$variant" />
			<xsl:with-param name="color" select="'k'" />
		</xsl:call-template>
		<xsl:call-template name="trail-symbol-hu-mtsz-2">
			<xsl:with-param name="key" select="$key" />
			<xsl:with-param name="variant" select="$variant" />
			<xsl:with-param name="color" select="'p'" />
		</xsl:call-template>
		<xsl:call-template name="trail-symbol-hu-mtsz-2">
			<xsl:with-param name="key" select="$key" />
			<xsl:with-param name="variant" select="$variant" />
			<xsl:with-param name="color" select="'z'" />
		</xsl:call-template>
		<xsl:call-template name="trail-symbol-hu-mtsz-2">
			<xsl:with-param name="key" select="$key" />
			<xsl:with-param name="variant" select="$variant" />
			<xsl:with-param name="color" select="'s'" />
		</xsl:call-template>
</xsl:template>

<xsl:template name="trail-symbol-hu-mtsz-3">
<xsl:param name="key" />
<xsl:param name="variant" />
<xsl:param name="color" />
	<rule e="node" k="{$key}" v="{$ns-symbol-hu}{$color}" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/hu-{$color}{$variant}.svg" symbol-width="{$sw-hiking-w-z14}" priority="{$pr-hiking-symbols}" display="always"/>
	</rule>
	<rule e="node" k="{$key}" v="{$ns-symbol-hu}{$color}" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/hu-{$color}{$variant}.svg" symbol-width="{$sw-hiking-w-z16}" priority="{$pr-hiking-symbols}" display="always"/>
	</rule>
	<rule e="node" k="{$key}" v="{$ns-symbol-hu}{$color}+" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/hu-{$color}+{$variant}.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols}" display="always"/>
	</rule>
	<rule e="node" k="{$key}" v="{$ns-symbol-hu}{$color}+" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/hu-{$color}+{$variant}.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols}" display="always"/>
	</rule>
	<rule e="node" k="{$key}" v="{$ns-symbol-hu}{$color}3" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/hu-{$color}3{$variant}.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols}" display="always"/>
	</rule>
	<rule e="node" k="{$key}" v="{$ns-symbol-hu}{$color}3" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/hu-{$color}3{$variant}.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols}" display="always"/>
	</rule>
	<rule e="node" k="{$key}" v="{$ns-symbol-hu}{$color}4" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/hu-{$color}4{$variant}.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols}" display="always"/>
	</rule>
	<rule e="node" k="{$key}" v="{$ns-symbol-hu}{$color}4" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/hu-{$color}4{$variant}.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols}" display="always"/>
	</rule>
	<rule e="node" k="{$key}" v="{$ns-symbol-hu}{$color}t" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/hu-{$color}t{$variant}.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols}" display="always"/>
	</rule>
	<rule e="node" k="{$key}" v="{$ns-symbol-hu}{$color}t" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/hu-{$color}t{$variant}.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols}" display="always"/>
	</rule>
	<rule e="node" k="{$key}" v="{$ns-symbol-hu}{$color}atl" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/hu-{$color}atl{$variant}.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols}" display="always"/>
	</rule>
	<rule e="node" k="{$key}" v="{$ns-symbol-hu}{$color}atl" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/hu-{$color}atl{$variant}.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols}" display="always"/>
	</rule>
</xsl:template>

<xsl:template name="trail-symbol-hu-mtsz-2">
<xsl:param name="key" />
<xsl:param name="variant" />
<xsl:param name="color" />
	<rule e="node" k="{$key}" v="{$ns-symbol-hu}{$color}q" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/hu-{$color}q{$variant}.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols}" display="always"/>
	</rule>
	<rule e="node" k="{$key}" v="{$ns-symbol-hu}{$color}q" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/hu-{$color}q{$variant}.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols}" display="always"/>
	</rule>
	<rule e="node" k="{$key}" v="{$ns-symbol-hu}{$color}b" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/hu-{$color}b{$variant}.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols}" display="always"/>
	</rule>
	<rule e="node" k="{$key}" v="{$ns-symbol-hu}{$color}b" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/hu-{$color}b{$variant}.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols}" display="always"/>
	</rule>
	<rule e="node" k="{$key}" v="{$ns-symbol-hu}{$color}l" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/hu-{$color}l{$variant}.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols}" display="always"/>
	</rule>
	<rule e="node" k="{$key}" v="{$ns-symbol-hu}{$color}l" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/hu-{$color}l{$variant}.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols}" display="always"/>
	</rule>
	<rule e="node" k="{$key}" v="{$ns-symbol-hu}{$color}c" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/hu-{$color}c{$variant}.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols}" display="always"/>
	</rule>
	<rule e="node" k="{$key}" v="{$ns-symbol-hu}{$color}c" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/hu-{$color}c{$variant}.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols}" display="always"/>
	</rule>
</xsl:template>


<xsl:template name="trail-symbol-hu-special-3">
<xsl:param name="key" />
<xsl:param name="variant" />
	<rule e="node" k="{$key}" v="{$ns-symbol-hu}ft" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/hu-ft{$variant}.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols}" display="always"/>
	</rule>
	<rule e="node" k="{$key}" v="{$ns-symbol-hu}ft" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/hu-ft{$variant}.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols}" display="always"/>
	</rule>
	<rule e="node" k="{$key}" v="{$ns-symbol-hu}palp" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/hu-palp{$variant}.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols}" display="always"/>
	</rule>
	<rule e="node" k="{$key}" v="{$ns-symbol-hu}palp" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/hu-palp{$variant}.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols}" display="always"/>
	</rule>
	<rule e="node" k="{$key}" v="{$ns-symbol-hu}salp" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/hu-salp{$variant}.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols}" display="always"/>
	</rule>
	<rule e="node" k="{$key}" v="{$ns-symbol-hu}salp" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/hu-salp{$variant}.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols}" display="always"/>
	</rule>
</xsl:template>

<xsl:template name="trail-symbol-hu-special-1">
<xsl:param name="key" />
<xsl:param name="variant" />
	<rule e="node" k="{$key}" v="{$ns-symbol-hu}kpec" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/hu-kpec{$variant}.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols-minor}"/>
	</rule>
	<rule e="node" k="{$key}" v="{$ns-symbol-hu}kpec" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/hu-kpec{$variant}.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols-minor}"/>
	</rule>

	<rule e="node" k="{$key}" v="{$ns-symbol-hu}ktmp" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/hu-ktmp{$variant}.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols-minor}"/>
	</rule>
	<rule e="node" k="{$key}" v="{$ns-symbol-hu}ktmp" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/hu-ktmp{$variant}.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols-minor}"/>
	</rule>
	<rule e="node" k="{$key}" v="{$ns-symbol-hu}keml" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/hu-keml{$variant}.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols-minor}"/>
	</rule>
	<rule e="node" k="{$key}" v="{$ns-symbol-hu}keml" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/hu-keml{$variant}.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols-minor}"/>
	</rule>

	<rule e="node" k="{$key}" v="{$ns-symbol-hu}katlv" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/hu-katlv{$variant}.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols-minor}"/>
	</rule>
	<rule e="node" k="{$key}" v="{$ns-symbol-hu}katlv" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/hu-katlv{$variant}.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols-minor}"/>
	</rule>
</xsl:template>

<xsl:template name="trail-symbol-hu-ski-3">
<xsl:param name="key" />
<xsl:param name="variant" />
	<rule e="node" k="{$key}" v="{$ns-symbol-hu}px" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/hu-px{$variant}.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols-minor}" display="always"/>
	</rule>
	<rule e="node" k="{$key}" v="{$ns-symbol-hu}px" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/hu-px{$variant}.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols-minor}" display="always"/>
	</rule>

	<rule e="node" k="{$key}" v="{$ns-symbol-hu}kx" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/hu-kx{$variant}.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols-minor}" display="always"/>
	</rule>
	<rule e="node" k="{$key}" v="{$ns-symbol-hu}kx" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/hu-kx{$variant}.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols-minor}" display="always"/>
	</rule>
</xsl:template>

</xsl:stylesheet>