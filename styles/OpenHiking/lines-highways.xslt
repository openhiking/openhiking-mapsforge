<?xml-stylesheet type="text/xsl"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<!-- 
# OpenHikingMap
#
# Highways
#
# Copyright (c) 2022-2023 OpenHiking contributors
# SPDX-License-Identifier: GPL-3.0-only
-->

<xsl:template name="lines-highways">

<rule e="way" k="highway" v="*" >
  <rule e="way" k="area" v="~">
        <rule e="way" k="highway" v="footway|platform" zoom-min="{$zm-footway}">
            <line stroke="{$lc-footway}" stroke-width="{$lw-footway}" stroke-linecap="butt"/>          
        </rule>        
        <rule e="way" k="highway" v="path" zoom-min="{$zm-path}">
            <rule e="way" k="sac_scale" v="hiking|mountain_hiking|~" zoom-min="{$zm-path}">
                <rule e="way" k="*" v="*" zoom-min="{$zm-path}" zoom-max="{$zm-level2 - 1}"> 
                    <line stroke="{$lc-path}" stroke-width="{$lw-path}" stroke-dasharray="4,4"  stroke-linecap="butt"/>          
                </rule> 
               <rule e="way" k="*" v="*" zoom-min="{$zm-level2}" zoom-max="{$zm-level3 - 1}"> 
                    <line stroke="{$lc-path}" stroke-width="{$lw-path2}" stroke-dasharray="4,4"  stroke-linecap="butt"/>          
                </rule>       
                <rule e="way" k="*" v="*" zoom-min="{$zm-level3}" zoom-max="{$zm-level4 - 1}"> 
                    <line stroke="{$lc-path}" stroke-width="{$lw-path3}" stroke-dasharray="7,7"  stroke-linecap="butt"/>          
                </rule>       
                <rule e="way" k="*" v="*" zoom-min="{$zm-level4}"> 
                    <line stroke="{$lc-path}" stroke-width="{$lw-path4}" stroke-dasharray="10,10"  stroke-linecap="butt"/>          
                </rule>                                
            </rule>
            <rule e="way" k="sac_scale" v="demanding_mountain_hiking" zoom-min="{$zm-path}">
                <rule e="way" k="*" v="*" zoom-min="{$zm-path}" zoom-max="{$zm-level2 - 1}"> 
                    <line stroke="{$lc-mountain-path}" stroke-width="{$lw-path}" stroke-dasharray="2,2"  stroke-linecap="butt"/>          
                </rule> 
               <rule e="way" k="*" v="*" zoom-min="{$zm-level2}" zoom-max="{$zm-level3 - 1}"> 
                    <line stroke="{$lc-mountain-path}" stroke-width="{$lw-path2}" stroke-dasharray="2,2"  stroke-linecap="butt"/>          
                </rule>                                               
                <rule e="way" k="*" v="*" zoom-min="{$zm-level3}" zoom-max="{$zm-level4 - 1}"> 
                    <line stroke="{$lc-mountain-path}" stroke-width="{$lw-path3}" stroke-dasharray="3,3"  stroke-linecap="butt"/>          
                </rule> 
                <rule e="way" k="*" v="*" zoom-min="{$zm-level4}" > 
                    <line stroke="{$lc-mountain-path}" stroke-width="{$lw-path4}" stroke-dasharray="4,4"  stroke-linecap="butt"/>          
                </rule>                                
            </rule>
            <rule e="way" k="sac_scale" v="alpine_hiking|demanding_alpine_hiking|difficult_alpine_hiking" zoom-min="{$zm-path}">
                <rule e="way" k="*" v="*" zoom-min="{$zm-path}" zoom-max="{$zm-level2 - 1}"> 
                    <line stroke="{$lc-alpine-path}" stroke-width="{$lw-path}" stroke-dasharray="2,2"  stroke-linecap="butt"/>          
                </rule>    
               <rule e="way" k="*" v="*" zoom-min="{$zm-level2}" zoom-max="{$zm-level3 - 1}"> 
                    <line stroke="{$lc-alpine-path}" stroke-width="{$lw-path2}" stroke-dasharray="2,2"  stroke-linecap="butt"/>          
                </rule> 
                <rule e="way" k="*" v="*" zoom-min="{$zm-level3}" zoom-max="{$zm-level4 - 1}"> 
                    <line stroke="{$lc-alpine-path}" stroke-width="{$lw-path3}" stroke-dasharray="3,3"  stroke-linecap="butt"/>          
                </rule> 
                <rule e="way" k="*" v="*" zoom-min="{$zm-level4}" > 
                    <line stroke="{$lc-alpine-path}" stroke-width="{$lw-path4}" stroke-dasharray="4,4"  stroke-linecap="butt"/>          
                </rule>                                
            </rule>
        </rule>            
        <rule e="way" k="highway" v="bridleway" zoom-min="{$zm-bridleway}">
            <line stroke="{$lc-bridleway}" stroke-width="{$lw-bridleway}" stroke-dasharray="4,4"  stroke-linecap="butt"/>                      
        </rule>
        <rule e="way" k="highway" v="via_ferrata" zoom-min="{$zm-ferrata}">
            <line stroke="{$lc-ferrata}" stroke-width="0.25" stroke-dasharray="0.5,0.5" scale="all"/>
            <line stroke="{$lc-ferrata}" stroke-width="{$lw-ferrata}" stroke-linecap="butt" stroke-dasharray="0,0.1,0.25,0.65" scale="all"/>
        </rule>  
        <rule e="way" k="highway" v="steps" zoom-min="{$zm-steps}">
            <line stroke="{$lc-steps}" stroke-width="{$lw-steps}" stroke-dasharray="2,2" stroke-linecap="butt"/>          
        </rule>
        <rule e="way" k="highway" v="pedestrian" zoom-min="{$zm-pedestrian}">
            <line stroke="{$lc-pedestrian}" stroke-width="{$lw-pedestrian}" stroke-linecap="butt"/>          
        </rule>
        <rule e="way" k="highway" v="track" >
            <rule e="way" k="tracktype" v="grade1|grade2" zoom-min="{$zm-macadam}"> 
                <rule e="way" k="*" v="*" zoom-max="{$zm-macadam + 1}"> 
                    <line stroke="{$bc-macadam}" stroke-width="{$lw-macadam}" stroke-dasharray="8,2" stroke-linecap="butt"/>
                    <line stroke="{$lc-macadam}" stroke-width="{$lw-macadam - 0.5}" />          
                </rule>  
                <rule e="way" k="*" v="*" zoom-min="{$zm-macadam + 2}" zoom-max="{$zm-level2 - 1 }"> 
                    <line stroke="{$bc-macadam}" stroke-width="{$lw-macadam}" stroke-dasharray="10,5" stroke-linecap="butt"/>
                    <line stroke="{$lc-macadam}" stroke-width="{$lw-macadam - 0.5}" />          
                </rule> 
                <rule e="way" k="*" v="*" zoom-min="{$zm-level2}" zoom-max="{$zm-level3 - 1 }"> 
                    <line stroke="{$bc-macadam}" stroke-width="{$lw-macadam2}" stroke-dasharray="10,5" stroke-linecap="butt"/>
                    <line stroke="{$lc-macadam}" stroke-width="{$lw-macadam2 - 0.4}" />          
                </rule>                       
                <rule e="way" k="*" v="*" zoom-min="{$zm-level3 }"> 
                    <line stroke="{$bc-macadam}" stroke-width="{$lw-macadam2}" stroke-dasharray="14,6" stroke-linecap="butt"/>
                    <line stroke="{$lc-macadam}" stroke-width="{$lw-macadam2 - 0.4}" />          
                </rule>                                    
            </rule>
            <rule e="way" k="*" v="*" zoom-min="{$zm-track}" zoom-max="{$zm-level2 - 1}"> 
                <rule e="way" k="tracktype" v="grade3" > 
                    <line stroke="{$lc-track}" stroke-width="{$lw-track}" stroke-dasharray="16,3"  stroke-linecap="butt"/>
                </rule>
                <rule e="way" k="tracktype" v="~|grade4" > 
                    <line stroke="{$lc-track}" stroke-width="{$lw-track}" stroke-dasharray="13,3"  stroke-linecap="butt" />
                </rule>
                <rule e="way" k="tracktype" v="grade5" > 
                    <line stroke="{$lc-track}" stroke-width="{$lw-track}" stroke-dasharray="5,4"  stroke-linecap="butt" />
                </rule>
            </rule>
            <rule e="way" k="*" v="*" zoom-min="{$zm-level2}" zoom-max="{$zm-level3 - 1}"> 
                <rule e="way" k="tracktype" v="grade3" > 
                    <line stroke="{$lc-track}" stroke-width="{$lw-track2}" stroke-dasharray="16,3"  stroke-linecap="butt"/>
                </rule>
                <rule e="way" k="tracktype" v="~|grade4" > 
                    <line stroke="{$lc-track}" stroke-width="{$lw-track2}" stroke-dasharray="13,3"  stroke-linecap="butt" />
                </rule>
                <rule e="way" k="tracktype" v="grade5" > 
                    <line stroke="{$lc-track}" stroke-width="{$lw-track2}" stroke-dasharray="5,4"  stroke-linecap="butt" />
                </rule>
            </rule>            
            <rule e="way" k="*" v="*" zoom-min="{$zm-level3}"> 
                <rule e="way" k="tracktype" v="grade3" > 
                    <line stroke="{$lc-track}" stroke-width="{$lw-track3}" stroke-dasharray="22,7"  stroke-linecap="butt"/>
                </rule>
                <rule e="way" k="tracktype" v="~|grade4" >
                    <line stroke="{$lc-track}" stroke-width="{$lw-track3}" stroke-dasharray="19,7"  stroke-linecap="butt" />
                </rule>
                <rule e="way" k="tracktype" v="grade5" > 
                    <line stroke="{$lc-track}" stroke-width="{$lw-track3}" stroke-dasharray="12,8"  stroke-linecap="butt" />
                </rule>
            </rule>
        </rule>
        <rule e="way" k="highway" v="raceway" zoom-min="{$zm-raceway}">
            <line stroke="{$lc-raceway}" stroke-width="{$lw-raceway}" stroke-linecap="butt"/>          
        </rule>
        <rule e="way" k="highway" v="cycleway" zoom-min="{$zm-cycleway}">
            <line stroke="{$bc-cycleway}" stroke-width="{$lw-cycleway}" stroke-linecap="butt"/>  
            <line stroke="{$lc-cycleway}" stroke-width="{$lw-cycleway - 0.3 }" stroke-linecap="butt"/>   
            <line stroke="{$bc-cycleway}" stroke-width="0.1" stroke-dasharray="4,3" stroke-linecap="butt"/>           
        </rule>
        <rule e="way" k="highway" v="service" >
            <rule e="way" k="*" v="*"  zoom-max="{$zm-level2 - 1 }">           
                <line stroke="{$bc-service}" stroke-width="{$lw-service}" stroke-linecap="butt"/>
                <line stroke="{$lc-service}" stroke-width="{$lw-service  - 0.4}" stroke-linecap="butt"/> 
            </rule>  
           <rule e="way" k="*" v="*"  zoom-min="{$zm-level2 }">           
                <line stroke="{$bc-service}" stroke-width="{$lw-service2}" stroke-linecap="butt"/>
                <line stroke="{$lc-service}" stroke-width="{$lw-service2  - 0.4}" stroke-linecap="butt"/> 
            </rule>         
        </rule>
        <rule e="way" k="highway" v="living_street"  zoom-min="{$zm-living}">
            <line stroke="{$bc-living}" stroke-width="{$lw-living_street}" stroke-linecap="butt"/>
            <line stroke="{$lc-living}" stroke-width="{$lw-living_street - 0.4}" stroke-linecap="butt"/>          
        </rule>
        <rule e="way" k="highway" v="residential" zoom-min="{$zm-residential}">
            <rule e="way" k="*" v="*"  zoom-max="{$zm-level2 - 1 }">         
                <line stroke="{$bc-residential}" stroke-width="{$lw-residential}" stroke-linecap="butt"/>
                <line stroke="{$lc-residential}" stroke-width="{$lw-residential - 0.4}" />      
            </rule>  
           <rule e="way" k="*" v="*"  zoom-min="{$zm-level2 }">         
                <line stroke="{$bc-residential}" stroke-width="{$lw-residential2}" stroke-linecap="butt"/>
                <line stroke="{$lc-residential}" stroke-width="{$lw-residential2 - 0.4}" />      
            </rule>    
        </rule>
        <rule e="way" k="highway" v="unclassified" >
            <rule e="way" k="*" v="*"  zoom-max="{$zm-level2 - 1 }">         
                <line stroke="{$bc-unclassified}" stroke-width="{$lw-unclassified}" stroke-linecap="butt"/>
                <line stroke="{$lc-unclassified}" stroke-width="{$lw-unclassified - 0.4}" />    
            </rule>    
           <rule e="way" k="*" v="*" zoom-min="{$zm-level2}">         
                <line stroke="{$bc-unclassified}" stroke-width="{$lw-unclassified2}" stroke-linecap="butt"/>
                <line stroke="{$lc-unclassified}" stroke-width="{$lw-unclassified2 - 0.4}" />    
            </rule>      
        </rule>
    
    <rule e="way" k="tunnel" v="~|no">        
        <rule e="way" k="highway" v="tertiary|tertiary_link" zoom-min="{$zm-tertiary}">
         <line stroke="{$bc-tertiary}" stroke-width="{$lw-tertiary}" stroke-linecap="butt"/> 
          <line stroke="{$lc-tertiary}" stroke-width="{$lw-tertiary - 0.4}" />          
        </rule>
        <rule e="way" k="highway" v="secondary|secondary_link" zoom-min="{$zm-secondary}">
            <line stroke="{$bc-secondary}" stroke-width="{$lw-secondary}" stroke-linecap="butt"/> 
            <line stroke="{$lc-secondary}" stroke-width="{$lw-secondary - 0.4}" />          
        </rule>
        <rule e="way" k="highway" v="primary|primary_link" zoom-min="{$zm-primary}">
           <line stroke="{$bc-primary}" stroke-width="{$lw-primary}" stroke-linecap="butt"/> 
          <line stroke="{$lc-primary}" stroke-width="{$lw-primary - 0.4}" />          
        </rule>
        <rule e="way" k="highway" v="trunk_link" zoom-min="{$zm-trunk_link}">
          <line stroke="{$bc-trunk_link}" stroke-width="{$lw-trunk_link}" stroke-linecap="butt"/>
          <line stroke="{$lc-trunk_link}" stroke-width="{$lw-trunk_link - 0.4}" stroke-linecap="butt"/>          
        </rule>
        <rule e="way" k="highway" v="trunk" zoom-min="{$zm-trunk}">
          <line stroke="{$bc-trunk}" stroke-width="{$lw-trunk}" stroke-linecap="butt"/>
          <line stroke="{$lc-trunk}" stroke-width="{$lw-trunk - 0.4}" stroke-linecap="butt"/>          
        </rule>
        <rule e="way" k="highway" v="motorway_link" zoom-min="{$zm-motorway_link}">
          <line stroke="{$bc-motorway_link}" stroke-width="{$lw-motorway_link}" stroke-linecap="butt"/>
          <line stroke="{$lc-motorway_link}" stroke-width="{$lw-motorway_link - 0.4}" stroke-linecap="butt"/>          
        </rule>
        <rule e="way" k="highway" v="motorway" zoom-min="{$zm-motorway}">
          <line stroke="{$bc-motorway}" stroke-width="{$lw-motorway}" stroke-linecap="butt"/>
          <line stroke="{$lc-motorway}" stroke-width="{$lw-motorway - 0.4}" stroke-linecap="butt"/>          
        </rule>
    </rule>

    <rule e="way" k="tunnel" v="yes">
        <rule e="way" k="highway" v="tertiary|tertiary_link" zoom-min="{$zm-tertiary}">
         <line stroke="{$bc-tertiary}" stroke-dasharray="3,3" stroke-width="{$lw-tertiary}" stroke-linecap="butt" scale="all"/> 
          <line stroke="{$lc-tertiary-tunnel}" stroke-width="{$lw-tertiary - 0.4}" />          
        </rule>
        <rule e="way" k="highway" v="secondary|secondary_link" zoom-min="{$zm-secondary}">
            <line stroke="{$bc-secondary}" stroke-dasharray="3,3" stroke-width="{$lw-secondary}" stroke-linecap="butt" scale="all"/> 
            <line stroke="{$lc-secondary-tunnel}" stroke-width="{$lw-secondary - 0.4}" />          
        </rule>
        <rule e="way" k="highway" v="primary|primary_link" zoom-min="{$zm-primary}">
           <line stroke="{$bc-primary}" stroke-dasharray="3,3" stroke-width="{$lw-primary}" stroke-linecap="butt" scale="all"/> 
          <line stroke="{$lc-primary-tunnel}" stroke-width="{$lw-primary - 0.4}" />          
        </rule>
        <rule e="way" k="highway" v="trunk_link" zoom-min="{$zm-trunk_link}">
          <line stroke="{$bc-trunk_link}" stroke-dasharray="3,3" stroke-width="{$lw-trunk_link}" stroke-linecap="butt" scale="all"/>
          <line stroke="{$lc-trunk_link-tunnel}" stroke-width="{$lw-trunk_link - 0.4}" stroke-linecap="butt"/>          
        </rule>
        <rule e="way" k="highway" v="trunk" zoom-min="{$zm-trunk}">
          <line stroke="{$bc-trunk}" stroke-dasharray="3,3" stroke-width="{$lw-trunk}" stroke-linecap="butt" scale="all"/>
          <line stroke="{$lc-trunk-tunnel}" stroke-width="{$lw-trunk - 0.4}" stroke-linecap="butt"/>          
        </rule>
        <rule e="way" k="highway" v="motorway_link" zoom-min="{$zm-motorway_link}">
          <line stroke="{$bc-motorway_link}" stroke-dasharray="3,3" stroke-width="{$lw-motorway_link}" stroke-linecap="butt" scale="all"/>
          <line stroke="{$lc-motorway_link-tunnel}" stroke-width="{$lw-motorway_link - 0.4}" stroke-linecap="butt"/>          
        </rule>
        <rule e="way" k="highway" v="motorway" zoom-min="{$zm-motorway}">
          <line stroke="{$bc-motorway}" stroke-dasharray="3,3" stroke-width="{$lw-motorway}" stroke-linecap="butt" scale="all"/>
          <line stroke="{$lc-motorway-tunnel}"  stroke-width="{$lw-motorway - 0.4}" stroke-linecap="butt"/>          
        </rule> 
    </rule>
</rule>    
</rule>

<rule e="way" k="assisted_trail|safety_rope|ladder|rungs" v="yes">
    <rule e="way" k="highway" v="path">
        <rule e="way" k="trail_color" v="*">    
            <line stroke="#BD0000" stroke-dasharray="0.15,0.8" stroke-width="2.1" stroke-linecap="butt" scale="all"/>
        </rule>    
        <rule e="way" k="trail_color" v="~">    
            <line stroke="#FF6500" stroke-dasharray="0.15,0.9" stroke-width="1.3" stroke-linecap="butt" scale="all"/>
        </rule>    
    </rule>    
</rule>

<rule e="way" k="railway" v="platform" >
    <rule e="way" k="area" v="~">
        <rule e="any" k="*" v="*" zoom-min="{$zm-footway}">
            <line stroke="{$lc-footway}" stroke-width="{$lw-footway}" stroke-linecap="butt"/>          
        </rule>        
    </rule>
</rule>    



<rule e="way" k="oneway" v="yes">
    <rule e="way" k="highway" v="secondary|secondary_link|tertiary|tertiary_link|residential|living_street|service">
        <rule e="way" k="*" v="*" zoom-min="15" zoom-max="16"> 
            <lineSymbol src="{$signsPath}/oneway.svg" dy="0.5" align-center="true" repeat="true" repeat-start="30" repeat-gap="60" symbol-width="12" priority="{$pr-oneway}" display="always" />
        </rule>
        <rule e="way" k="*" v="*" zoom-min="17" zoom-max="18"> 
            <lineSymbol src="{$signsPath}/oneway.svg" dy="1.2" align-center="true" repeat="true" repeat-start="40" repeat-gap="120" symbol-width="16" priority="{$pr-oneway}" display="always"/>
        </rule>
        <rule e="way" k="*" v="*" zoom-min="19"> 
            <lineSymbol src="{$signsPath}/oneway.svg" dy="1.2" align-center="true" repeat="true" repeat-start="30" repeat-gap="240" symbol-width="16" priority="{$pr-oneway}" display="always"/>
        </rule>
    </rule>   
    <rule e="way" k="highway" v="track|path|footway|pedestrian">
        <rule e="way" k="*" v="*" zoom-min="15" zoom-max="16"> 
            <lineSymbol src="{$signsPath}/oneway.svg" dy="1.5" align-center="true" repeat="true" repeat-start="30" repeat-gap="100" symbol-width="12" priority="{$pr-oneway}" display="always" />
        </rule>
        <rule e="way" k="*" v="*" zoom-min="17"> 
            <lineSymbol src="{$signsPath}/oneway.svg" dy="1.5" align-center="true" repeat="true" repeat-start="30" repeat-gap="200" symbol-width="16" priority="{$pr-oneway}" display="always"/>
        </rule>
    </rule>   
</rule>     

<rule e="way" k="oneway" v="-1">
    <rule e="way" k="highway" v="secondary|secondary_link|tertiary|tertiary_link|residential|living_street|service">
        <rule e="way" k="*" v="*" zoom-min="15" zoom-max="16"> 
            <lineSymbol src="{$signsPath}/oneway-back.svg"  repeat="true" repeat-start="30" repeat-gap="50" symbol-width="12" priority="{$pr-oneway}" display="always" />
        </rule>
        <rule e="way" k="*" v="*" zoom-min="17" zoom-max="18"> 
            <lineSymbol src="{$signsPath}/oneway-back.svg" dy="1.2" align-center="true" repeat="true" repeat-start="40" repeat-gap="80" symbol-width="16" priority="{$pr-oneway}" display="always"/>
        </rule>
        <rule e="way" k="*" v="*" zoom-min="19"> 
            <lineSymbol src="{$signsPath}/oneway-back.svg" dy="1.2" align-center="true" repeat="true" repeat-start="30" repeat-gap="120" symbol-width="16" priority="{$pr-oneway}" display="always"/>
        </rule>

    </rule>   
    <rule e="way" k="highway" v="track|path|footway|pedestrian">
        <rule e="way" k="*" v="*" zoom-min="15" zoom-max="16"> 
            <lineSymbol src="{$signsPath}/oneway-back.svg" dy="1.5" align-center="true" repeat="true" repeat-start="30" repeat-gap="100" symbol-width="12" priority="{$pr-oneway}" display="always" />
        </rule>
        <rule e="way" k="*" v="*" zoom-min="17"> 
            <lineSymbol src="{$signsPath}/oneway-back.svg" dy="1.5" align-center="true" repeat="true" repeat-start="30" repeat-gap="200" symbol-width="16" priority="{$pr-oneway}" display="always"/>
        </rule>
    </rule>   
</rule>       

<rule cat="cycleway_symbols" e="way" k="highway" v="cycleway" zoom-min="15" >
    <lineSymbol src="{$signsPath}/cycleway.svg" align-center="true" repeat="true" repeat-start="30" repeat-gap="180" symbol-width="18"  rotate="false" priority="{$pr-cycleway}"/>
</rule>


</xsl:template>
</xsl:stylesheet>