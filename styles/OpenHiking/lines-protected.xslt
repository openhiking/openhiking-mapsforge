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
<!--#39CA20 #95588d42-->
<xsl:variable name="lc-protected">#588d42</xsl:variable>
<xsl:variable name="lc-protected-light">#40588d42</xsl:variable>
<xsl:variable name="lc-protected-strictly">#FF956A</xsl:variable>
<xsl:variable name="lc-protected-strictly-light">#40FF956A</xsl:variable>


<rule cat="protected_area" e="way" k="boundary" v="national_park" >
    <rule e="any" k="*" v="*" zoom-min="9"  zoom-max="10">
        <line stroke="{$lc-protected-light}" dy="{($lw-national-park-1-wide - $lw-national-park-1) div 2 }" stroke-width="{$lw-national-park-1-wide}"/>              
        <line stroke="{$lc-protected}" stroke-width="{$lw-national-park-1}"/>          
    </rule> 
    <rule e="any" k="*" v="*" zoom-min="11"  zoom-max="12">
        <line stroke="{$lc-protected-light}" dy="{($lw-national-park-2-wide - $lw-national-park-2) div 2 }" stroke-width="{$lw-national-park-2-wide}"/>              
        <line stroke="{$lc-protected}" stroke-width="{$lw-national-park-2}"/>          
    </rule> 
    <rule e="any" k="*" v="*"  zoom-min="13"  zoom-max="14">
        <line stroke="{$lc-protected-light}" dy="{($lw-national-park-3-wide - $lw-national-park-3) div 2 }" stroke-width="{$lw-national-park-3-wide}"/>              
        <line stroke="{$lc-protected}" stroke-width="{$lw-national-park-3}"/>          
    </rule> 
    <rule e="any" k="*" v="*" zoom-min="15"  >
        <line stroke="{$lc-protected-light}" dy="{($lw-national-park-4-wide - $lw-national-park-4) div 2 }" stroke-width="{$lw-national-park-4-wide}"/>              
        <line stroke="{$lc-protected}" stroke-width="{$lw-national-park-4}"/>          
    </rule> 
    <rule e="any" k="*" v="*" zoom-min="9"  >
        <caption k="name" font-style="bold_italic" font-family="serif" font-size="14" fill="#588d42"  />
    </rule>
</rule>


<rule cat="protected_area" e="way" k="boundary" v="protected_area">
    <rule e="any" k="protect_class" v="1" >
        <rule e="any" k="*" v="*" zoom-min="12"  zoom-max="14">
            <line stroke="{$lc-protected-strictly-light}" dy="{($lw-protected-strictly-2-wide - $lw-protected-strictly-2) div 2 }" stroke-width="{$lw-protected-strictly-2-wide}"/>          
            <line stroke="{$lc-protected-strictly}" stroke-width="{$lw-protected-strictly-2}"/>          
        </rule> 
        <rule e="any" k="*" v="*" zoom-min="15"  zoom-max="16">
            <line stroke="{$lc-protected-strictly-light}" dy="{($lw-protected-strictly-3-wide - $lw-protected-strictly-3) div 2 }" stroke-width="{$lw-protected-strictly-3-wide}"/>          
            <line stroke="{$lc-protected-strictly}" stroke-width="{$lw-protected-strictly-3}"/>                              
        </rule> 
        <rule e="any" k="*" v="*" zoom-min="17"  >
            <line stroke="{$lc-protected-strictly-light}" dy="{($lw-protected-strictly-4-wide - $lw-protected-strictly-4) div 2 }" stroke-width="{$lw-protected-strictly-4-wide}"/>          
            <line stroke="{$lc-protected-strictly}" stroke-width="{$lw-protected-strictly-4}"/>                                      
        </rule>         
        <rule e="any" k="*" v="*" zoom-min="12" zoom-max="14"  >
            <caption k="name" font-style="bold_italic" font-family="serif" font-size="11" stroke="#ff4a35" fill="#ff7f5a"  />
        </rule>
        <rule e="any" k="*" v="*" zoom-min="15"  >
            <caption k="name" font-style="bold_italic" font-family="serif" font-size="12" stroke="#ff4a35" fill="#ff7f5a"  />
        </rule>
    </rule>        
    <rule e="any" k="protect_class" v="2|~" >
        <rule e="any" k="*" v="*" zoom-min="12"  zoom-max="13">
            <line stroke="{$lc-protected-light}" dy="{($lw-protected-area-2-wide - $lw-protected-area-2) div 2 }" stroke-width="{$lw-protected-area-2-wide}"/>          
            <line stroke="{$lc-protected}" stroke-width="{$lw-protected-area-2}"/>          
        </rule> 
        <rule e="any" k="*" v="*" zoom-min="14"  zoom-max="15">
            <line stroke="{$lc-protected-light}" dy="{($lw-protected-area-3-wide - $lw-protected-area-3) div 2 }" stroke-width="{$lw-protected-area-3-wide}"/>          
            <line stroke="{$lc-protected}" stroke-width="{$lw-protected-area-3}"/>          
        </rule> 
        <rule e="any" k="*" v="*" zoom-min="16"  >
            <line stroke="{$lc-protected-light}" dy="{($lw-protected-area-4-wide - $lw-protected-area-4) div 2 }" stroke-width="{$lw-protected-area-4-wide}"/>          
            <line stroke="{$lc-protected}" stroke-width="{$lw-protected-area-4}"/>          
        </rule> 
        <rule e="any" k="*" v="*" zoom-min="12"  zoom-max="14">
            <caption k="name" font-style="bold_italic" font-family="serif" font-size="11" fill="#95588d42"  />
        </rule>
        <rule e="any" k="*" v="*" zoom-min="15"  >
            <caption k="name" font-style="bold_italic" font-family="serif" font-size="12" fill="#95588d42"  />
        </rule>
    </rule>
</rule>


</xsl:template>
</xsl:stylesheet>