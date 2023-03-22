<?xml-stylesheet type="text/xsl"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<!-- 
# OpenHikingMap
#
# Lines rendering: Protected areas
#
# Copyright (c) 2022-2023 OpenHiking contributors
# SPDX-License-Identifier: GPL-3.0-only
-->

<xsl:template name="lines-protected">
<xsl:variable name="prot-class-1-line-color">#FF956A</xsl:variable>
<xsl:variable name="prot-class-2-line-color">#39CA20</xsl:variable>

<!--
<rule cat="protected_area" e="way" k="boundary" v="national_park"  zoom-min="13">
    <rule e="any" k="*" v="*" zoom-min="13"  zoom-max="15">
        <line stroke="#39CA20" stroke-width="{$lw-protected-area}" stroke-dasharray="3,3" scale="all"/>          
    </rule> 
    <rule e="any" k="*" v="*" zoom-min="16"  >
        <line stroke="#39CA20" stroke-width="{$lw-protected-area-l2}" stroke-dasharray="3,3" scale="all"/>                  
    </rule> 
    <rule e="any" k="*" v="*" zoom-min="13"  >
        <caption k="name" font-style="bold_italic" font-family="serif" font-size="12" fill="#95588d42"  />
    </rule>
</rule>
-->

<rule cat="protected_area" e="way" k="boundary" v="protected_area">
    <rule e="any" k="protect_class" v="1" >
        <rule e="any" k="*" v="*" zoom-min="13"  zoom-max="15">
            <line stroke="#FF956A" stroke-width="{$lw-protected-area}" stroke-dasharray="3,3" scale="all"/>          
        </rule> 
        <rule e="any" k="*" v="*" zoom-min="16"  zoom-max="17">
            <line stroke="#FF956A" stroke-width="{$lw-protected-area-l2}" stroke-dasharray="2,2" scale="all"/>                  
        </rule> 
        <rule e="any" k="*" v="*" zoom-min="18"  >
            <line stroke="#FF956A" stroke-width="{$lw-protected-area-l3}" stroke-dasharray="2,2" scale="all"/>                  
        </rule> 
    </rule>        
    <rule e="any" k="protect_class" v="2|~" >
        <rule e="any" k="*" v="*" zoom-min="13"  zoom-max="15">
            <line stroke="#39CA20" stroke-width="{$lw-protected-area}" stroke-dasharray="3,3" scale="all"/>          
        </rule> 
        <rule e="any" k="*" v="*" zoom-min="16"  zoom-max="17">
            <line stroke="#39CA20" stroke-width="{$lw-protected-area-l2}" stroke-dasharray="2,2" scale="all"/>                  
        </rule> 
        <rule e="any" k="*" v="*" zoom-min="18"  >
            <line stroke="#39CA20" stroke-width="{$lw-protected-area-l3}" stroke-dasharray="2,2" scale="all"/>                  
        </rule> 
    </rule>
    <rule e="any" k="*" v="*" zoom-min="13"  zoom-max="14">
        <caption k="name" font-style="bold_italic" font-family="serif" font-size="11" fill="#95588d42"  />
    </rule>
    <rule e="any" k="*" v="*" zoom-min="14"  >
        <caption k="name" font-style="bold_italic" font-family="serif" font-size="12" fill="#95588d42"  />
    </rule>
</rule>

</xsl:template>
</xsl:stylesheet>