<?xml-stylesheet type="text/xsl"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<!-- 
# OpenHikingMap
#
# Point rendering: Places
#
# Copyright (c) 2022-2023 OpenHiking contributors
# SPDX-License-Identifier: GPL-3.0-only
-->
<xsl:template name="points-places">
<rule e="node" k="place" v="city">
    <rule e="node" k="*" v="*" zoom-min="6" zoom-max="7">    
        <caption k="name" font-style="bold_italic" font-size="14" fill="#000000" stroke="#ffffff" stroke-width="3" priority="{$pr-city}"/>
    </rule>
    <rule e="node" k="*" v="*" zoom-min="8" zoom-max="9">    
        <caption k="name" font-style="bold_italic" font-size="16" fill="#000000" stroke="#ffffff" stroke-width="3" priority="{$pr-city}"/>
    </rule>
    <rule e="node" k="*" v="*" zoom-min="10" zoom-max="14">    
        <caption k="name" font-style="bold_italic" font-size="18" fill="#000000" stroke="#ffffff" stroke-width="3" priority="{$pr-city}"/>
    </rule>
</rule>

<rule e="node" k="place" v="town" >
    <rule e="node" k="*" v="*" zoom-min="9" zoom-max="10">
        <caption k="name" font-style="bold" font-size="14" fill="#000000" stroke="#ffffff" stroke-width="3" priority="{$pr-town}"/>
    </rule>
    <rule e="node" k="*" v="*" zoom-min="11" zoom-max="12">
        <caption k="name" font-style="bold" font-size="16" fill="#000000" stroke="#ffffff" stroke-width="3" priority="{$pr-town}"/>
    </rule>
    <rule e="node" k="*" v="*" zoom-min="13" zoom-max="15">
        <caption k="name" font-style="bold" font-size="18" fill="#000000" stroke="#ffffff" stroke-width="3" priority="{$pr-town}"/>
    </rule>
</rule>

<rule e="node" k="place" v="suburb" >
    <rule e="node" k="*" v="*" zoom-min="12" zoom-max="12">
        <caption k="name" font-style="normal" font-size="12" fill="#000000" stroke="#ffffff" stroke-width="3" priority="{$pr-suburb}" display="always"/>
    </rule>
    <rule e="node" k="*" v="*" zoom-min="13" zoom-max="14">
        <caption k="name" font-style="normal" font-size="14" fill="#000000" stroke="#ffffff" stroke-width="3" priority="{$pr-suburb}" display="ifspace"/>
    </rule>
    <rule e="node" k="*" v="*" zoom-min="15" zoom-max="16">
        <caption k="name" font-style="normal" font-size="16" fill="#000000" stroke="#ffffff" stroke-width="3" priority="{$pr-suburb}" display="ifspace"/>
    </rule>
</rule>


<rule e="node" k="place" v="village" >
    <rule e="node" k="*" v="*" zoom-min="10" zoom-max="11">
        <caption k="name" font-style="normal" font-size="11" fill="#000000" stroke="#ffffff" stroke-width="2" priority="{$pr-village}" display="ifspace"/>
    </rule>
    <rule e="node" k="*" v="*" zoom-min="12" zoom-max="12">
        <caption k="name" font-style="bold" font-size="14" fill="#000000" stroke="#ffffff" stroke-width="3" priority="{$pr-village}" display="ifspace"/>
    </rule>
    <rule e="node" k="*" v="*" zoom-min="13" zoom-max="14">
        <caption k="name" font-style="normal" font-size="16" fill="#000000" stroke="#ffffff" stroke-width="3" priority="{$pr-village}" display="always"/>
    </rule>
    <rule e="node" k="*" v="*" zoom-min="15" zoom-max="18">
        <caption k="name" font-style="normal" font-size="18" fill="#000000" stroke="#ffffff" stroke-width="3" priority="{$pr-village}" display="always"/>
    </rule>
</rule>


<rule e="node" k="place" v="island|islet" >
    <rule e="node" k="*" v="*" zoom-min="12" zoom-max="14">
        <caption k="name" font-style="italic" font-size="12" fill="#000000" stroke="#ffffff" stroke-width="3" priority="{$pr-island}" />
    </rule>
    <rule e="node" k="*" v="*" zoom-min="15" >
        <caption k="name" font-style="italic" font-size="14" fill="#000000" stroke="#ffffff" stroke-width="3" priority="{$pr-island}" />
    </rule>
</rule>

<rule e="node" k="place" v="hamlet" zoom-min="13" zoom-max="18">
    <caption k="name" font-style="normal" font-size="11" fill="#000000" stroke="#ffffff" stroke-width="2" priority="{$pr-hamlet}"/>
</rule>
<rule e="node" k="place" v="locality" zoom-min="14" >
    <caption k="name" font-style="italic" font-size="12" fill="#666666" stroke="#ffffff" stroke-width="1.2" priority="{$pr-locality}"/>
</rule>


</xsl:template>
</xsl:stylesheet>