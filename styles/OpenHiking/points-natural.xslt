<?xml-stylesheet type="text/xsl"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<!-- 
# OpenHikingMap
#
# Point rendering: Natural
#
# Copyright (c) 2022-2024 OpenHiking contributors
# SPDX-License-Identifier: GPL-3.0-only
-->
<xsl:template name="points-natural">

<rule e="node" k="natural" v="peak" >
    <rule e="node" k="importance" v="national" zoom-min="10" zoom-max="10">   
        <symbol id="peak" src="{$naturalIconPath}/peak.svg" symbol-width="8" priority="{$pr-peak-named}"/>
        <caption  k="name" font-size="11" fill="#693600" font-style="bold_italic"  position="above"
        stroke="#FFFFFF" stroke-width="1.5" symbol-id="peak" priority="{$pr-label-peak}" />
        <caption fill="#693600" font-size="10" font-style="bold" k="ele" position="below"
            stroke="#FFFFFF" stroke-width="1.5" symbol-id="peak" priority="{$pr-label-peak}"/>
    </rule>
    <rule e="node" k="summit:cross|name|importance" v="*" zoom-min="11" zoom-max="12">   
        <rule e="node" k="*" v="*" zoom-min="11" zoom-max="11">  
            <symbol id="peak" src="{$naturalIconPath}/peak.svg" symbol-width="6" priority="{$pr-peak-named}"/>              
        </rule>
        <rule e="node" k="*" v="*" zoom-min="12" zoom-max="12">        
            <symbol id="peak" src="{$naturalIconPath}/peak.svg" symbol-width="8" priority="{$pr-peak-named}"/>        
            <caption  k="name" font-size="11" fill="#693600" font-style="bold_italic"  position="above"
            stroke="#FFFFFF" stroke-width="1.5" symbol-id="peak" priority="{$pr-label-peak}" />
        </rule>
        <caption fill="#693600" font-size="9" font-style="bold" k="ele" position="below"
            stroke="#FFFFFF" stroke-width="1.5" symbol-id="peak" priority="{$pr-ele-peak}"/>
    </rule>
    <rule e="node" k="summit:cross" v="*" zoom-min="13" >   
        <rule e="node" k="*" v="*" zoom-min="14" zoom-max="15">        
            <symbol id="peak" src="{$naturalIconPath}/summit_cross.svg" symbol-width="10" priority="{$pr-peak-named}"/>
        </rule>
        <rule e="node" k="*" v="*" zoom-min="16">
            <symbol id="peak" src="{$naturalIconPath}/summit_cross.svg" symbol-width="13" priority="{$pr-peak-named}"/>
        </rule>
    </rule>
    <rule e="node" k="summit:cross" v="~" zoom-min="13">
        <rule e="node" k="name" v="*" >    
            <rule e="node" k="*" v="*" zoom-max="14">        
                <symbol id="peak" src="{$naturalIconPath}/peak.svg" symbol-width="8" priority="{$pr-peak-named}"/>
            </rule>
            <rule e="node" k="*" v="*" zoom-min="15">
                <symbol id="peak" src="{$naturalIconPath}/peak.svg" symbol-width="10" priority="{$pr-peak-named}"/>
            </rule>
        </rule>
        <rule e="node" k="name" v="~" >    
            <symbol id="peak" src="{$naturalIconPath}/peak.svg" symbol-width="8" priority="{$pr-peak}"/>
            <caption fill="#693600" font-size="10" font-style="bold" k="ele" position="below"
                stroke="#FFFFFF" stroke-width="1.5" symbol-id="peak" priority="{$pr-label-peak}"/>
        </rule>
    </rule>
    <rule e="node" k="summit:cross|name" v="*" zoom-min="13" >
        <caption  k="name" font-size="12" fill="#693600" font-style="bold_italic"  position="above"
        stroke="#FFFFFF" stroke-width="1.5" symbol-id="peak" priority="{$pr-label-peak}" />
        <caption fill="#693600" font-size="11" font-style="bold" k="ele" position="below"
            stroke="#FFFFFF" stroke-width="1.5" symbol-id="peak" priority="{$pr-ele-peak}"/>
    </rule>
</rule>

<rule e="node" k="natural" v="volcano" >
    <rule e="node" k="*" v="*" zoom-min="11" zoom-max="11">  
        <symbol id="volcano" src="{$naturalIconPath}/volcano.svg" symbol-width="6" priority="{$pr-peak-named}"/>              
    </rule>
    <rule e="node" k="*" v="*" zoom-min="12" zoom-max="12">        
        <symbol id="volcano" src="{$naturalIconPath}/volcano.svg" symbol-width="8" priority="{$pr-peak-named}"/>        
        <caption  k="name" font-size="11" fill="#693600" font-style="bold_italic"  position="above"
        stroke="#FFFFFF" stroke-width="1.5" symbol-id="volcano" priority="{$pr-label-peak}" />
    </rule>
    <rule e="node" k="*" v="*" zoom-min="13" zoom-max="14">        
        <symbol id="volcano" src="{$naturalIconPath}/volcano.svg" symbol-width="8" priority="{$pr-peak-named}"/>
    </rule>
    <rule e="node" k="*" v="*" zoom-min="15">
        <symbol id="volcano" src="{$naturalIconPath}/volcano.svg" symbol-width="9" priority="{$pr-peak-named}"/>
    </rule>
    <rule e="node" k="*" v="*" zoom-min="13" >
        <caption  k="name" font-size="12" fill="#693600" font-style="bold_italic"  position="above"
        stroke="#FFFFFF" stroke-width="1.5" symbol-id="volcano" priority="{$pr-label-peak}" />
        <caption fill="#693600" font-size="11" font-style="bold" k="ele" position="below"
            stroke="#FFFFFF" stroke-width="1.5" symbol-id="volcano" priority="{$pr-ele-peak}"/>
    </rule>
</rule>

<rule  e="node" k="geological" v="volcanic_vent" zoom-min="14">
    <rule  e="any" k="*" v="*" zoom-max="15">
        <symbol id="volcanic_vent" src="{$naturalIconPath}/volcanic_vent.svg" symbol-width="20" display="always" priority="{$pr-geyser}"/>
    </rule> 
    <rule  e="any" k="*" v="*" zoom-min="16">
        <symbol id="volcanic_vent" src="{$naturalIconPath}/volcanic_vent.svg" symbol-width="24" display="always" priority="{$pr-geyser}"/>
    </rule>                         
    <rule e="node" k="*" v="*" zoom-min="16">
    <caption k="name" symbol-id="volcanic_vent" 
    font-style="bold" font-size="10" fill="#4040ff" stroke="#ffffff" stroke-width="2" priority="{$pr-label-natural}"/>
    </rule>
</rule>

<rule  e="node" k="natural" v="geyser" zoom-min="14">
    <rule  e="any" k="*" v="*" zoom-max="15">
        <symbol id="geyser" src="{$naturalIconPath}/geyser.svg" symbol-width="20" display="always" priority="{$pr-geyser}"/>
    </rule> 
    <rule  e="any" k="*" v="*" zoom-min="16">
        <symbol id="geyser" src="{$naturalIconPath}/geyser.svg" symbol-width="24" display="always" priority="{$pr-geyser}"/>
    </rule>                         
    <rule e="node" k="*" v="*" zoom-min="16">
    <caption k="name" symbol-id="geyser" 
    font-style="bold" font-size="10" fill="#4040ff" stroke="#ffffff" stroke-width="2" priority="{$pr-label-natural}"/>
    </rule>
</rule>


<rule e="node" k="natural" v="cliff" zoom-min="15">
    <symbol id="cliff" src="{$naturalIconPath}/cliff.svg" priority="{$pr-cliff}"/>
    <rule e="any" k="*" v="*" >
        <caption fill="#7b0000" font-size="10" font-style="bold" k="name" position="below"
            stroke="#FFFFFF" stroke-width="2.0" symbol-id="cliff" priority="{$pr-label-natural}"/>
    </rule>
</rule>

<rule e="node" k="natural" v="rock|arch" zoom-min="15">
    <symbol id="rock" src="{$naturalIconPath}/rock.svg" priority="{$pr-rock}"/>
    <rule e="any" k="*" v="*" >
        <caption fill="#7b0000" font-size="10" font-style="bold" k="name" position="below"
            stroke="#FFFFFF" stroke-width="2.0" symbol-id="rock" priority="{$pr-label-natural}"/>
    </rule>
</rule>

<rule e="node" k="natural" v="stone" zoom-min="15">
    <symbol id="stone" src="{$naturalIconPath}/stone.svg" symbol-width="22" priority="{$pr-rock}"/>
    <rule e="any" k="*" v="*" >
        <caption fill="#7b0000" font-size="10" font-style="bold" k="name" position="below"
            stroke="#FFFFFF" stroke-width="2.0" symbol-id="stone" priority="{$pr-label-natural}"/>
    </rule>
</rule>


<!-- 
<rule e="any" k="mountain_pass" v="yes" zoom-min="14">
    <symbol id="pass" src="{$naturalIconPath}//mountain_pass.svg" />
    <rule e="any" k="*" v="*" zoom-min="15">
        <caption fill="#666666" font-size="12" font-style="bold" k="ele" position="above"
             stroke="#FFFFFF" stroke-width="2.0" symbol-id="pass" />
    </rule>
</rule>
-->

<rule e="any" k="natural" v="saddle" zoom-min="14">
    <rule e="any" k="name" v="*" >
        <symbol id="saddle" src="{$naturalIconPath}/saddle.svg" symbol-width="16" priority="{$pr-saddle}"/>
        <caption k="name"  fill="#000000" font-size="11" font-style="italic"  
            stroke="#FFFFFF" stroke-width="2.0" symbol-id="saddle"  priority="{$pr-label-natural}"/>
    </rule>
</rule>


<rule e="node" k="natural" v="cave_entrance" zoom-min="14">
    <rule  e="any" k="*" v="*" zoom-max="14">
        <symbol id="cave" src="{$naturalIconPath}/cave_entrance.svg" symbol-width="14" priority="{$pr-cave}"/>
    </rule> 
    <rule  e="any" k="*" v="*" zoom-min="15" zoom-max="16">
        <symbol id="cave" src="{$naturalIconPath}/cave_entrance.svg" symbol-width="16" priority="{$pr-cave}"/>
        <caption fill="#7b0000" font-size="11" font-style="bold" k="name" 
            stroke="#FFFFFF" stroke-width="1.5" symbol-id="cave" priority="{$pr-label-natural}"/>
    </rule>                         
    <rule e="any" k="*" v="*" zoom-min="17">
        <symbol id="cave" src="{$naturalIconPath}/cave_entrance.svg" symbol-width="18" priority="{$pr-cave}"/>    
        <caption fill="#7b0000" font-size="12" font-style="bold" k="name" 
            stroke="#FFFFFF" stroke-width="1.5" symbol-id="cave" priority="{$pr-label-cave}"/>
    </rule>

</rule>

<rule e="any" k="natural" v="sinkhole" >
    <rule e="any" k="sinkhole" v="estavelle|pit" zoom-min="15">
        <symbol id="sinkhole" src="{$naturalIconPath}/sinkhole.svg" symbol-width="14" priority="{$pr-sinkhole}"/>
    </rule>
    <rule e="any" k="sinkhole" v="~" zoom-min="15">
        <symbol id="sinkhole" src="{$naturalIconPath}/doline.svg" symbol-width="15" priority="{$pr-sinkhole}"/>
    </rule>
    <rule e="any" k="*" v="*" zoom-min="16">
        <caption fill="#666666" font-size="12" font-style="bold" k="name"
            stroke="#FFFFFF" stroke-width="2.0" symbol-id="sinkhole" priority="{$pr-label-natural}"/>
    </rule>
</rule>

<rule e="node" k="natural" v="spring" >
    <rule e="node" k="seasonal" v="yes" zoom-min="14">
        <rule  e="any" k="*" v="*" zoom-max="15">
            <symbol id="spring" src="{$naturalIconPath}/spring_seasonal.svg" symbol-width="12" priority="{$pr-spring}"/>    
        </rule> 
        <rule  e="any" k="*" v="*" zoom-min="16">
            <symbol id="spring" src="{$naturalIconPath}/spring_seasonal.svg" symbol-width="15" priority="{$pr-spring}"/>    
        </rule>                         
    </rule>
    <rule e="node" k="seasonal" v="~" >
        <rule e="node" k="drinking_water" v="yes" zoom-min="14">
            <rule  e="any" k="*" v="*" zoom-max="15">
                <symbol id="spring" src="{$naturalIconPath}/spring_drinking.svg" symbol-width="16" priority="{$pr-spring-drinking}"/>    
            </rule> 
            <rule  e="any" k="*" v="*" zoom-min="16" zoom-max="17">
                <symbol id="spring" src="{$naturalIconPath}/spring_drinking.svg" symbol-width="18" priority="{$pr-spring-drinking}"/>    
            </rule>     
            <rule  e="any" k="*" v="*" zoom-min="18">
                <symbol id="spring" src="{$naturalIconPath}/spring_drinking.svg" symbol-width="20" priority="{$pr-spring-drinking}"/>    
            </rule>                         
        </rule>        
        <rule e="node" k="drinking_water" v="no" zoom-min="14">
            <rule  e="any" k="*" v="*" zoom-max="15">
                <symbol id="spring" src="{$naturalIconPath}/spring_non_drinking.svg" symbol-width="15" priority="{$pr-spring}"/>    
            </rule> 
            <rule  e="any" k="*" v="*" zoom-min="16" zoom-max="17">
                <symbol id="spring" src="{$naturalIconPath}/spring_non_drinking.svg" symbol-width="17" priority="{$pr-spring}"/>    
            </rule>   
            <rule  e="any" k="*" v="*" zoom-min="18">
                <symbol id="spring" src="{$naturalIconPath}/spring_non_drinking.svg" symbol-width="19" priority="{$pr-spring}"/>    
            </rule>                                                      
        </rule>        
        <rule e="node" k="drinking_water" v="~" zoom-min="14">
            <rule  e="any" k="*" v="*" zoom-max="15">
                <symbol id="spring" src="{$naturalIconPath}/spring.svg" symbol-width="12" priority="{$pr-spring}"/>    
            </rule> 
            <rule  e="any" k="*" v="*" zoom-min="16">
                <symbol id="spring" src="{$naturalIconPath}/spring.svg" symbol-width="15" priority="{$pr-spring}"/>    
            </rule>                         
        </rule>   
    </rule>        
    <rule e="any" k="*" v="*" zoom-min="15">
        <caption fill="#0000f8" font-size="11" font-style="bold"  k="name" position="right"
            stroke="#FFFFFF" stroke-width="2.0" symbol-id="spring" priority="{$pr-label-spring}"/>
    </rule>
</rule>

<rule e="node" k="natural" v="mineral_spring" zoom-min="14">
    <rule  e="any" k="*" v="*" zoom-max="15">
        <symbol id="spring" src="{$naturalIconPath}/mineral_spring.svg" symbol-width="16" priority="{$pr-spring-mineral}"/>    
    </rule> 
    <rule  e="any" k="*" v="*" zoom-min="16">
        <symbol id="spring" src="{$naturalIconPath}/mineral_spring.svg" symbol-width="18" priority="{$pr-spring-mineral}"/>    
    </rule>                         
</rule>


<rule e="node" k="natural" v="hot_spring" zoom-min="14">
    <rule  e="any" k="*" v="*" zoom-max="15">
        <symbol id="hotspring" src="{$naturalIconPath}/hot_spring.svg" symbol-width="12" priority="{$pr-spring}"/>    
    </rule> 
    <rule  e="any" k="*" v="*" zoom-min="16">
        <symbol id="hotspring" src="{$naturalIconPath}/hot_spring.svg" symbol-width="15" priority="{$pr-spring}"/>    
    </rule>                         
    <rule e="any" k="*" v="*" zoom-min="15">
        <caption fill="#0000f8" font-size="12" font-style="bold"  k="name" 
                stroke="#FFFFFF" stroke-width="2.0" symbol-id="hotspring" priority="{$pr-label-spring}"/>
    </rule>
</rule>

<rule  e="node" k="waterway" v="waterfall" zoom-min="13">
    <rule  e="any" k="*" v="*" zoom-max="14">
        <symbol id="waterfall" src="{$naturalIconPath}/waterfall.svg" symbol-width="18" display="always" priority="{$pr-waterfall}"/>
    </rule> 
    <rule  e="any" k="*" v="*" zoom-min="15">
        <symbol id="waterfall" src="{$naturalIconPath}/waterfall.svg" symbol-width="22" display="always" priority="{$pr-waterfall}"/>
    </rule>                         
    <rule e="node" k="*" v="*" zoom-min="15">
    <caption k="name" symbol-id="waterfall" position="below" 
    font-style="bold" font-size="10" fill="#4040ff" stroke="#ffffff" stroke-width="2" priority="{$pr-label-natural}"/>
    </rule>
</rule>

<rule  e="node" k="natural" v="bay" zoom-min="13">
    <!-- 
    <symbol id="bay" src="{$naturalIconPath}/bay.svg" symbol-width="2" priority="{$pr-bay}"/>
    -->
    <caption k="name" 
    font-style="bold" font-size="10" fill="#4040ff" stroke="#ffffff" stroke-width="2" priority="{$pr-label-natural}"/>
</rule>

<rule  e="node" k="natural" v="cape" zoom-min="15">
    <caption k="name" 
    font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2" priority="{$pr-label-natural}"/>
</rule>

<rule e="way" k="natural" v="beach" zoom-min="13">
    <rule  e="any" k="*" v="*" zoom-max="14">
        <symbol id="beach" src="{$naturalIconPath}/beach.svg" symbol-width="13" priority="{$pr-beach}"/>
    </rule>
    <rule  e="any" k="*" v="*" zoom-min="15" zoom-max="16">
        <symbol id="beach" src="{$naturalIconPath}/beach.svg" symbol-width="16" priority="{$pr-beach}"/>
    </rule>
    <rule  e="any" k="*" v="*" zoom-min="17">
        <symbol id="beach" src="{$naturalIconPath}/beach.svg" symbol-width="20" priority="{$pr-beach}"/>
    </rule>
</rule>




<!-- 
<rule e="node" k="natural" v="tree" zoom-min="16">
    <rule e="node" k="name" v="*">
        <symbol id="tree" src="{$naturalIconPath}//tree.png" priority="{$pr-tree}"/>
        <caption k="name" symbol-id="tree" position="below" 
        font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2" priority="{$pr-tree}"/>        
    </rule>
</rule>
-->

</xsl:template>
</xsl:stylesheet>