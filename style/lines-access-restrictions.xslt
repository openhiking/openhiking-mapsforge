<?xml-stylesheet type="text/xsl"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<!-- 
# OpenHikingMap
#
# Access restrictions on highways
#
# Copyright (c) 2022-2023 OpenHiking contributors
# SPDX-License-Identifier: GPL-3.0-only
-->
<xsl:template name="lines-access-restrictions">
<rule cat="restricted_access" e="way" k="highway" v="*" >
    <rule e="way" k="access" v="no" >
        <rule e="way" k="foot" v="~|no" >    
            <xsl:call-template name="access-restriction-rules"/>
        </rule>            
    </rule>
    <rule e="way" k="access" v="~|yes" >
        <rule e="way" k="foot" v="no" >    
            <xsl:call-template name="access-restriction-rules"/>
        </rule>            
    </rule>
</rule>

</xsl:template>

<xsl:template name="access-restriction-rules">
<rule e="way" k="highway" v="steps|path|footway|bridleway|cycleway" zoom-min="{$zm-path}">
    <line stroke="{$lc-restricted}" stroke-width="{$lw-restricted}" stroke-dasharray="{$da-restricted}" stroke-linecap="butt" scale="all" /> 
</rule>
<rule e="way" k="highway" v="service|living_street|residential|unclassified" >
    <rule e="way" k="surface" v="{$surface-unpaved-hard}|{$surface-unpaved-soft}" zoom-min="{$zm-track}">
        <line stroke="{$lc-restricted}" stroke-width="{$lw-restricted}" stroke-dasharray="{$da-restricted}" stroke-linecap="butt" scale="all" />     
    </rule>                
</rule>                
<rule e="way" k="highway" v="track" zoom-min="{$zm-track}">
    <rule e="way" k="surface" v="{$surface-paved}" zoom-min="{$zm-unclassified}">
        <line stroke="{$lc-restricted}" stroke-width="{$lw-restricted}" stroke-dasharray="{$da-restricted}" stroke-linecap="butt" scale="all" /> 
    </rule>
    <rule e="way" k="surface" v="~|{$surface-unpaved-hard}|{$surface-unpaved-soft}" zoom-min="{$zm-track}">
        <line stroke="{$lc-restricted}" stroke-width="{$lw-restricted}" stroke-dasharray="{$da-restricted}" stroke-linecap="butt" scale="all" /> 
    </rule>
</rule>    
<rule e="way" k="highway" v="service" >
    <rule e="way" k="surface" v="~|{$surface-paved}" zoom-min="{$zm-service}">
        <line stroke="{$lc-restricted}" stroke-width="{$lw-restricted}" stroke-dasharray="{$da-restricted}" stroke-linecap="butt" scale="all" />     
    </rule>                
</rule>                
<rule e="way" k="highway" v="living_street|residential" >
    <rule e="way" k="surface" v="~|{$surface-paved}" zoom-min="{$zm-residential}">
        <line stroke="{$lc-restricted}" stroke-width="{$lw-restricted}" stroke-dasharray="{$da-restricted}" stroke-linecap="butt" scale="all" />     
    </rule>                
</rule>                
<rule e="way" k="highway" v="pedestrian" zoom-min="{$zm-pedestrian}">
    <line stroke="{$lc-restricted}" stroke-width="{$lw-restricted}" stroke-dasharray="{$da-restricted}" stroke-linecap="butt" scale="all"  /> 
</rule>
<rule e="way" k="highway" v="unclassified" >
    <rule e="way" k="surface" v="~|{$surface-paved}" zoom-min="{$zm-unclassified}">
        <line stroke="{$lc-restricted}" stroke-width="{$lw-restricted}" stroke-dasharray="{$da-restricted}" stroke-linecap="butt" scale="all" />     
    </rule>                
</rule>                
</xsl:template>

</xsl:stylesheet>