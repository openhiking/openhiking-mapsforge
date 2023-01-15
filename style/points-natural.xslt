<?xml-stylesheet type="text/xsl"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<!-- 
# OpenHikingMap
#
# Point rendering: Natural
#
# Copyright (c) 2022-2023 OpenHiking contributors
# SPDX-License-Identifier: GPL-3.0-only
-->
<xsl:template name="points-natural">

<rule e="node" k="natural" v="peak" >
    <rule e="node" k="name" v="*" zoom-min="13">
        <symbol id="peak" src="{$symbolPath}/peak.svg" symbol-width="20" priority="{$pr-peak-named}"/>
        <caption  k="name" font-size="11" fill="#693600" font-style="bold_italic"  position="above"
         stroke="#FFFFFF" stroke-width="1.5" symbol-id="peak" priority="{$pr-peak-named}" />
        <rule e="any" k="*" v="*" >
            <caption fill="#693600" font-size="10" font-style="bold" k="ele" position="below"
                stroke="#FFFFFF" stroke-width="1.5" symbol-id="peak" priority="{$pr-peak-ele}"/>
        </rule>
    </rule>
    <rule e="node" k="name" v="~" zoom-min="14">
        <symbol id="peak" src="{$symbolPath}/peak.svg" symbol-width="18" priority="{$pr-peak}"/>
        <rule e="any" k="*" v="*" >
            <caption fill="#000000" font-size="10" font-style="bold" k="ele" position="below"
                stroke="#FFFFFF" stroke-width="2.0" symbol-id="peak" priority="{$pr-peak-ele}"/>
        </rule>
    </rule>
</rule>

<rule e="node" k="natural" v="cliff" zoom-min="15">
    <symbol id="cliff" src="{$symbolPath}/cliff.svg" priority="{$pr-cliff}"/>
    <rule e="any" k="*" v="*" >
            <caption fill="#7b0000" font-size="10" font-style="bold" k="name" position="below"
                stroke="#FFFFFF" stroke-width="2.0" symbol-id="cliff" priority="{$pr-cliff}"/>
    </rule>
</rule>

<rule e="node" k="natural" v="rock" zoom-min="16">
    <symbol id="cliff" src="{$symbolPath}/rock.svg" priority="{$pr-rock}"/>
    <rule e="any" k="*" v="*" >
            <caption fill="#7b0000" font-size="10" font-style="bold" k="name" position="below"
                stroke="#FFFFFF" stroke-width="2.0" symbol-id="rock" priority="{$pr-rock}"/>
    </rule>
</rule>

<rule e="node" k="natural" v="arch" zoom-min="15">
</rule>

<rule e="node" k="natural" v="stone" zoom-min="15">
</rule>
<!-- 
<rule e="any" k="mountain_pass" v="yes" zoom-min="14">
    <symbol id="pass" src="{$symbolPath}//mountain_pass.svg" />
    <rule e="any" k="*" v="*" zoom-min="15">
        <caption fill="#666666" font-size="12" font-style="bold" k="ele" position="above"
             stroke="#FFFFFF" stroke-width="2.0" symbol-id="pass" />
    </rule>
</rule>
-->

<rule e="any" k="natural" v="saddle" zoom-min="14">
    <symbol id="saddle" src="{$symbolPath}/mountain_pass.svg" symbol-width="16" priority="{$pr-saddle}"/>
    <caption k="name"  fill="#000000" font-size="11" font-style="italic"  
        stroke="#FFFFFF" stroke-width="2.0" symbol-id="saddle"  priority="{$pr-saddle}"/>
</rule>

<rule e="any" k="natural" v="geyser" zoom-min="15">
</rule>


<rule e="node" k="natural" v="cave_entrance" zoom-min="14">
    <symbol id="cave" src="{$symbolPath}/cave_entrance.svg" symbol-width="16" priority="{$pr-cave}"/>
    <rule e="any" k="*" v="*" zoom-min="16">
        <caption fill="#7b0000" font-size="10" font-style="bold" k="name" 
            stroke="#FFFFFF" stroke-width="2.0" symbol-id="cave" priority="{$pr-cave}"/>
    </rule>
</rule>

<rule e="any" k="natural" v="sinkhole" zoom-min="16">
    <symbol id="sinkhole" src="{$symbolPath}/sinkhole.svg" symbol-width="15" priority="{$pr-sinkhole}"/>
    <rule e="any" k="*" v="*" zoom-min="16">
        <caption fill="#666666" font-size="12" font-style="bold" k="name"
            stroke="#FFFFFF" stroke-width="2.0" symbol-id="sinkhole" priority="{$pr-sinkhole}"/>
    </rule>
</rule>

<rule e="node" k="natural" v="spring" >
    <rule e="node" k="spring:type" v="hot" zoom-min="14">
        <symbol id="spring" src="{$symbolPath}/hot_spring.svg" priority="{$pr-spring}"/>    
    </rule>
    <rule e="node" k="spring:type" v="~" >
        <rule e="node" k="drinking_water" v="yes" zoom-min="14">
            <symbol id="spring" src="{$symbolPath}/spring_drinking.svg" priority="{$pr-spring-drinking}"/>    
        </rule>        
        <rule e="node" k="drinking_water" v="no" zoom-min="15">
            <symbol id="spring" src="{$symbolPath}/spring_non_drinking.svg" priority="{$pr-spring}"/>    
        </rule>        
        <rule e="node" k="drinking_water" v="~" zoom-min="15">
            <symbol id="spring" src="{$symbolPath}/spring.svg" symbol-width="16" priority="{$pr-spring}"/>    
        </rule>   
    </rule>     
    <rule e="any" k="*" v="*" zoom-min="15">
        <caption fill="#0000f8" font-size="12" font-style="bold"  k="name" position="right"
            stroke="#FFFFFF" stroke-width="2.0" symbol-id="spring" priority="{$pr-spring}"/>
    </rule>
</rule>

<rule e="node" k="natural" v="hot_spring" zoom-min="15">
    <symbol id="hotspring" src="{$symbolPath}/hot_spring.svg" symbol-width="16" priority="{$pr-spring}"/>    
    <rule e="any" k="*" v="*" zoom-min="15">
        <caption fill="#0000f8" font-size="12" font-style="bold"  k="name" 
                stroke="#FFFFFF" stroke-width="2.0" symbol-id="hotspring" priority="{$pr-spring}"/>
    </rule>
</rule>

<rule  e="node" k="waterway" v="waterfall" zoom-min="14">
  <symbol id="waterfall" src="{$symbolPath}/waterfall.svg" symbol-width="18" priority="{$pr-waterfall}"/>
  <rule e="node" k="*" v="*" zoom-min="16">
    <caption k="name" symbol-id="waterfall" position="below" 
    font-style="bold" font-size="10" fill="#4040ff" stroke="#ffffff" stroke-width="2" priority="{$pr-waterfall}"/>
  </rule>
</rule>

<!-- 
<rule e="node" k="natural" v="tree" zoom-min="16">
    <rule e="node" k="name" v="*">
        <symbol id="tree" src="{$symbolPath}//tree.png" priority="{$pr-tree}"/>
        <caption k="name" symbol-id="tree" position="below" 
        font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2" priority="{$pr-tree}"/>        
    </rule>
</rule>
-->

</xsl:template>
</xsl:stylesheet>