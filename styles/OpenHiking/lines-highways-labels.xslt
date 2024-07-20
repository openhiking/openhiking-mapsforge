<?xml-stylesheet type="text/xsl"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<!-- 
# OpenHikingMap
#
# Highway labels
#
# Copyright (c) 2022-2023 OpenHiking contributors
# SPDX-License-Identifier: GPL-3.0-only
-->


<xsl:template name="lines-highways-labels">

<rule  e="way" k="highway" v="*">
  <rule e="way" k="area" v="~|no|false">
    <rule e="way" k="tunnel" v="~|no">
        <rule e="way" k="highway" v="footway|platform|path|bridleway|cycleway|via_ferrata|steps" zoom-min="16">
            <pathText k="name" dy="0.5" font-style="bold" font-size="9" stroke="#FFFFFF" stroke-width="3"/>        
        </rule>
        <rule e="way" k="highway" v="track" zoom-min="16">
            <rule e="way" k="tracktype" v="grade1|grade2" zoom-min="15">
                <pathText k="name" font-style="bold" font-size="11" stroke="#FFFFFF" stroke-width="3" repeat-gap="160"/>
            </rule>
            <rule e="way" k="tracktype" v="grade3|grade4|grade5|~" zoom-min="16">	
                <pathText k="name" dy="0.5" font-style="bold" font-size="10" stroke="#FFFFFF" stroke-width="3" repeat-gap="150"/>            
            </rule>
        </rule>                
        <rule e="way" k="name" v="~" zoom-min="14">
            <rule e="way" k="highway" v="footway|platform|path|bridleway|cycleway|via_ferrata|steps|track" >        
                <rule e="way" k="trail_color" v="blue" zoom-min="14">
                    <pathText k="route_ref_hiking" dy="2" repeat-gap="240" font-style="bold" font-size="12" fill="#0025fd" stroke="#FFFFFF" stroke-width="2"/>        
                </rule>
                <rule e="way" k="trail_color" v="red" zoom-min="14">
                    <pathText k="route_ref_hiking" dy="2" repeat-gap="240" font-style="bold" font-size="12" fill="#F80000" stroke="#FFFFFF" stroke-width="2"/>        
                </rule>
                <rule e="way" k="trail_color" v="yellow" zoom-min="14">
                    <pathText k="route_ref_hiking" dy="2" repeat-gap="240" font-style="bold" font-size="12" fill="#fe9e00" stroke="#FFFFFF" stroke-width="2"/>        
                </rule>
                <rule e="way" k="trail_color" v="green" zoom-min="14">
                    <pathText k="route_ref_hiking" dy="2" repeat-gap="240" font-style="bold" font-size="12" fill="#069e03" stroke="#FFFFFF" stroke-width="2"/>        
                </rule>
            </rule>
        </rule>
        <rule e="way" k="highway" v="service|living_street|residential|unclassified|pedestrian" zoom-min="15">
            <pathText k="name" font-style="bold" font-size="11" stroke="#FFFFFF" stroke-width="3" repeat-gap="180"/>
        </rule>
        <rule e="way" k="highway" v="raceway" zoom-min="15">
            <pathText k="name" dy="0.5" font-style="bold" font-size="11" stroke="#FFFFFF" stroke-width="3" repeat-gap="180"/>
        </rule>
        <rule e="way" k="highway" v="tertiary|tertiary_link" zoom-min="14">
            <pathText k="name" dy="0.5" font-style="bold" font-size="11" stroke="#FFFFFF" stroke-width="3" repeat-gap="200"/>  
        </rule>
        <rule e="way" k="highway" v="secondary|secondary_link" zoom-min="13">
            <pathText k="name" dy="0.5" font-style="bold" font-size="11" stroke="#FFFFFF" stroke-width="3" repeat-gap="200"/>   
        </rule>
        <rule e="way" k="highway" v="primary|primary_link" zoom-min="12">
            <pathText k="name" dy="0.5" font-style="bold" font-size="11" stroke="#FFFFFF" stroke-width="3" repeat-gap="200"/>
        </rule>
        <rule e="way" k="highway" v="trunk" zoom-min="11">
            <caption k="ref" font-style="bold" font-size="9" fill="#FFFFFF" stroke="#1076BA" stroke-width="4" />       
        </rule>
        <rule e="way" k="highway" v="motorway" zoom-min="11">
            <caption k="ref" font-style="bold" font-size="9" fill="#FFFFFF" stroke="#1076BA" stroke-width="4" />        
        </rule>
    </rule>
</rule>    
</rule>



</xsl:template>
</xsl:stylesheet>