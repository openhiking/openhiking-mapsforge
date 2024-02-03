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

<rule cat="hiking_routes" e="node" k="{$symbol-tag}_3" v="*" >
	<rule  e="node" k="{$symbol-level-tag}" v="major" zoom-min="13">
		<xsl:call-template name="trail-symbol-osmc-white-allcolor-3">
			<xsl:with-param name="key" select="concat($symbol-tag,'_3')" />
			<xsl:with-param name="variant" select="'-3'" />
		</xsl:call-template>
	</rule>
	<rule  e="node" k="{$symbol-level-tag}" v="~" zoom-min="15">
		<xsl:call-template name="trail-symbol-osmc-white-allcolor-3">
			<xsl:with-param name="key" select="concat($symbol-tag,'_3')" />
			<xsl:with-param name="variant" select="'-3'" />
		</xsl:call-template>	
	</rule>	
</rule>	

<rule cat="hiking_routes" e="node" k="{$symbol-tag}_2" v="*" >
	<rule  e="node" k="{$symbol-level-tag}" v="major" zoom-min="13">
		<xsl:call-template name="trail-symbol-osmc-white-allcolor-3">
			<xsl:with-param name="key" select="concat($symbol-tag,'_2')" />
			<xsl:with-param name="variant" select="'-2'" />
		</xsl:call-template>
		<xsl:call-template name="trail-symbol-osmc-white-2-allcolor">
			<xsl:with-param name="key" select="concat($symbol-tag,'_2')" />
			<xsl:with-param name="variant" select="'-2'" />
		</xsl:call-template>
		<xsl:call-template name="trail-symbol-osmc-red-2">
			<xsl:with-param name="key" select="concat($symbol-tag,'_2')" />
			<xsl:with-param name="variant" select="'-2'" />
		</xsl:call-template>
		<xsl:call-template name="trail-symbol-osmc-yellow-2">
			<xsl:with-param name="key" select="concat($symbol-tag,'_2')" />
			<xsl:with-param name="variant" select="'-2'" />
		</xsl:call-template>

	</rule>
	<rule  e="node" k="{$symbol-level-tag}" v="~" zoom-min="15">
		<xsl:call-template name="trail-symbol-osmc-white-allcolor-3">
			<xsl:with-param name="key" select="concat($symbol-tag,'_2')" />
			<xsl:with-param name="variant" select="'-2'" />
		</xsl:call-template>
		<xsl:call-template name="trail-symbol-osmc-white-2-allcolor">
			<xsl:with-param name="key" select="concat($symbol-tag,'_2')" />
			<xsl:with-param name="variant" select="'-2'" />
		</xsl:call-template>
		<xsl:call-template name="trail-symbol-osmc-red-2">
			<xsl:with-param name="key" select="concat($symbol-tag,'_2')" />
			<xsl:with-param name="variant" select="'-2'" />
		</xsl:call-template>
		<xsl:call-template name="trail-symbol-osmc-yellow-2">
			<xsl:with-param name="key" select="concat($symbol-tag,'_2')" />
			<xsl:with-param name="variant" select="'-2'" />
		</xsl:call-template>
	</rule>	
</rule>	


<rule cat="hiking_routes" e="node" k="{$symbol-tag}" v="*" >
	<rule  e="node" k="{$symbol-level-tag}" v="major" zoom-min="13">
		<xsl:call-template name="trail-symbol-osmc-white-allcolor-3">
			<xsl:with-param name="key" select="$symbol-tag" />
			<xsl:with-param name="variant" select="''" />
		</xsl:call-template>
		<xsl:call-template name="trail-symbol-osmc-white-allcolor">
			<xsl:with-param name="key" select="$symbol-tag" />
			<xsl:with-param name="variant" select="''" />
		</xsl:call-template>
		<xsl:call-template name="trail-symbol-osmc-white-2-allcolor">
			<xsl:with-param name="key" select="$symbol-tag" />
			<xsl:with-param name="variant" select="''" />
		</xsl:call-template>
		<xsl:call-template name="trail-symbol-osmc-red-2">
			<xsl:with-param name="key" select="$symbol-tag" />
			<xsl:with-param name="variant" select="''" />
		</xsl:call-template>
		<xsl:call-template name="trail-symbol-osmc-red">
			<xsl:with-param name="key" select="$symbol-tag" />
			<xsl:with-param name="variant" select="''" />
		</xsl:call-template>
		<xsl:call-template name="trail-symbol-osmc-blue">
			<xsl:with-param name="key" select="$symbol-tag" />
			<xsl:with-param name="variant" select="''" />
		</xsl:call-template>
		<xsl:call-template name="trail-symbol-osmc-yellow">
			<xsl:with-param name="key" select="$symbol-tag" />
			<xsl:with-param name="variant" select="''" />
		</xsl:call-template>
		<xsl:call-template name="trail-symbol-osmc-yellow-2">
			<xsl:with-param name="key" select="$symbol-tag" />
			<xsl:with-param name="variant" select="''" />
		</xsl:call-template>
		<xsl:call-template name="trail-symbol-osmc-green">
			<xsl:with-param name="key" select="$symbol-tag" />
			<xsl:with-param name="variant" select="''" />
		</xsl:call-template>
		<xsl:call-template name="trail-symbol-osmc-special">
			<xsl:with-param name="key" select="$symbol-tag" />
			<xsl:with-param name="variant" select="''" />
		</xsl:call-template>

	</rule>
	<rule  e="node" k="{$symbol-level-tag}" v="~" zoom-min="15">
		<xsl:call-template name="trail-symbol-osmc-white-allcolor-3">
			<xsl:with-param name="key" select="$symbol-tag" />
			<xsl:with-param name="variant" select="''" />
		</xsl:call-template>
		<xsl:call-template name="trail-symbol-osmc-white-allcolor">
			<xsl:with-param name="key" select="$symbol-tag" />
			<xsl:with-param name="variant" select="''" />
		</xsl:call-template>
		<xsl:call-template name="trail-symbol-osmc-white-2-allcolor">
			<xsl:with-param name="key" select="$symbol-tag" />
			<xsl:with-param name="variant" select="''" />
		</xsl:call-template>
		<xsl:call-template name="trail-symbol-osmc-red-2">
			<xsl:with-param name="key" select="$symbol-tag" />
			<xsl:with-param name="variant" select="''" />
		</xsl:call-template>
		<xsl:call-template name="trail-symbol-osmc-red">
			<xsl:with-param name="key" select="$symbol-tag" />
			<xsl:with-param name="variant" select="''" />
		</xsl:call-template>
		<xsl:call-template name="trail-symbol-osmc-blue">
			<xsl:with-param name="key" select="$symbol-tag" />
			<xsl:with-param name="variant" select="''" />
		</xsl:call-template>
		<xsl:call-template name="trail-symbol-osmc-yellow">
			<xsl:with-param name="key" select="$symbol-tag" />
			<xsl:with-param name="variant" select="''" />
		</xsl:call-template>
		<xsl:call-template name="trail-symbol-osmc-yellow-2">
			<xsl:with-param name="key" select="$symbol-tag" />
			<xsl:with-param name="variant" select="''" />
		</xsl:call-template>
		<xsl:call-template name="trail-symbol-osmc-green">
			<xsl:with-param name="key" select="$symbol-tag" />
			<xsl:with-param name="variant" select="''" />
		</xsl:call-template>
		<xsl:call-template name="trail-symbol-osmc-special">
			<xsl:with-param name="key" select="$symbol-tag" />
			<xsl:with-param name="variant" select="''" />
		</xsl:call-template>
	</rule>
</rule>	
</xsl:template>



<xsl:template name="trail-symbol-osmc-white-allcolor-3">
<xsl:param name="key" />
<xsl:param name="variant" />
	<xsl:call-template name="trail-symbol-osmc-white-3">
		<xsl:with-param name="key" select="$key" />
		<xsl:with-param name="variant" select="$variant" />
		<xsl:with-param name="color" select="'red'" />
	</xsl:call-template>
	<xsl:call-template name="trail-symbol-osmc-white-3">
		<xsl:with-param name="key" select="$key" />
		<xsl:with-param name="variant" select="$variant" />
		<xsl:with-param name="color" select="'blue'" />
	</xsl:call-template>	
	<xsl:call-template name="trail-symbol-osmc-white-3">
		<xsl:with-param name="key" select="$key" />
		<xsl:with-param name="variant" select="$variant" />
		<xsl:with-param name="color" select="'yellow'" />
	</xsl:call-template>
</xsl:template>


<xsl:template name="trail-symbol-osmc-white-3">
<xsl:param name="key" />
<xsl:param name="variant" />
<xsl:param name="color" />
	<rule e="node" k="{$key}" v="{$ns-symbol-osmc}white:{$color}_stripe" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/osmc-white-{$color}_stripe{$variant}.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols}" display="always"/>
	</rule>
	<rule e="node" k="{$key}" v="{$ns-symbol-osmc}white:{$color}_stripe" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/osmc-white-{$color}_stripe{$variant}.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols}" display="always"/>
	</rule>
	<rule e="node" k="{$key}" v="{$ns-symbol-osmc}white:{$color}_dot" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/osmc-white-{$color}_dot{$variant}.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols}" display="always"/>
	</rule>
	<rule e="node" k="{$key}" v="{$ns-symbol-osmc}white:{$color}_dot" zoom-min="16">
		<symbol src="{$hikingSymbolPath}/osmc-white-{$color}_dot{$variant}.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols}" display="always"/>
	</rule>
	<rule e="node" k="{$key}" v="{$ns-symbol-osmc}white:{$color}_cross" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/osmc-white-{$color}_cross{$variant}.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols}" display="always"/>
	</rule>
	<rule e="node" k="{$key}" v="{$ns-symbol-osmc}white:{$color}_cross" zoom-min="16">
		<symbol src="{$hikingSymbolPath}/osmc-white-{$color}_cross{$variant}.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols}" display="always"/>
	</rule>
	<rule e="node" k="{$key}" v="{$ns-symbol-osmc}white:{$color}_triangle" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/osmc-white-{$color}_triangle{$variant}.svg" symbol-width="{$sw-hiking-uw-z14}" priority="{$pr-hiking-symbols}" display="always"/>
	</rule>
	<rule e="node" k="{$key}" v="{$ns-symbol-osmc}white:{$color}_triangle" zoom-min="16">
		<symbol src="{$hikingSymbolPath}/osmc-white-{$color}_triangle{$variant}.svg" symbol-width="{$sw-hiking-uw-z16}" priority="{$pr-hiking-symbols}" display="always"/>
	</rule>
</xsl:template>

<xsl:template name="trail-symbol-osmc-white-2-allcolor">
<xsl:param name="key" />
<xsl:param name="variant" />
	<xsl:call-template name="trail-symbol-osmc-white-2">
		<xsl:with-param name="key" select="$key" />
		<xsl:with-param name="variant" select="$variant" />
		<xsl:with-param name="color" select="'red'" />
	</xsl:call-template>
	<xsl:call-template name="trail-symbol-osmc-white-2">
		<xsl:with-param name="key" select="$key" />
		<xsl:with-param name="variant" select="$variant" />
		<xsl:with-param name="color" select="'blue'" />
	</xsl:call-template>	
	<xsl:call-template name="trail-symbol-osmc-white-2">
		<xsl:with-param name="key" select="$key" />
		<xsl:with-param name="variant" select="$variant" />
		<xsl:with-param name="color" select="'yellow'" />
	</xsl:call-template>
</xsl:template>



<xsl:template name="trail-symbol-osmc-white-2">
<xsl:param name="key" />
<xsl:param name="variant" />
<xsl:param name="color" />
	<rule e="node" k="{$key}" v="{$ns-symbol-osmc}white:{$color}_circle" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/osmc-white-{$color}_circle{$variant}.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols}" display="always"/>
	</rule>
	<rule e="node" k="{$key}" v="{$ns-symbol-osmc}white:{$color}_circle" zoom-min="16">
		<symbol src="{$hikingSymbolPath}/osmc-white-{$color}_circle{$variant}.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols}" display="always"/>
	</rule>
	<rule e="node" k="{$key}" v="{$ns-symbol-osmc}white:{$color}_lower" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/osmc-white-{$color}_lower{$variant}.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols}" display="always"/>
	</rule>
	<rule e="node" k="{$key}" v="{$ns-symbol-osmc}white:{$color}_lower" zoom-min="16">
		<symbol src="{$hikingSymbolPath}/osmc-white-{$color}_lower{$variant}.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols}" display="always"/>
	</rule>
</xsl:template>

<xsl:template name="trail-symbol-osmc-white-allcolor">
<xsl:param name="key" />
<xsl:param name="variant" />
	<xsl:call-template name="trail-symbol-osmc-white">
		<xsl:with-param name="key" select="$key" />
		<xsl:with-param name="variant" select="$variant" />
		<xsl:with-param name="color" select="'red'" />
	</xsl:call-template>
	<xsl:call-template name="trail-symbol-osmc-white">
		<xsl:with-param name="key" select="$key" />
		<xsl:with-param name="variant" select="$variant" />
		<xsl:with-param name="color" select="'blue'" />
	</xsl:call-template>	
	<xsl:call-template name="trail-symbol-osmc-white">
		<xsl:with-param name="key" select="$key" />
		<xsl:with-param name="variant" select="$variant" />
		<xsl:with-param name="color" select="'yellow'" />
	</xsl:call-template>
</xsl:template>


<xsl:template name="trail-symbol-osmc-white">
<xsl:param name="key" />
<xsl:param name="variant" />
<xsl:param name="color" />
	<rule e="node" k="{$key}" v="{$ns-symbol-osmc}white:{$color}_corner" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/osmc-white-{$color}_corner{$variant}.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$key}" v="{$ns-symbol-osmc}white:{$color}_corner" zoom-min="16">
		<symbol src="{$hikingSymbolPath}/osmc-white-{$color}_corner{$variant}.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols}"/>
	</rule>
</xsl:template>


<xsl:template name="trail-symbol-osmc-red-2">
<xsl:param name="key" />
<xsl:param name="variant" />
	<rule e="node" k="{$key}" v="{$ns-symbol-osmc}red:white_bar" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/osmc-red-white_bar{$variant}.svg" symbol-width="{$sw-hiking-w-z14}" priority="{$pr-hiking-symbols}" display="always"/>
	</rule>
	<rule e="node" k="{$key}" v="{$ns-symbol-osmc}red:white_bar" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/osmc-red-white_bar{$variant}.svg" symbol-width="{$sw-hiking-w-z16}" priority="{$pr-hiking-symbols}" display="always"/>
	</rule>
	<rule e="node" k="{$key}" v="{$ns-symbol-osmc}red:yellow_lower" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/osmc-red-yellow_lower{$variant}.svg" symbol-width="{$sw-hiking-w-z14}" priority="{$pr-hiking-symbols}" display="always"/>
	</rule>
	<rule e="node" k="{$key}" v="{$ns-symbol-osmc}red:yellow_lower" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/osmc-red-yellow_lower{$variant}.svg" symbol-width="{$sw-hiking-w-z16}" priority="{$pr-hiking-symbols}" display="always"/>
	</rule>
</xsl:template>


<xsl:template name="trail-symbol-osmc-red">
<xsl:param name="key" />
<xsl:param name="variant" />
	<rule e="node" k="{$key}" v="{$ns-symbol-osmc}red:white_stripe" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/osmc-red-white_stripe{$variant}.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$key}" v="{$ns-symbol-osmc}red:white_stripe" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/osmc-red-white_stripe{$variant}.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$key}" v="{$ns-symbol-osmc}red:white_lower" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/osmc-red-white_lower{$variant}.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$key}" v="{$ns-symbol-osmc}red:white_lower" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/osmc-red-white_lower{$variant}.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$key}" v="{$ns-symbol-osmc}red:blue_lower" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/osmc-red-blue_lower{$variant}.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$key}" v="{$ns-symbol-osmc}red:blue_lower" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/osmc-red-blue_lower{$variant}.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$key}" v="{$ns-symbol-osmc}red:green_lower" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/osmc-red-green_lower{$variant}.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$key}" v="{$ns-symbol-osmc}red:green_lower" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/osmc-red-green_lower{$variant}.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols}"/>
	</rule>
</xsl:template>


<xsl:template name="trail-symbol-osmc-blue">
<xsl:param name="key" />
<xsl:param name="variant" />
	<rule e="node" k="{$key}" v="{$ns-symbol-osmc}blue:white_bar" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/osmc-blue-white_bar{$variant}.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$key}" v="{$ns-symbol-osmc}blue:white_bar" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/osmc-blue-white_bar{$variant}.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$key}" v="{$ns-symbol-osmc}blue:white_stripe" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/osmc-blue-white_stripe{$variant}.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$key}" v="{$ns-symbol-osmc}blue:white_stripe" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/osmc-blue-white_stripe{$variant}.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$key}" v="{$ns-symbol-osmc}blue:white_lower" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/osmc-blue-white_lower{$variant}.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$key}" v="{$ns-symbol-osmc}blue:white_lower" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/osmc-blue-white_lower{$variant}.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$key}" v="{$ns-symbol-osmc}blue:yellow_lower" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/osmc-blue-yellow_lower{$variant}.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$key}" v="{$ns-symbol-osmc}blue:yellow_lower" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/osmc-blue-yellow_lower{$variant}.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols}"/>
	</rule>
</xsl:template>

<xsl:template name="trail-symbol-osmc-yellow-2">
<xsl:param name="key" />
<xsl:param name="variant" />
	<rule e="node" k="{$key}" v="{$ns-symbol-osmc}yellow:blue_lower" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/osmc-yellow-blue_lower{$variant}.svg" symbol-width="{$sw-hiking-w-z14}" priority="{$pr-hiking-symbols}" display="always"/>
	</rule>
	<rule e="node" k="{$key}" v="{$ns-symbol-osmc}yellow:blue_lower" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/osmc-yellow-blue_lower{$variant}.svg" symbol-width="{$sw-hiking-w-z16}" priority="{$pr-hiking-symbols}" display="always"/>
	</rule>
</xsl:template>


<xsl:template name="trail-symbol-osmc-yellow">
<xsl:param name="key" />
<xsl:param name="variant" />
	<rule e="node" k="{$key}" v="{$ns-symbol-osmc}yellow:white_stripe" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/osmc-yellow-white_stripe{$variant}.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$key}" v="{$ns-symbol-osmc}yellow:white_stripe" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/osmc-yellow-white_stripe{$variant}.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$key}" v="{$ns-symbol-osmc}yellow:white_bar" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/osmc-yellow-white_bar{$variant}.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$key}" v="{$ns-symbol-osmc}yellow:white_bar" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/osmc-yellow-white_bar{$variant}.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$key}" v="{$ns-symbol-osmc}yellow:white_lower" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/osmc-yellow-white_lower{$variant}.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$key}" v="{$ns-symbol-osmc}yellow:white_lower" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/osmc-yellow-white_lower{$variant}.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$key}" v="{$ns-symbol-osmc}yellow:red_lower" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/osmc-yellow-red_lower{$variant}.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$key}" v="{$ns-symbol-osmc}yellow:red_lower" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/osmc-yellow-red_lower{$variant}.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$key}" v="{$ns-symbol-osmc}yellow:green_lower" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/osmc-yellow-green_lower{$variant}.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$key}" v="{$ns-symbol-osmc}yellow:green_lower" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/osmc-yellow-green_lower{$variant}.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols}"/>
	</rule>
</xsl:template>



<xsl:template name="trail-symbol-osmc-green">
<xsl:param name="key" />
<xsl:param name="variant" />
	<rule e="node" k="{$key}" v="{$ns-symbol-osmc}green:white_bar" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/osmc-green-white_bar{$variant}.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$key}" v="{$ns-symbol-osmc}green:white_bar" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/osmc-green-white_bar{$variant}.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols}"/>
	</rule>
</xsl:template>


<xsl:template name="trail-symbol-osmc-special">
<xsl:param name="key" />
<xsl:param name="variant" />
	<rule e="node" k="{$key}" v="{$ns-symbol-osmc}white:black_bar" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/osmc-white-black_bar{$variant}.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$key}" v="{$ns-symbol-osmc}white:black_bar" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/osmc-white-black_bar{$variant}.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$key}" v="{$ns-symbol-osmc}white:green_corner" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/osmc-white-green_corner{$variant}.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols}"/>
	</rule>
	<rule e="node" k="{$key}" v="{$ns-symbol-osmc}white:green_corner" zoom-min="16">
		<symbol src="{$hikingSymbolPath}/osmc-white-green_corner{$variant}.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols}"/>
	</rule>
</xsl:template>

</xsl:stylesheet>