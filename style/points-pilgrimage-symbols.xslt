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


<xsl:template name="points-pilgrimage-symbols">	
<rule cat="pilgrimage_routes" e="node" k="{$pilgrimage-symbol-tag}_3" v="*" >
	<rule  e="node" k="{$symbol-level-tag}" v="major" zoom-min="13">
        <xsl:call-template name="pilgrimage-symbol-pos-rules">
			<xsl:with-param name="level" select="'3'" />
		</xsl:call-template>       
 	</rule>
	<rule  e="node" k="{$symbol-level-tag}" v="~" zoom-min="15">
        <xsl:call-template name="pilgrimage-symbol-pos-rules">
			<xsl:with-param name="level" select="'3'" />
		</xsl:call-template>   
 	</rule>	
</rule>	

<rule cat="pilgrimage_routes" e="node" k="{$pilgrimage-symbol-tag}_2" v="*" >
	<rule  e="node" k="{$symbol-level-tag}" v="major" zoom-min="13">
 		<xsl:call-template name="pilgrimage-symbol-pos-rules">
			<xsl:with-param name="level" select="'2'" />
		</xsl:call-template>   
	</rule>
	<rule  e="node" k="{$symbol-level-tag}" v="~" zoom-min="15">
  		<xsl:call-template name="pilgrimage-symbol-pos-rules">
			<xsl:with-param name="level" select="'2'" />
		</xsl:call-template>   
 	</rule>	
</rule>	

<rule cat="pilgrimage_routes" e="node" k="{$pilgrimage-symbol-tag}" v="*" >
	<rule  e="node" k="{$symbol-level-tag}" v="major" zoom-min="13">
        <xsl:call-template name="pilgrimage-symbol-base-rules"/>
	</rule>
	<rule  e="node" k="{$symbol-level-tag}" v="~" zoom-min="15">
        <xsl:call-template name="pilgrimage-symbol-base-rules"/>
	</rule>	
</rule>
</xsl:template>

<xsl:template name="pilgrimage-symbol-deep-pos-rules">
<xsl:param name="level" />
	<rule e="node" k="{$pilgrimage-symbol-tag}_{$level}" v="{$ns-symbol-hu}stj" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/hu-stj-{$level}.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols}" display="always"/>
	</rule>
	<rule e="node" k="{$pilgrimage-symbol-tag}_{$level}" v="{$ns-symbol-hu}stj" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/hu-stj-{$level}.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols}" display="always"/>
	</rule>
</xsl:template>



<xsl:template name="pilgrimage-symbol-pos-rules">
<xsl:param name="level" />
	<rule e="node" k="{$pilgrimage-symbol-tag}_{$level}" v="{$ns-symbol-hu}lm" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/hu-lm-{$level}.svg" symbol-width="{$sw-hiking-w-z14}" priority="{$pr-hiking-symbols}" display="always"/>
	</rule>
	<rule e="node" k="{$pilgrimage-symbol-tag}_{$level}" v="{$ns-symbol-hu}lm" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/hu-lm-{$level}.svg" symbol-width="{$sw-hiking-w-z16}" priority="{$pr-hiking-symbols}" display="always"/>
	</rule>
	<rule e="node" k="{$pilgrimage-symbol-tag}_{$level}" v="{$ns-symbol-hu}pm" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/hu-pm-{$level}.svg" symbol-width="{$sw-hiking-w-z14}" priority="{$pr-hiking-symbols}" display="always"/>
	</rule>
	<rule e="node" k="{$pilgrimage-symbol-tag}_{$level}" v="{$ns-symbol-hu}pm" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/hu-pm-{$level}.svg" symbol-width="{$sw-hiking-w-z16}" priority="{$pr-hiking-symbols}" display="always"/>
	</rule>
	<rule e="node" k="{$pilgrimage-symbol-tag}_{$level}" v="{$ns-symbol-hu}km" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/hu-km-{$level}.svg" symbol-width="{$sw-hiking-w-z14}" priority="{$pr-hiking-symbols}" display="always"/>
	</rule>
	<rule e="node" k="{$pilgrimage-symbol-tag}_{$level}" v="{$ns-symbol-hu}km" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/hu-km-{$level}.svg" symbol-width="{$sw-hiking-w-z16}" priority="{$pr-hiking-symbols}" display="always"/>
	</rule>
	<rule e="node" k="{$pilgrimage-symbol-tag}_{$level}" v="{$ns-symbol-hu}sm" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/hu-sm-{$level}.svg" symbol-width="{$sw-hiking-w-z14}" priority="{$pr-hiking-symbols}" display="always"/>
	</rule>
	<rule e="node" k="{$pilgrimage-symbol-tag}_{$level}" v="{$ns-symbol-hu}sm" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/hu-sm-{$level}.svg" symbol-width="{$sw-hiking-w-z16}" priority="{$pr-hiking-symbols}" display="always"/>
	</rule>
	<rule e="node" k="{$pilgrimage-symbol-tag}_{$level}" v="{$ns-symbol-hu}zm" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/hu-zm-{$level}.svg" symbol-width="{$sw-hiking-w-z14}" priority="{$pr-hiking-symbols}" display="always"/>
	</rule>
	<rule e="node" k="{$pilgrimage-symbol-tag}_{$level}" v="{$ns-symbol-hu}zm" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/hu-zm-{$level}.svg" symbol-width="{$sw-hiking-w-z16}" priority="{$pr-hiking-symbols}" display="always"/>
	</rule>
	<rule e="node" k="{$pilgrimage-symbol-tag}_{$level}" v="{$ns-symbol-hu}stj" zoom-min="12" zoom-max="15">
		<symbol src="{$hikingSymbolPath}/hu-stj-{$level}.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols}" display="always"/>
	</rule>
	<rule e="node" k="{$pilgrimage-symbol-tag}_{$level}" v="{$ns-symbol-hu}stj" zoom-min="16" >
		<symbol src="{$hikingSymbolPath}/hu-stj-{$level}.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols}" display="always"/>
	</rule>
</xsl:template>


<xsl:template name="pilgrimage-symbol-base-rules">
    <rule e="node" k="{$pilgrimage-symbol-tag}" v="{$ns-symbol-hu}lm" zoom-min="12" zoom-max="15">
        <symbol src="{$hikingSymbolPath}/hu-lm.svg" symbol-width="{$sw-hiking-w-z14}" priority="{$pr-hiking-symbols}" display="always"/>
    </rule>
    <rule e="node" k="{$pilgrimage-symbol-tag}" v="{$ns-symbol-hu}lm" zoom-min="16" >
        <symbol src="{$hikingSymbolPath}/hu-lm.svg" symbol-width="{$sw-hiking-w-z16}" priority="{$pr-hiking-symbols}" display="always"/>
    </rule>
    <rule e="node" k="{$pilgrimage-symbol-tag}" v="{$ns-symbol-hu}pm" zoom-min="12" zoom-max="15">
        <symbol src="{$hikingSymbolPath}/hu-pm.svg" symbol-width="{$sw-hiking-w-z14}" priority="{$pr-hiking-symbols}" display="always"/>
    </rule>
    <rule e="node" k="{$pilgrimage-symbol-tag}" v="{$ns-symbol-hu}pm" zoom-min="16" >
        <symbol src="{$hikingSymbolPath}/hu-pm.svg" symbol-width="{$sw-hiking-w-z16}" priority="{$pr-hiking-symbols}" display="always"/>
    </rule>
    <rule e="node" k="{$pilgrimage-symbol-tag}" v="{$ns-symbol-hu}km" zoom-min="12" zoom-max="15">
        <symbol src="{$hikingSymbolPath}/hu-km.svg" symbol-width="{$sw-hiking-w-z14}" priority="{$pr-hiking-symbols}" display="always"/>
    </rule>
    <rule e="node" k="{$pilgrimage-symbol-tag}" v="{$ns-symbol-hu}km" zoom-min="16" >
        <symbol src="{$hikingSymbolPath}/hu-km.svg" symbol-width="{$sw-hiking-w-z16}" priority="{$pr-hiking-symbols}" display="always"/>
    </rule>
    <rule e="node" k="{$pilgrimage-symbol-tag}" v="{$ns-symbol-hu}sm" zoom-min="12" zoom-max="15">
        <symbol src="{$hikingSymbolPath}/hu-sm.svg" symbol-width="{$sw-hiking-w-z14}" priority="{$pr-hiking-symbols}" display="always"/>
    </rule>
    <rule e="node" k="{$pilgrimage-symbol-tag}" v="{$ns-symbol-hu}sm" zoom-min="16" >
        <symbol src="{$hikingSymbolPath}/hu-sm.svg" symbol-width="{$sw-hiking-w-z16}" priority="{$pr-hiking-symbols}" display="always"/>
    </rule>
    <rule e="node" k="{$pilgrimage-symbol-tag}" v="{$ns-symbol-hu}zm" zoom-min="12" zoom-max="15">
        <symbol src="{$hikingSymbolPath}/hu-zm.svg" symbol-width="{$sw-hiking-w-z14}" priority="{$pr-hiking-symbols}" display="always"/>
    </rule>
    <rule e="node" k="{$pilgrimage-symbol-tag}" v="{$ns-symbol-hu}zm" zoom-min="16" >
        <symbol src="{$hikingSymbolPath}/hu-zm.svg" symbol-width="{$sw-hiking-w-z16}" priority="{$pr-hiking-symbols}" display="always"/>
    </rule>

    <rule e="node" k="{$pilgrimage-symbol-tag}" v="{$ns-symbol-hu}stj" zoom-min="12" zoom-max="15">
        <symbol src="{$hikingSymbolPath}/hu-stj.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols}" display="always"/>
    </rule>
    <rule e="node" k="{$pilgrimage-symbol-tag}" v="{$ns-symbol-hu}stj" zoom-min="16" >
        <symbol src="{$hikingSymbolPath}/hu-stj.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols}" display="always"/>
    </rule>
    <rule e="node" k="{$pilgrimage-symbol-tag}" v="{$ns-symbol-hu}ste" zoom-min="12" zoom-max="15">
        <symbol src="{$hikingSymbolPath}/hu-ste.svg" symbol-width="{$sw-hiking-z14}" priority="{$pr-hiking-symbols}"/>
    </rule>
    <rule e="node" k="{$pilgrimage-symbol-tag}" v="{$ns-symbol-hu}ste" zoom-min="16" >
        <symbol src="{$hikingSymbolPath}/hu-ste.svg" symbol-width="{$sw-hiking-z16}" priority="{$pr-hiking-symbols}"/>
    </rule>
    <rule e="node" k="{$pilgrimage-symbol-tag}" v="{$ns-symbol-hu}sgy" zoom-min="12" zoom-max="15">
        <symbol src="{$hikingSymbolPath}/hu-sgy.svg" symbol-width="{$sw-hiking2-z14}" priority="{$pr-hiking-symbols}"/>
    </rule>
    <rule e="node" k="{$pilgrimage-symbol-tag}" v="{$ns-symbol-hu}sgy" zoom-min="16" >
        <symbol src="{$hikingSymbolPath}/hu-sgy.svg" symbol-width="{$sw-hiking2-z16}" priority="{$pr-hiking-symbols}"/>
    </rule>
    <rule e="node" k="{$pilgrimage-symbol-tag}" v="{$ns-symbol-hu}smz" zoom-min="12" zoom-max="15">
        <symbol src="{$hikingSymbolPath}/hu-smz.svg" symbol-width="{$sw-hiking2-z14}" priority="{$pr-hiking-symbols}"/>
    </rule>
    <rule e="node" k="{$pilgrimage-symbol-tag}" v="{$ns-symbol-hu}smz" zoom-min="16" >
        <symbol src="{$hikingSymbolPath}/hu-smz.svg" symbol-width="{$sw-hiking2-z16}" priority="{$pr-hiking-symbols}"/>
    </rule>


</xsl:template>



</xsl:stylesheet>