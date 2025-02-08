<?xml-stylesheet type="text/xsl"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<!-- 
# OpenHikingMap
#
# Hiking symbols: Hungary
#
# Copyright (c) 2022-2025 OpenHiking contributors
# SPDX-License-Identifier: GPL-3.0-only
-->


<xsl:template name="points-pilgrimage-symbols">	
<rule cat="pilgrimage_routes" e="node" k="{$pilgrimage-symbol-tag}_3" v="*" >
	<xsl:call-template name="pilgrimage-symbol-hu-3">
		<xsl:with-param name="key" select="concat($pilgrimage-symbol-tag,'_3')" />
		<xsl:with-param name="variant" select="'-3'" />
	</xsl:call-template>    

	<xsl:call-template name="trail-symbol-hu-major-allcolor-3">
		<xsl:with-param name="key" select="concat($pilgrimage-symbol-tag,'_3')" />
		<xsl:with-param name="variant" select="'-3'" />
	</xsl:call-template>
</rule>	


<rule cat="pilgrimage_routes" e="node" k="{$pilgrimage-symbol-tag}_2" v="*" >
	<xsl:call-template name="pilgrimage-symbol-hu-3">
		<xsl:with-param name="key" select="concat($pilgrimage-symbol-tag,'_2')" />
		<xsl:with-param name="variant" select="'-2'" />
	</xsl:call-template>   

	<xsl:call-template name="trail-symbol-hu-major-allcolor-3">
		<xsl:with-param name="key" select="concat($pilgrimage-symbol-tag,'_2')" />
		<xsl:with-param name="variant" select="'-2'" />
	</xsl:call-template>
</rule>	

<rule cat="pilgrimage_routes" e="node" k="{$pilgrimage-symbol-tag}" v="*" >
	<xsl:call-template name="pilgrimage-symbol-hu-3">
		<xsl:with-param name="key" select="$pilgrimage-symbol-tag" />
		<xsl:with-param name="variant" select="''" />
	</xsl:call-template>    
	<xsl:call-template name="pilgrimage-symbol-hu-1">
		<xsl:with-param name="key" select="$pilgrimage-symbol-tag" />
		<xsl:with-param name="variant" select="''" />
	</xsl:call-template>    

	<xsl:call-template name="trail-symbol-hu-major-allcolor-3">
		<xsl:with-param name="key" select="$pilgrimage-symbol-tag" />
		<xsl:with-param name="variant" select="''" />
	</xsl:call-template>
	<xsl:call-template name="trail-symbol-hu-temple-allcolor">
		<xsl:with-param name="key" select="$symbol-tag" />
		<xsl:with-param name="variant" select="''" />
	</xsl:call-template>		

</rule>	
</xsl:template>


<xsl:template name="pilgrimage-symbol-hu-3">
<xsl:param name="key" />
<xsl:param name="variant" />
	<xsl:call-template name="render-trail-symbol">
		<xsl:with-param name="key" select="$key" />
		<xsl:with-param name="code" select="concat($ns-symbol-hu,'lm')" />
		<xsl:with-param name="icon" select="'hu-lm'" />
		<xsl:with-param name="symbol_width" select="$sw-hiking-w-z14"/>
		<xsl:with-param name="symbol_width2" select="$sw-hiking-w-z16"/>
		<xsl:with-param name="priority" select="$pr-hiking-symbols"/>	
		<xsl:with-param name="variant" select="$variant" />
	</xsl:call-template>

	<xsl:call-template name="render-trail-symbol">
		<xsl:with-param name="key" select="$key" />
		<xsl:with-param name="code" select="concat($ns-symbol-hu,'pm')" />
		<xsl:with-param name="icon" select="'hu-pm'" />
		<xsl:with-param name="symbol_width" select="$sw-hiking-w-z14"/>
		<xsl:with-param name="symbol_width2" select="$sw-hiking-w-z16"/>
		<xsl:with-param name="priority" select="$pr-hiking-symbols"/>	
		<xsl:with-param name="variant" select="$variant" />
	</xsl:call-template>

	<xsl:call-template name="render-trail-symbol">
		<xsl:with-param name="key" select="$key" />
		<xsl:with-param name="code" select="concat($ns-symbol-hu,'km')" />
		<xsl:with-param name="icon" select="'hu-km'" />
		<xsl:with-param name="symbol_width" select="$sw-hiking-w-z14"/>
		<xsl:with-param name="symbol_width2" select="$sw-hiking-w-z16"/>
		<xsl:with-param name="priority" select="$pr-hiking-symbols"/>	
		<xsl:with-param name="variant" select="$variant" />
	</xsl:call-template>


	<xsl:call-template name="render-trail-symbol">
		<xsl:with-param name="key" select="$key" />
		<xsl:with-param name="code" select="concat($ns-symbol-hu,'sm')" />
		<xsl:with-param name="icon" select="'hu-sm'" />
		<xsl:with-param name="symbol_width" select="$sw-hiking-w-z14"/>
		<xsl:with-param name="symbol_width2" select="$sw-hiking-w-z16"/>
		<xsl:with-param name="priority" select="$pr-hiking-symbols"/>	
		<xsl:with-param name="variant" select="$variant" />
	</xsl:call-template>

	<xsl:call-template name="render-trail-symbol">
		<xsl:with-param name="key" select="$key" />
		<xsl:with-param name="code" select="concat($ns-symbol-hu,'zm')" />
		<xsl:with-param name="icon" select="'hu-zm'" />
		<xsl:with-param name="symbol_width" select="$sw-hiking-w-z14"/>
		<xsl:with-param name="symbol_width2" select="$sw-hiking-w-z16"/>
		<xsl:with-param name="priority" select="$pr-hiking-symbols"/>	
		<xsl:with-param name="variant" select="$variant" />
	</xsl:call-template>

	<xsl:call-template name="render-trail-symbol">
		<xsl:with-param name="key" select="$key" />
		<xsl:with-param name="code" select="concat($ns-symbol-hu,'stj')" />
		<xsl:with-param name="icon" select="'hu-stj'" />
		<xsl:with-param name="symbol_width" select="$sw-hiking-z14"/>
		<xsl:with-param name="symbol_width2" select="$sw-hiking-z16"/>
		<xsl:with-param name="priority" select="$pr-hiking-symbols"/>	
		<xsl:with-param name="variant" select="$variant" />
	</xsl:call-template>

	<xsl:call-template name="render-trail-symbol">
		<xsl:with-param name="key" select="$key" />
		<xsl:with-param name="code" select="concat($ns-symbol-hu,'sgy')" />
		<xsl:with-param name="icon" select="'hu-sgy'" />
		<xsl:with-param name="symbol_width" select="$sw-hiking2-z14"/>
		<xsl:with-param name="symbol_width2" select="$sw-hiking2-z16"/>
		<xsl:with-param name="priority" select="$pr-hiking-symbols"/>	
		<xsl:with-param name="variant" select="$variant" />
	</xsl:call-template>

</xsl:template>

<xsl:template name="pilgrimage-symbol-hu-1">
<xsl:param name="key" />
<xsl:param name="variant" />
	<xsl:call-template name="render-trail-symbol">
		<xsl:with-param name="key" select="$key" />
		<xsl:with-param name="code" select="concat($ns-symbol-hu,'ste')" />
		<xsl:with-param name="icon" select="'hu-ste'" />
		<xsl:with-param name="symbol_width" select="$sw-hiking-z14"/>
		<xsl:with-param name="symbol_width2" select="$sw-hiking-z16"/>
		<xsl:with-param name="priority" select="$pr-hiking-symbols"/>	
		<xsl:with-param name="variant" select="$variant" />
	</xsl:call-template>

	<xsl:call-template name="render-trail-symbol">
		<xsl:with-param name="key" select="$key" />
		<xsl:with-param name="code" select="concat($ns-symbol-hu,'smz')" />
		<xsl:with-param name="icon" select="'hu-smz'" />
		<xsl:with-param name="symbol_width" select="$sw-hiking2-z14"/>
		<xsl:with-param name="symbol_width2" select="$sw-hiking2-z16"/>
		<xsl:with-param name="priority" select="$pr-hiking-symbols"/>	
		<xsl:with-param name="variant" select="$variant" />
	</xsl:call-template>

</xsl:template>
</xsl:stylesheet>