<?xml-stylesheet type="text/xsl"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<!-- 
# OpenHikingMap
#
# Points: Barriers
#
# Copyright (c) 2022-2023 OpenHiking contributors
# SPDX-License-Identifier: GPL-3.0-only
-->


<xsl:template name="points-barriers">

<rule e="node" k="barrier" v="gate|sliding_gate" zoom-min="16">  
<rule e="node" k="entrance" v="~" >  
    <rule e="node" k="access" v="yes" >  
        <rule e="node" k="*" v="*" zoom-max="17">  
            <symbol id="gate" src="{$symbolPath}/gate_open.svg" symbol-width="12" priority="{$pr-gate}"/>        
        </rule>
        <rule e="node" k="*" v="*" zoom-min="18">  
            <symbol id="gate" src="{$symbolPath}/gate_open.svg" symbol-width="14" priority="{$pr-gate}"/>        
        </rule>
    </rule>    
    <rule e="node" k="access" v="no" >  
        <rule e="node" k="*" v="*" zoom-max="17">  
            <symbol id="gate" src="{$symbolPath}/gate_closed.svg" symbol-width="12" priority="{$pr-gate}"/>        
        </rule>
        <rule e="node" k="*" v="*" zoom-min="18">  
            <symbol id="gate" src="{$symbolPath}/gate_closed.svg" symbol-width="14" priority="{$pr-gate}"/>        
        </rule>
    </rule>      
    <rule e="node" k="access" v="~" >  
        <rule e="node" k="*" v="*" zoom-max="17">  
            <symbol id="gate" src="{$symbolPath}/gate.svg" symbol-width="12" priority="{$pr-gate}"/>        
        </rule>
        <rule e="node" k="*" v="*" zoom-min="18">  
            <symbol id="gate" src="{$symbolPath}/gate.svg" symbol-width="14" priority="{$pr-gate}"/>        
        </rule>
    </rule>    
    <rule e="any" k="*" v="*" zoom-min="17">
        <caption fill="#666666" font-size="10" font-style="bold" k="name" priority="{$pr-gate}"
            stroke="#FFFFFF" stroke-width="2.0" symbol-id="gate" />
    </rule>
</rule>    
</rule>

<rule e="node" k="barrier" v="lift_gate|swing_gate" zoom-min="15">
    <symbol src="{$symbolPath}/lift_gate.svg" symbol-width="20" priority="{$pr-lift-gate}"/>
</rule>

<rule e="node" k="barrier" v="stile" zoom-min="16">
    <symbol src="{$symbolPath}/stile.svg" symbol-width="18" priority="{$pr-stile}"/>
</rule>

</xsl:template>
</xsl:stylesheet>