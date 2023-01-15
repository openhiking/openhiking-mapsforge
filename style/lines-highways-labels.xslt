<?xml-stylesheet type="text/xsl"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

<xsl:template name="lines-highways-labels">

<rule  e="way" k="highway" v="*">
  <rule e="way" k="area" v="~|no|false">
    <rule e="way" k="tunnel" v="~|no">
        <rule e="way" k="highway" v="footway|platform|path|bridleway|via_ferrata|steps" zoom-min="16">
            <pathText k="name" dy="0.5" font-style="bold" font-size="9" stroke="#FFFFFF" stroke-width="3"/>        
        </rule>
        <rule e="way" k="highway" v="cycleway|track" zoom-min="16">
            <pathText k="name" dy="0.5" font-style="bold" font-size="11" stroke="#FFFFFF" stroke-width="3" repeat-gap="150"/>
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
            <caption k="ref" font-style="bold" font-size="9" fill="#FFFFFF" stroke="#006600" stroke-width="4" />       
        </rule>
        <rule e="way" k="highway" v="motorway" zoom-min="11">
            <caption k="ref" font-style="bold" font-size="9" fill="#FFFFFF" stroke="#000066" stroke-width="4" />        
        </rule>
    </rule>
</rule>    
</rule>



</xsl:template>
</xsl:stylesheet>