<?xml-stylesheet type="text/xsl"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<!-- 
# OpenHikingMap
#
# SAC scale coloring
#
# Copyright (c) 2022-2023 OpenHiking contributors
# SPDX-License-Identifier: GPL-3.0-only
-->
<xsl:template name="lines-sac-scale">

<rule cat="hiking_sac_highlight" e="way" k="highway" v="path" zoom-min="{$zm-path}">
    <rule e="way" k="area" v="~|no">
        <rule e="way" k="sac_scale" v="mountain_hiking">
            <line stroke="#84d5ff" stroke-width="{$lw-path}"/>
            <xsl:call-template name="render-sac-symbol">
                <xsl:with-param name="icon" select="'sac_t2.svg'" />
            </xsl:call-template>
        </rule> 
        <rule e="way" k="sac_scale" v="demanding_mountain_hiking">
            <line stroke="#ffa8fd" stroke-width="{$lw-path}"/>          
            <xsl:call-template name="render-sac-symbol">
                <xsl:with-param name="icon" select="'sac_t3.svg'" />
            </xsl:call-template>
        </rule> 
        <rule e="way" k="sac_scale" v="alpine_hiking">
            <line stroke="#ffdd00" stroke-width="{$lw-path + 0.15}"/>
            <xsl:call-template name="render-sac-symbol">
                <xsl:with-param name="icon" select="'sac_t4.svg'" />
            </xsl:call-template>
        </rule> 
        <rule e="way" k="sac_scale" v="demanding_alpine_hiking">
            <line stroke="#ffff19" stroke-width="{$lw-path + 0.15}"/>
            <xsl:call-template name="render-sac-symbol">
                <xsl:with-param name="icon" select="'sac_t5.svg'" />
            </xsl:call-template>
        </rule> 
        <rule e="way" k="sac_scale" v="difficult_alpine_hiking">
            <line stroke="#ffff19" stroke-width="{$lw-path + 0.15}"/>
            <xsl:call-template name="render-sac-symbol">
                <xsl:with-param name="icon" select="'sac_t6.svg'" />
            </xsl:call-template>
        </rule> 
    </rule> 
</rule>  

</xsl:template>

<xsl:template name="render-sac-symbol">
<xsl:param name="icon" />
    <rule e="any" k="*" v="*" zoom-min="15" zoom-max="16">
        <lineSymbol src="{$signsPath}/{$icon}" align-center="true" repeat="true" repeat-start="10" repeat-gap="140" symbol-width="18"  rotate="false" display="always" priority="{$pr-sac-scale}"/>
    </rule>
    <rule e="any" k="*" v="*" zoom-min="17" zoom-max="18">
        <lineSymbol src="{$signsPath}/{$icon}" align-center="true" repeat="true" repeat-start="30" repeat-gap="160" symbol-width="22"  rotate="false" display="always" priority="{$pr-sac-scale}"/>
    </rule>
    <rule e="any" k="*" v="*" zoom-min="19" >
        <lineSymbol src="{$signsPath}/{$icon}" align-center="true" repeat="true" repeat-start="60" repeat-gap="200" symbol-width="24"  rotate="false" display="always" priority="{$pr-sac-scale}"/>
    </rule>            
</xsl:template>
</xsl:stylesheet>
