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

<rule cat="hiking_routes" e="node" k="{$symbol-tag}_3" v="*" >
	<rule  e="node" k="{$symbol-level-tag}" v="major" zoom-min="13">
		<xsl:call-template name="trail-symbol-czsk-allcolor-3">
			<xsl:with-param name="key" select="concat($symbol-tag,'_3')" />
			<xsl:with-param name="variant" select="'-3'" />
		</xsl:call-template>
	</rule>
	<rule  e="node" k="{$symbol-level-tag}" v="~" zoom-min="15">
		<xsl:call-template name="trail-symbol-czsk-allcolor-3">
			<xsl:with-param name="key" select="concat($symbol-tag,'_3')" />
			<xsl:with-param name="variant" select="'-3'" />
		</xsl:call-template>
	</rule>
</rule>	

<rule cat="hiking_routes" e="node" k="{$symbol-tag}_2" v="*" >
	<rule  e="node" k="{$symbol-level-tag}" v="major" zoom-min="13">
		<xsl:call-template name="trail-symbol-czsk-allcolor-3">
			<xsl:with-param name="key" select="concat($symbol-tag,'_2')" />
			<xsl:with-param name="variant" select="'-2'" />
		</xsl:call-template>
	</rule>
	<rule  e="node" k="{$symbol-level-tag}" v="~" zoom-min="15">
		<xsl:call-template name="trail-symbol-czsk-allcolor-3">
			<xsl:with-param name="key" select="concat($symbol-tag,'_2')" />
			<xsl:with-param name="variant" select="'-2'" />
		</xsl:call-template>
	</rule>
</rule>	

<rule cat="hiking_routes" e="node" k="{$symbol-tag}" v="*" >
	<rule  e="node" k="{$symbol-level-tag}" v="major" zoom-min="13">
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
	<rule  e="node" k="{$symbol-level-tag}" v="~" zoom-min="15">
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
	<rule e="node" k="{$key}" v="{$ns-symbol-czsk}{$color}:major" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/czsk-{$color}-major{$variant}.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols}" display="always"/>
	</rule>
	<rule e="node" k="{$key}" v="{$ns-symbol-czsk}{$color}:major" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/czsk-{$color}-major{$variant}.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols}" display="always"/>
	</rule>
	<rule e="node" k="{$key}" v="{$ns-symbol-czsk}{$color}:learning" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/czsk-{$color}-learning{$variant}.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols}" display="always"/>
	</rule>
	<rule e="node" k="{$key}" v="{$ns-symbol-czsk}{$color}:learning" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/czsk-{$color}-learning{$variant}.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols}" display="always"/>
	</rule>
	<rule e="node" k="{$key}" v="{$ns-symbol-czsk}{$color}:local" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/czsk-{$color}-local{$variant}.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols}" display="always"/>
	</rule>
	<rule e="node" k="{$key}" v="{$ns-symbol-czsk}{$color}:local" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/czsk-{$color}-local{$variant}.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols}" display="always"/>
	</rule>
</xsl:template>


<xsl:template name="trail-symbol-czsk-1">
<xsl:param name="key" />
<xsl:param name="variant" />
<xsl:param name="color" />
	<rule e="node" k="{$key}" v="{$ns-symbol-czsk}{$color}:ruin" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/czsk-{$color}-ruin{$variant}.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols}" display="always"/>
	</rule>
	<rule e="node" k="{$key}" v="{$ns-symbol-czsk}{$color}:ruin" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/czsk-{$color}-ruin{$variant}.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols}" display="always"/>
	</rule>
	<rule e="node" k="{$key}" v="{$ns-symbol-czsk}{$color}:peak" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/czsk-{$color}-peak{$variant}.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols}" display="always"/>
	</rule>
	<rule e="node" k="{$key}" v="{$ns-symbol-czsk}{$color}:peak" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/czsk-{$color}-peak{$variant}.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols}" display="always"/>
	</rule>
	<rule e="node" k="{$key}" v="{$ns-symbol-czsk}{$color}:spring" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/czsk-{$color}-spring{$variant}.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols}" display="always"/>
	</rule>
	<rule e="node" k="{$key}" v="{$ns-symbol-czsk}{$color}:spring" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/czsk-{$color}-spring{$variant}.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols}" display="always"/>
	</rule>
	<rule e="node" k="{$key}" v="{$ns-symbol-czsk}{$color}:interesting_object" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/czsk-{$color}-interesting{$variant}.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols}" display="always"/>
	</rule>
	<rule e="node" k="{$key}" v="{$ns-symbol-czsk}{$color}:interesting_object" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/czsk-{$color}-interesting{$variant}.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols}" display="always"/>
	</rule>
	<rule e="node" k="{$key}" v="{$ns-symbol-czsk}{$color}:education" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/czsk-{$color}-learning{$variant}.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols}" display="always"/>
	</rule>
	<rule e="node" k="{$key}" v="{$ns-symbol-czsk}{$color}:education" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/czsk-{$color}-learning{$variant}.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols}" display="always"/>
	</rule>
</xsl:template>

<xsl:template name="trail-symbol-czsk-roundtrip-allcolor">
<xsl:param name="key" />
<xsl:param name="variant" />
	<xsl:call-template name="trail-symbol-czsk-roundtrip">
			<xsl:with-param name="key" select="$key" />
			<xsl:with-param name="variant" select="$variant" />
			<xsl:with-param name="color" select="'red'" />
			<xsl:with-param name="code" select="'p'" />			
		</xsl:call-template>
		<xsl:call-template name="trail-symbol-czsk-roundtrip">
			<xsl:with-param name="key" select="$key" />
			<xsl:with-param name="variant" select="$variant" />
			<xsl:with-param name="color" select="'blue'" />
			<xsl:with-param name="code" select="'k'" />			
		</xsl:call-template>
		<xsl:call-template name="trail-symbol-czsk-roundtrip">
			<xsl:with-param name="key" select="$key" />
			<xsl:with-param name="variant" select="$variant" />
			<xsl:with-param name="color" select="'green'" />
			<xsl:with-param name="code" select="'z'" />			
		</xsl:call-template>
		<xsl:call-template name="trail-symbol-czsk-roundtrip">
			<xsl:with-param name="key" select="$key" />
			<xsl:with-param name="variant" select="$variant" />
			<xsl:with-param name="color" select="'yellow'" />
			<xsl:with-param name="code" select="'s'" />			
		</xsl:call-template>
</xsl:template>

<xsl:template name="trail-symbol-czsk-roundtrip">
<xsl:param name="key" />
<xsl:param name="variant" />
<xsl:param name="color" />
<xsl:param name="code" />	
	<rule e="node" k="{$key}" v="{$ns-symbol-czsk}{$color}:roundtrip" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/hu-{$code}q{$variant}.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$key}" v="{$ns-symbol-czsk}{$color}:roundtrip" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/hu-{$code}q{$variant}.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols}"/>
	</rule>
</xsl:template>




</xsl:stylesheet>