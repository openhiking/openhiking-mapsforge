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

<xsl:template name="points-hiking-symbols-hu">
<rule cat="hiking_routes" e="node" k="{$symbol-tag}_3" v="*" >
	<xsl:call-template name="trail-symbol-hu-major-allcolor-3">
		<xsl:with-param name="key" select="concat($symbol-tag,'_3')" />
		<xsl:with-param name="variant" select="'-3'" />
	</xsl:call-template>
	<xsl:call-template name="trail-symbol-hu-mtsz-allcolor-3">
		<xsl:with-param name="key" select="concat($symbol-tag,'_3')" />
		<xsl:with-param name="variant" select="'-3'" />
	</xsl:call-template>
	<xsl:call-template name="trail-symbol-hu-special-3">
		<xsl:with-param name="key" select="concat($symbol-tag,'_3')" />
		<xsl:with-param name="variant" select="'-3'" />
	</xsl:call-template>
</rule>	

<rule cat="hiking_routes" e="node" k="{$ski-symbol-tag}_3" v="*" >
	<xsl:call-template name="trail-symbol-hu-ski-3">
		<xsl:with-param name="key" select="concat($ski-symbol-tag,'_3')" />
		<xsl:with-param name="variant" select="'-3'" />
	</xsl:call-template>
</rule>	

<rule cat="hiking_routes" e="node" k="{$symbol-tag}_2" v="*" >
	<xsl:call-template name="trail-symbol-hu-major-allcolor-3">
		<xsl:with-param name="key" select="concat($symbol-tag,'_2')" />
		<xsl:with-param name="variant" select="'-2'" />
	</xsl:call-template>
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

<rule cat="hiking_routes" e="node" k="{$ski-symbol-tag}_2" v="*" >
	<xsl:call-template name="trail-symbol-hu-ski-3">
		<xsl:with-param name="key" select="concat($ski-symbol-tag,'_2')" />
		<xsl:with-param name="variant" select="'-2'" />
	</xsl:call-template>
</rule>	

<rule cat="hiking_routes" e="node" k="{$symbol-tag}" v="*" >
	<xsl:call-template name="trail-symbol-hu-major-allcolor-3">
		<xsl:with-param name="key" select="$symbol-tag" />
		<xsl:with-param name="variant" select="''" />
	</xsl:call-template>
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

<rule cat="hiking_routes" e="node" k="{$ski-symbol-tag}" v="*" >
	<xsl:call-template name="trail-symbol-hu-ski-3">
		<xsl:with-param name="key" select="$ski-symbol-tag" />
		<xsl:with-param name="variant" select="''" />
	</xsl:call-template>
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

<xsl:template name="trail-symbol-hu-major-allcolor-3">
<xsl:param name="key" />
<xsl:param name="variant" />
	<xsl:call-template name="render-trail-symbol">
		<xsl:with-param name="key" select="$key" />
		<xsl:with-param name="code" select="concat($ns-symbol-hu,'k')" />
		<xsl:with-param name="icon" select="'hu-k'" />
		<xsl:with-param name="symbol_width" select="$sw-hiking-w-z14"/>
		<xsl:with-param name="symbol_width2" select="$sw-hiking-w-z16"/>
		<xsl:with-param name="priority" select="$pr-hiking-symbols"/>	
		<xsl:with-param name="variant" select="$variant" />
	</xsl:call-template>

	<xsl:call-template name="render-trail-symbol">
		<xsl:with-param name="key" select="$key" />
		<xsl:with-param name="code" select="concat($ns-symbol-hu,'p')" />
		<xsl:with-param name="icon" select="'hu-p'" />
		<xsl:with-param name="symbol_width" select="$sw-hiking-w-z14"/>
		<xsl:with-param name="symbol_width2" select="$sw-hiking-w-z16"/>
		<xsl:with-param name="priority" select="$pr-hiking-symbols"/>	
		<xsl:with-param name="variant" select="$variant" />
	</xsl:call-template>

	<xsl:call-template name="render-trail-symbol">
		<xsl:with-param name="key" select="$key" />
		<xsl:with-param name="code" select="concat($ns-symbol-hu,'s')" />
		<xsl:with-param name="icon" select="'hu-s'" />
		<xsl:with-param name="symbol_width" select="$sw-hiking-w-z14"/>
		<xsl:with-param name="symbol_width2" select="$sw-hiking-w-z16"/>
		<xsl:with-param name="priority" select="$pr-hiking-symbols"/>	
		<xsl:with-param name="variant" select="$variant" />
	</xsl:call-template>

	<xsl:call-template name="render-trail-symbol">
		<xsl:with-param name="key" select="$key" />
		<xsl:with-param name="code" select="concat($ns-symbol-hu,'z')" />
		<xsl:with-param name="icon" select="'hu-z'" />
		<xsl:with-param name="symbol_width" select="$sw-hiking-w-z14"/>
		<xsl:with-param name="symbol_width2" select="$sw-hiking-w-z16"/>
		<xsl:with-param name="priority" select="$pr-hiking-symbols"/>	
		<xsl:with-param name="variant" select="$variant" />
	</xsl:call-template>

</xsl:template>

<xsl:template name="trail-symbol-hu-mtsz-3">
<xsl:param name="key" />
<xsl:param name="variant" />
<xsl:param name="color" />
	<xsl:call-template name="render-trail-symbol">
		<xsl:with-param name="key" select="$key" />
		<xsl:with-param name="code" select="concat($ns-symbol-hu,$color,'+')" />
		<xsl:with-param name="icon" select="concat('hu-',$color,'+')" />
		<xsl:with-param name="symbol_width" select="$sw-hiking-z14"/>
		<xsl:with-param name="symbol_width2" select="$sw-hiking-z16"/>
		<xsl:with-param name="priority" select="$pr-hiking-symbols"/>	
		<xsl:with-param name="variant" select="$variant" />
	</xsl:call-template>

	<xsl:call-template name="render-trail-symbol">
		<xsl:with-param name="key" select="$key" />
		<xsl:with-param name="code" select="concat($ns-symbol-hu,$color,'3')" />
		<xsl:with-param name="icon" select="concat('hu-',$color,'3')" />
		<xsl:with-param name="symbol_width" select="$sw-hiking-z14"/>
		<xsl:with-param name="symbol_width2" select="$sw-hiking-z16"/>
		<xsl:with-param name="priority" select="$pr-hiking-symbols"/>	
		<xsl:with-param name="variant" select="$variant" />
	</xsl:call-template>

	<xsl:call-template name="render-trail-symbol">
		<xsl:with-param name="key" select="$key" />
		<xsl:with-param name="code" select="concat($ns-symbol-hu,$color,'4')" />
		<xsl:with-param name="icon" select="concat('hu-',$color,'4')" />
		<xsl:with-param name="symbol_width" select="$sw-hiking-z14"/>
		<xsl:with-param name="symbol_width2" select="$sw-hiking-z16"/>
		<xsl:with-param name="priority" select="$pr-hiking-symbols"/>	
		<xsl:with-param name="variant" select="$variant" />
	</xsl:call-template>

	<xsl:call-template name="render-trail-symbol">
		<xsl:with-param name="key" select="$key" />
		<xsl:with-param name="code" select="concat($ns-symbol-hu,$color,'t')" />
		<xsl:with-param name="icon" select="concat('hu-',$color,'t')" />
		<xsl:with-param name="symbol_width" select="$sw-hiking-z14"/>
		<xsl:with-param name="symbol_width2" select="$sw-hiking-z16"/>
		<xsl:with-param name="priority" select="$pr-hiking-symbols"/>	
		<xsl:with-param name="variant" select="$variant" />
	</xsl:call-template>

	<xsl:call-template name="render-trail-symbol">
		<xsl:with-param name="key" select="$key" />
		<xsl:with-param name="code" select="concat($ns-symbol-hu,$color,'atl')" />
		<xsl:with-param name="icon" select="concat('hu-',$color,'atl')" />
		<xsl:with-param name="symbol_width" select="$sw-hiking-z14"/>
		<xsl:with-param name="symbol_width2" select="$sw-hiking-z16"/>
		<xsl:with-param name="priority" select="$pr-hiking-symbols"/>	
		<xsl:with-param name="variant" select="$variant" />
	</xsl:call-template>
</xsl:template>

<xsl:template name="trail-symbol-hu-mtsz-2">
<xsl:param name="key" />
<xsl:param name="variant" />
<xsl:param name="color" />
	<xsl:call-template name="render-trail-symbol">
		<xsl:with-param name="key" select="$key" />
		<xsl:with-param name="code" select="concat($ns-symbol-hu,$color,'q')" />
		<xsl:with-param name="icon" select="concat('hu-',$color,'q')" />
		<xsl:with-param name="symbol_width" select="$sw-hiking-z14"/>
		<xsl:with-param name="symbol_width2" select="$sw-hiking-z16"/>
		<xsl:with-param name="priority" select="$pr-hiking-symbols"/>	
		<xsl:with-param name="variant" select="$variant" />
	</xsl:call-template>

	<xsl:call-template name="render-trail-symbol">
		<xsl:with-param name="key" select="$key" />
		<xsl:with-param name="code" select="concat($ns-symbol-hu,$color,'b')" />
		<xsl:with-param name="icon" select="concat('hu-',$color,'b')" />
		<xsl:with-param name="symbol_width" select="$sw-hiking-z14"/>
		<xsl:with-param name="symbol_width2" select="$sw-hiking-z16"/>
		<xsl:with-param name="priority" select="$pr-hiking-symbols"/>	
		<xsl:with-param name="variant" select="$variant" />
	</xsl:call-template>

	<xsl:call-template name="render-trail-symbol">
		<xsl:with-param name="key" select="$key" />
		<xsl:with-param name="code" select="concat($ns-symbol-hu,$color,'l')" />
		<xsl:with-param name="icon" select="concat('hu-',$color,'l')" />
		<xsl:with-param name="symbol_width" select="$sw-hiking-z14"/>
		<xsl:with-param name="symbol_width2" select="$sw-hiking-z16"/>
		<xsl:with-param name="priority" select="$pr-hiking-symbols"/>	
		<xsl:with-param name="variant" select="$variant" />
	</xsl:call-template>

	<xsl:call-template name="render-trail-symbol">
		<xsl:with-param name="key" select="$key" />
		<xsl:with-param name="code" select="concat($ns-symbol-hu,$color,'c')" />
		<xsl:with-param name="icon" select="concat('hu-',$color,'c')" />
		<xsl:with-param name="symbol_width" select="$sw-hiking-z14"/>
		<xsl:with-param name="symbol_width2" select="$sw-hiking-z16"/>
		<xsl:with-param name="priority" select="$pr-hiking-symbols"/>	
		<xsl:with-param name="variant" select="$variant" />
	</xsl:call-template>
</xsl:template>

<xsl:template name="trail-symbol-hu-special-3">
<xsl:param name="key" />
<xsl:param name="variant" />
	<xsl:call-template name="render-trail-symbol">
		<xsl:with-param name="key" select="$key" />
		<xsl:with-param name="code" select="concat($ns-symbol-hu,'ft')" />
		<xsl:with-param name="icon" select="'hu-ft'" />
		<xsl:with-param name="symbol_width" select="$sw-hiking-z14"/>
		<xsl:with-param name="symbol_width2" select="$sw-hiking-z16"/>
		<xsl:with-param name="priority" select="$pr-hiking-symbols"/>	
		<xsl:with-param name="variant" select="$variant" />
	</xsl:call-template>

	<xsl:call-template name="render-trail-symbol">
		<xsl:with-param name="key" select="$key" />
		<xsl:with-param name="code" select="concat($ns-symbol-hu,'palp')" />
		<xsl:with-param name="icon" select="'hu-palp'" />
		<xsl:with-param name="symbol_width" select="$sw-hiking-z14"/>
		<xsl:with-param name="symbol_width2" select="$sw-hiking-z16"/>
		<xsl:with-param name="priority" select="$pr-hiking-symbols"/>	
		<xsl:with-param name="variant" select="$variant" />
	</xsl:call-template>

	<xsl:call-template name="render-trail-symbol">
		<xsl:with-param name="key" select="$key" />
		<xsl:with-param name="code" select="concat($ns-symbol-hu,'salp')" />
		<xsl:with-param name="icon" select="'hu-salp'" />
		<xsl:with-param name="symbol_width" select="$sw-hiking-z14"/>
		<xsl:with-param name="symbol_width2" select="$sw-hiking-z16"/>
		<xsl:with-param name="priority" select="$pr-hiking-symbols"/>	
		<xsl:with-param name="variant" select="$variant" />
	</xsl:call-template>

	<xsl:call-template name="render-trail-symbol">
		<xsl:with-param name="key" select="$key" />
		<xsl:with-param name="code" select="concat($ns-symbol-hu,'vcv')" />
		<xsl:with-param name="icon" select="'hu-vcv'" />
		<xsl:with-param name="symbol_width" select="$sw-hiking-z14"/>
		<xsl:with-param name="symbol_width2" select="$sw-hiking-z16"/>
		<xsl:with-param name="priority" select="$pr-hiking-symbols"/>	
		<xsl:with-param name="variant" select="$variant" />
	</xsl:call-template>
</xsl:template>


<xsl:template name="trail-symbol-hu-temple-allcolor">
<xsl:param name="key" />
<xsl:param name="variant" />
	<xsl:call-template name="render-trail-symbol">
		<xsl:with-param name="key" select="$key" />
		<xsl:with-param name="code" select="concat($ns-symbol-hu,'ktmp')" />
		<xsl:with-param name="icon" select="'hu-ktmp'" />
		<xsl:with-param name="symbol_width" select="$sw-hiking-z14"/>
		<xsl:with-param name="symbol_width2" select="$sw-hiking-z16"/>
		<xsl:with-param name="priority" select="$pr-hiking-symbols-minor"/>	
		<xsl:with-param name="variant" select="$variant" />
	</xsl:call-template>

	<xsl:call-template name="render-trail-symbol">
		<xsl:with-param name="key" select="$key" />
		<xsl:with-param name="code" select="concat($ns-symbol-hu,'ptmp')" />
		<xsl:with-param name="icon" select="'hu-ptmp'" />
		<xsl:with-param name="symbol_width" select="$sw-hiking-z14"/>
		<xsl:with-param name="symbol_width2" select="$sw-hiking-z16"/>
		<xsl:with-param name="priority" select="$pr-hiking-symbols-minor"/>	
		<xsl:with-param name="variant" select="$variant" />
	</xsl:call-template>

	<xsl:call-template name="render-trail-symbol">
		<xsl:with-param name="key" select="$key" />
		<xsl:with-param name="code" select="concat($ns-symbol-hu,'stmp')" />
		<xsl:with-param name="icon" select="'hu-stmp'" />
		<xsl:with-param name="symbol_width" select="$sw-hiking-z14"/>
		<xsl:with-param name="symbol_width2" select="$sw-hiking-z16"/>
		<xsl:with-param name="priority" select="$pr-hiking-symbols-minor"/>	
		<xsl:with-param name="variant" select="$variant" />
	</xsl:call-template>
	<xsl:call-template name="render-trail-symbol">
		<xsl:with-param name="key" select="$key" />
		<xsl:with-param name="code" select="concat($ns-symbol-hu,'ztmp')" />
		<xsl:with-param name="icon" select="'hu-ztmp'" />
		<xsl:with-param name="symbol_width" select="$sw-hiking-z14"/>
		<xsl:with-param name="symbol_width2" select="$sw-hiking-z16"/>
		<xsl:with-param name="priority" select="$pr-hiking-symbols-minor"/>	
		<xsl:with-param name="variant" select="$variant" />
	</xsl:call-template>
</xsl:template>

<xsl:template name="trail-symbol-hu-special-1">
<xsl:param name="key" />
<xsl:param name="variant" />
	<xsl:call-template name="render-trail-symbol">
		<xsl:with-param name="key" select="$key" />
		<xsl:with-param name="code" select="concat($ns-symbol-hu,'kpec')" />
		<xsl:with-param name="icon" select="'hu-kpec'" />
		<xsl:with-param name="symbol_width" select="$sw-hiking-z14"/>
		<xsl:with-param name="symbol_width2" select="$sw-hiking-z16"/>
		<xsl:with-param name="priority" select="$pr-hiking-symbols-minor"/>	
		<xsl:with-param name="variant" select="$variant" />
	</xsl:call-template>

	<xsl:call-template name="render-trail-symbol">
		<xsl:with-param name="key" select="$key" />
		<xsl:with-param name="code" select="concat($ns-symbol-hu,'keml')" />
		<xsl:with-param name="icon" select="'hu-keml'" />
		<xsl:with-param name="symbol_width" select="$sw-hiking-z14"/>
		<xsl:with-param name="symbol_width2" select="$sw-hiking-z16"/>
		<xsl:with-param name="priority" select="$pr-hiking-symbols-minor"/>	
		<xsl:with-param name="variant" select="$variant" />
	</xsl:call-template>

	<xsl:call-template name="render-trail-symbol">
		<xsl:with-param name="key" select="$key" />
		<xsl:with-param name="code" select="concat($ns-symbol-hu,'katlv')" />
		<xsl:with-param name="icon" select="'hu-katlv'" />
		<xsl:with-param name="symbol_width" select="$sw-hiking-z14"/>
		<xsl:with-param name="symbol_width2" select="$sw-hiking-z16"/>
		<xsl:with-param name="priority" select="$pr-hiking-symbols-minor"/>	
		<xsl:with-param name="variant" select="$variant" />
	</xsl:call-template>
</xsl:template>

<xsl:template name="trail-symbol-hu-ski-3">
<xsl:param name="key" />
<xsl:param name="variant" />
	<xsl:call-template name="render-trail-symbol">
		<xsl:with-param name="key" select="$key" />
		<xsl:with-param name="code" select="concat($ns-symbol-hu,'px')" />
		<xsl:with-param name="icon" select="'hu-px'" />
		<xsl:with-param name="symbol_width" select="$sw-hiking-z14"/>
		<xsl:with-param name="symbol_width2" select="$sw-hiking-z16"/>
		<xsl:with-param name="priority" select="$pr-hiking-symbols-minor"/>	
		<xsl:with-param name="variant" select="$variant" />
	</xsl:call-template>
	<xsl:call-template name="render-trail-symbol">
		<xsl:with-param name="key" select="$key" />
		<xsl:with-param name="code" select="concat($ns-symbol-hu,'kx')" />
		<xsl:with-param name="icon" select="'hu-kx'" />
		<xsl:with-param name="symbol_width" select="$sw-hiking-z14"/>
		<xsl:with-param name="symbol_width2" select="$sw-hiking-z16"/>
		<xsl:with-param name="priority" select="$pr-hiking-symbols-minor"/>	
		<xsl:with-param name="variant" select="$variant" />
	</xsl:call-template>
</xsl:template>


</xsl:stylesheet>