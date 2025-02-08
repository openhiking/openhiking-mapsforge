<?xml-stylesheet type="text/xsl"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<!-- 
# OpenHikingMap
#
# Hiking symbols: OSMC
#
# Copyright (c) 2022-2025 OpenHiking contributors
# SPDX-License-Identifier: GPL-3.0-only
-->

<xsl:variable name="ns-symbol-osmc">osmc:</xsl:variable>

<xsl:template name="points-hiking-symbols-osmc">

<rule cat="hiking_routes" e="node" k="{$symbol-tag}_3" v="*" >
	<xsl:call-template name="trail-symbol-osmc-white-allcolor-3">
		<xsl:with-param name="key" select="concat($symbol-tag,'_3')" />
		<xsl:with-param name="variant" select="'-3'" />
	</xsl:call-template>
</rule>	

<rule cat="hiking_routes" e="node" k="{$symbol-tag}_2" v="*" >
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


<rule cat="hiking_routes" e="node" k="{$symbol-tag}" v="*" >
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
	<xsl:call-template name="render-trail-symbol">
		<xsl:with-param name="key" select="$key" />
		<xsl:with-param name="code" select="concat($ns-symbol-osmc,'white:',$color,'_','stripe')" />
		<xsl:with-param name="icon" select="concat('osmc-white-',$color,'_','stripe')" />
		<xsl:with-param name="symbol_width" select="$sw-hiking-z14"/>
		<xsl:with-param name="symbol_width2" select="$sw-hiking-z16"/>
		<xsl:with-param name="priority" select="$pr-hiking-symbols"/>	
		<xsl:with-param name="variant" select="$variant" />
	</xsl:call-template>
	<xsl:call-template name="render-trail-symbol">
		<xsl:with-param name="key" select="$key" />
		<xsl:with-param name="code" select="concat($ns-symbol-osmc,'white:',$color,'_','dot')" />
		<xsl:with-param name="icon" select="concat('osmc-white-',$color,'_','dot')" />
		<xsl:with-param name="symbol_width" select="$sw-hiking-z14"/>
		<xsl:with-param name="symbol_width2" select="$sw-hiking-z16"/>
		<xsl:with-param name="priority" select="$pr-hiking-symbols"/>	
		<xsl:with-param name="variant" select="$variant" />
	</xsl:call-template>
	<xsl:call-template name="render-trail-symbol">
		<xsl:with-param name="key" select="$key" />
		<xsl:with-param name="code" select="concat($ns-symbol-osmc,'white:',$color,'_','cross')" />
		<xsl:with-param name="icon" select="concat('osmc-white-',$color,'_','cross')" />
		<xsl:with-param name="symbol_width" select="$sw-hiking-z14"/>
		<xsl:with-param name="symbol_width2" select="$sw-hiking-z16"/>
		<xsl:with-param name="priority" select="$pr-hiking-symbols"/>	
		<xsl:with-param name="variant" select="$variant" />
	</xsl:call-template>
	<xsl:call-template name="render-trail-symbol">
		<xsl:with-param name="key" select="$key" />
		<xsl:with-param name="code" select="concat($ns-symbol-osmc,'white:',$color,'_','triangle')" />
		<xsl:with-param name="icon" select="concat('osmc-white-',$color,'_','triangle')" />
		<xsl:with-param name="symbol_width" select="$sw-hiking-uw-z14"/>
		<xsl:with-param name="symbol_width2" select="$sw-hiking-uw-z16"/>
		<xsl:with-param name="priority" select="$pr-hiking-symbols"/>	
		<xsl:with-param name="variant" select="$variant" />
	</xsl:call-template>
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
	<xsl:call-template name="render-trail-symbol">
		<xsl:with-param name="key" select="$key" />
		<xsl:with-param name="code" select="concat($ns-symbol-osmc,'white:',$color,'_','circle')" />
		<xsl:with-param name="icon" select="concat('osmc-white-',$color,'_','circle')" />
		<xsl:with-param name="symbol_width" select="$sw-hiking-z14"/>
		<xsl:with-param name="symbol_width2" select="$sw-hiking-z16"/>
		<xsl:with-param name="priority" select="$pr-hiking-symbols"/>	
		<xsl:with-param name="variant" select="$variant" />
	</xsl:call-template>
	<xsl:call-template name="render-trail-symbol">
		<xsl:with-param name="key" select="$key" />
		<xsl:with-param name="code" select="concat($ns-symbol-osmc,'white:',$color,'_','lower')" />
		<xsl:with-param name="icon" select="concat('osmc-white-',$color,'_','lower')" />
		<xsl:with-param name="symbol_width" select="$sw-hiking-z14"/>
		<xsl:with-param name="symbol_width2" select="$sw-hiking-z16"/>
		<xsl:with-param name="priority" select="$pr-hiking-symbols"/>	
		<xsl:with-param name="variant" select="$variant" />
	</xsl:call-template>
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
	<xsl:call-template name="render-trail-symbol">
		<xsl:with-param name="key" select="$key" />
		<xsl:with-param name="code" select="concat($ns-symbol-osmc,'white:',$color,'_','corner')" />
		<xsl:with-param name="icon" select="concat('osmc-white-',$color,'_','corner')" />
		<xsl:with-param name="symbol_width" select="$sw-hiking-z14"/>
		<xsl:with-param name="symbol_width2" select="$sw-hiking-z16"/>
		<xsl:with-param name="priority" select="$pr-hiking-symbols"/>	
		<xsl:with-param name="variant" select="$variant" />
	</xsl:call-template>
</xsl:template>


<xsl:template name="trail-symbol-osmc-red-2">
<xsl:param name="key" />
<xsl:param name="variant" />
	<xsl:call-template name="render-trail-symbol">
		<xsl:with-param name="key" select="$key" />
		<xsl:with-param name="code" select="concat($ns-symbol-osmc,'red',':','white_bar')" />
		<xsl:with-param name="icon" select="concat('osmc-red-','white_bar')" />
		<xsl:with-param name="symbol_width" select="$sw-hiking-w-z14"/>
		<xsl:with-param name="symbol_width2" select="$sw-hiking-w-z16"/>
		<xsl:with-param name="priority" select="$pr-hiking-symbols"/>	
		<xsl:with-param name="variant" select="$variant" />
	</xsl:call-template>

	<xsl:call-template name="render-trail-symbol">
		<xsl:with-param name="key" select="$key" />
		<xsl:with-param name="code" select="concat($ns-symbol-osmc,'red',':','yellow_lower')" />
		<xsl:with-param name="icon" select="concat('osmc-red-','yellow_lower')" />
		<xsl:with-param name="symbol_width" select="$sw-hiking-w-z14"/>
		<xsl:with-param name="symbol_width2" select="$sw-hiking-w-z16"/>
		<xsl:with-param name="priority" select="$pr-hiking-symbols"/>	
		<xsl:with-param name="variant" select="$variant" />
	</xsl:call-template>
</xsl:template>


<xsl:template name="trail-symbol-osmc-red">
<xsl:param name="key" />
<xsl:param name="variant" />
	<xsl:call-template name="render-trail-symbol">
		<xsl:with-param name="key" select="$key" />
		<xsl:with-param name="code" select="concat($ns-symbol-osmc,'red',':','white_stripe')" />
		<xsl:with-param name="icon" select="concat('osmc-red-','white_stripe')" />
		<xsl:with-param name="symbol_width" select="$sw-hiking-z14"/>
		<xsl:with-param name="symbol_width2" select="$sw-hiking-z16"/>
		<xsl:with-param name="priority" select="$pr-hiking-symbols"/>	
		<xsl:with-param name="variant" select="$variant" />
	</xsl:call-template>
	<xsl:call-template name="render-trail-symbol">
		<xsl:with-param name="key" select="$key" />
		<xsl:with-param name="code" select="concat($ns-symbol-osmc,'red',':','white_lower')" />
		<xsl:with-param name="icon" select="concat('osmc-red-','white_lower')" />
		<xsl:with-param name="symbol_width" select="$sw-hiking-z14"/>
		<xsl:with-param name="symbol_width2" select="$sw-hiking-z16"/>
		<xsl:with-param name="priority" select="$pr-hiking-symbols"/>	
		<xsl:with-param name="variant" select="$variant" />
	</xsl:call-template>
	<xsl:call-template name="render-trail-symbol">
		<xsl:with-param name="key" select="$key" />
		<xsl:with-param name="code" select="concat($ns-symbol-osmc,'red',':','blue_lower')" />
		<xsl:with-param name="icon" select="concat('osmc-red-','blue_lower')" />
		<xsl:with-param name="symbol_width" select="$sw-hiking-z14"/>
		<xsl:with-param name="symbol_width2" select="$sw-hiking-z16"/>
		<xsl:with-param name="priority" select="$pr-hiking-symbols"/>	
		<xsl:with-param name="variant" select="$variant" />
	</xsl:call-template>
	<xsl:call-template name="render-trail-symbol">
		<xsl:with-param name="key" select="$key" />
		<xsl:with-param name="code" select="concat($ns-symbol-osmc,'red',':','green_lower')" />
		<xsl:with-param name="icon" select="concat('osmc-red-','green_lower')" />
		<xsl:with-param name="symbol_width" select="$sw-hiking-z14"/>
		<xsl:with-param name="symbol_width2" select="$sw-hiking-z16"/>
		<xsl:with-param name="priority" select="$pr-hiking-symbols"/>	
		<xsl:with-param name="variant" select="$variant" />
	</xsl:call-template>

	<xsl:call-template name="render-trail-symbol">
		<xsl:with-param name="key" select="$key" />
		<xsl:with-param name="code" select="concat($ns-symbol-osmc,'red_round',':','white_dot')" />
		<xsl:with-param name="icon" select="concat('osmc-red_round-','white_dot')" />
		<xsl:with-param name="symbol_width" select="$sw-hiking-z14"/>
		<xsl:with-param name="symbol_width2" select="$sw-hiking-z16"/>
		<xsl:with-param name="priority" select="$pr-hiking-symbols"/>	
		<xsl:with-param name="variant" select="$variant" />
	</xsl:call-template>

	<xsl:call-template name="render-trail-symbol">
		<xsl:with-param name="key" select="$key" />
		<xsl:with-param name="code" select="concat($ns-symbol-osmc,'red_round',':','yellow_dot')" />
		<xsl:with-param name="icon" select="concat('osmc-red_round-','yellow_dot')" />
		<xsl:with-param name="symbol_width" select="$sw-hiking-z14"/>
		<xsl:with-param name="symbol_width2" select="$sw-hiking-z16"/>
		<xsl:with-param name="priority" select="$pr-hiking-symbols"/>	
		<xsl:with-param name="variant" select="$variant" />
	</xsl:call-template>

</xsl:template>


<xsl:template name="trail-symbol-osmc-blue">
<xsl:param name="key" />
<xsl:param name="variant" />
	<xsl:call-template name="render-trail-symbol">
		<xsl:with-param name="key" select="$key" />
		<xsl:with-param name="code" select="concat($ns-symbol-osmc,'blue',':','white_bar')" />
		<xsl:with-param name="icon" select="concat('osmc-blue-','white_bar')" />
		<xsl:with-param name="symbol_width" select="$sw-hiking-z14"/>
		<xsl:with-param name="symbol_width2" select="$sw-hiking-z16"/>
		<xsl:with-param name="priority" select="$pr-hiking-symbols"/>	
		<xsl:with-param name="variant" select="$variant" />
	</xsl:call-template>
	<xsl:call-template name="render-trail-symbol">
		<xsl:with-param name="key" select="$key" />
		<xsl:with-param name="code" select="concat($ns-symbol-osmc,'blue',':','white_stripe')" />
		<xsl:with-param name="icon" select="concat('osmc-blue-','white_stripe')" />
		<xsl:with-param name="symbol_width" select="$sw-hiking-z14"/>
		<xsl:with-param name="symbol_width2" select="$sw-hiking-z16"/>
		<xsl:with-param name="priority" select="$pr-hiking-symbols"/>	
		<xsl:with-param name="variant" select="$variant" />
	</xsl:call-template>
	<xsl:call-template name="render-trail-symbol">
		<xsl:with-param name="key" select="$key" />
		<xsl:with-param name="code" select="concat($ns-symbol-osmc,'blue',':','white_lower')" />
		<xsl:with-param name="icon" select="concat('osmc-blue-','white_lower')" />
		<xsl:with-param name="symbol_width" select="$sw-hiking-z14"/>
		<xsl:with-param name="symbol_width2" select="$sw-hiking-z16"/>
		<xsl:with-param name="priority" select="$pr-hiking-symbols"/>	
		<xsl:with-param name="variant" select="$variant" />
	</xsl:call-template>
	<xsl:call-template name="render-trail-symbol">
		<xsl:with-param name="key" select="$key" />
		<xsl:with-param name="code" select="concat($ns-symbol-osmc,'blue',':','yellow_lower')" />
		<xsl:with-param name="icon" select="concat('osmc-blue-','yellow_lower')" />
		<xsl:with-param name="symbol_width" select="$sw-hiking-z14"/>
		<xsl:with-param name="symbol_width2" select="$sw-hiking-z16"/>
		<xsl:with-param name="priority" select="$pr-hiking-symbols"/>	
		<xsl:with-param name="variant" select="$variant" />
	</xsl:call-template>

	<xsl:call-template name="render-trail-symbol">
		<xsl:with-param name="key" select="$key" />
		<xsl:with-param name="code" select="concat($ns-symbol-osmc,'blue_round',':','white_dot')" />
		<xsl:with-param name="icon" select="concat('osmc-blue_round-','white_dot')" />
		<xsl:with-param name="symbol_width" select="$sw-hiking-z14"/>
		<xsl:with-param name="symbol_width2" select="$sw-hiking-z16"/>
		<xsl:with-param name="priority" select="$pr-hiking-symbols"/>	
		<xsl:with-param name="variant" select="$variant" />
	</xsl:call-template>

	<xsl:call-template name="render-trail-symbol">
		<xsl:with-param name="key" select="$key" />
		<xsl:with-param name="code" select="concat($ns-symbol-osmc,'blue_round',':','yellow_dot')" />
		<xsl:with-param name="icon" select="concat('osmc-blue_round-','yellow_dot')" />
		<xsl:with-param name="symbol_width" select="$sw-hiking-z14"/>
		<xsl:with-param name="symbol_width2" select="$sw-hiking-z16"/>
		<xsl:with-param name="priority" select="$pr-hiking-symbols"/>	
		<xsl:with-param name="variant" select="$variant" />
	</xsl:call-template>

</xsl:template>

<xsl:template name="trail-symbol-osmc-yellow-2">
<xsl:param name="key" />
<xsl:param name="variant" />
	<xsl:call-template name="render-trail-symbol">
		<xsl:with-param name="key" select="$key" />
		<xsl:with-param name="code" select="concat($ns-symbol-osmc,'yellow',':','blue_lower')" />
		<xsl:with-param name="icon" select="concat('osmc-yellow-','blue_lower')" />
		<xsl:with-param name="symbol_width" select="$sw-hiking-w-z14"/>
		<xsl:with-param name="symbol_width2" select="$sw-hiking-w-z16"/>
		<xsl:with-param name="priority" select="$pr-hiking-symbols"/>	
		<xsl:with-param name="variant" select="$variant" />
	</xsl:call-template>
</xsl:template>


<xsl:template name="trail-symbol-osmc-yellow">
<xsl:param name="key" />
<xsl:param name="variant" />
	<xsl:call-template name="render-trail-symbol">
		<xsl:with-param name="key" select="$key" />
		<xsl:with-param name="code" select="concat($ns-symbol-osmc,'yellow',':','white_stripe')" />
		<xsl:with-param name="icon" select="concat('osmc-yellow-','white_stripe')" />
		<xsl:with-param name="symbol_width" select="$sw-hiking-z14"/>
		<xsl:with-param name="symbol_width2" select="$sw-hiking-z16"/>
		<xsl:with-param name="priority" select="$pr-hiking-symbols"/>	
		<xsl:with-param name="variant" select="$variant" />
	</xsl:call-template>
	<xsl:call-template name="render-trail-symbol">
		<xsl:with-param name="key" select="$key" />
		<xsl:with-param name="code" select="concat($ns-symbol-osmc,'yellow',':','white_bar')" />
		<xsl:with-param name="icon" select="concat('osmc-yellow-','white_bar')" />
		<xsl:with-param name="symbol_width" select="$sw-hiking-z14"/>
		<xsl:with-param name="symbol_width2" select="$sw-hiking-z16"/>
		<xsl:with-param name="priority" select="$pr-hiking-symbols"/>	
		<xsl:with-param name="variant" select="$variant" />
	</xsl:call-template>
	<xsl:call-template name="render-trail-symbol">
		<xsl:with-param name="key" select="$key" />
		<xsl:with-param name="code" select="concat($ns-symbol-osmc,'yellow',':','white_lower')" />
		<xsl:with-param name="icon" select="concat('osmc-yellow-','white_lower')" />
		<xsl:with-param name="symbol_width" select="$sw-hiking-z14"/>
		<xsl:with-param name="symbol_width2" select="$sw-hiking-z16"/>
		<xsl:with-param name="priority" select="$pr-hiking-symbols"/>	
		<xsl:with-param name="variant" select="$variant" />
	</xsl:call-template>
	<xsl:call-template name="render-trail-symbol">
		<xsl:with-param name="key" select="$key" />
		<xsl:with-param name="code" select="concat($ns-symbol-osmc,'yellow',':','red_lower')" />
		<xsl:with-param name="icon" select="concat('osmc-yellow-','red_lower')" />
		<xsl:with-param name="symbol_width" select="$sw-hiking-z14"/>
		<xsl:with-param name="symbol_width2" select="$sw-hiking-z16"/>
		<xsl:with-param name="priority" select="$pr-hiking-symbols"/>	
		<xsl:with-param name="variant" select="$variant" />
	</xsl:call-template>
	<xsl:call-template name="render-trail-symbol">
		<xsl:with-param name="key" select="$key" />
		<xsl:with-param name="code" select="concat($ns-symbol-osmc,'yellow',':','green_lower')" />
		<xsl:with-param name="icon" select="concat('osmc-yellow-','green_lower')" />
		<xsl:with-param name="symbol_width" select="$sw-hiking-z14"/>
		<xsl:with-param name="symbol_width2" select="$sw-hiking-z16"/>
		<xsl:with-param name="priority" select="$pr-hiking-symbols"/>	
		<xsl:with-param name="variant" select="$variant" />
	</xsl:call-template>
</xsl:template>



<xsl:template name="trail-symbol-osmc-green">
<xsl:param name="key" />
<xsl:param name="variant" />
	<xsl:call-template name="render-trail-symbol">
		<xsl:with-param name="key" select="$key" />
		<xsl:with-param name="code" select="concat($ns-symbol-osmc,'green',':','white_bar')" />
		<xsl:with-param name="icon" select="concat('osmc-green-','white_bar')" />
		<xsl:with-param name="symbol_width" select="$sw-hiking-z14"/>
		<xsl:with-param name="symbol_width2" select="$sw-hiking-z16"/>
		<xsl:with-param name="priority" select="$pr-hiking-symbols"/>	
		<xsl:with-param name="variant" select="$variant" />
	</xsl:call-template>
</xsl:template>


<xsl:template name="trail-symbol-osmc-special">
<xsl:param name="key" />
<xsl:param name="variant" />
	<xsl:call-template name="render-trail-symbol">
		<xsl:with-param name="key" select="$key" />
		<xsl:with-param name="code" select="concat($ns-symbol-osmc,'white',':','black_bar')" />
		<xsl:with-param name="icon" select="concat('osmc-white-','black_bar')" />
		<xsl:with-param name="symbol_width" select="$sw-hiking-z14"/>
		<xsl:with-param name="symbol_width2" select="$sw-hiking-z16"/>
		<xsl:with-param name="priority" select="$pr-hiking-symbols"/>	
		<xsl:with-param name="variant" select="$variant" />
	</xsl:call-template>
	<xsl:call-template name="render-trail-symbol">
		<xsl:with-param name="key" select="$key" />
		<xsl:with-param name="code" select="concat($ns-symbol-osmc,'white',':','green_corner')" />
		<xsl:with-param name="icon" select="concat('osmc-white-','green_corner')" />
		<xsl:with-param name="symbol_width" select="$sw-hiking-z14"/>
		<xsl:with-param name="symbol_width2" select="$sw-hiking-z16"/>
		<xsl:with-param name="priority" select="$pr-hiking-symbols"/>	
		<xsl:with-param name="variant" select="$variant" />
	</xsl:call-template>
</xsl:template>

</xsl:stylesheet>