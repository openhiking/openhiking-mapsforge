<?xml-stylesheet type="text/xsl"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

<xsl:template name="lines-aerialways">

<rule e="way" k="aerialway" v="cable_car|gondola" zoom-min="12">
    <rule  e="any" k="*" v="*"  zoom-max="13">   
        <line stroke="#000000" stroke-width="1.0" stroke-dasharray="13,3" stroke-linecap="butt"/>
    </rule>
    <rule  e="any" k="*" v="*" zoom-min="14" >        
        <line stroke="#000000" stroke-width="0.8" stroke-dasharray="13,3" stroke-linecap="butt"/>
    </rule>
</rule>
<rule e="way" k="aerialway" v="chair_lift|mixed_lift" zoom-min="13">
    <line stroke="#000000" stroke-width="0.3"  stroke-linecap="butt"/>
    <line stroke="#000000" stroke-width="1.3" stroke-dasharray="1.2,32" stroke-linecap="round"/>    
</rule>
<rule e="way" k="aerialway" v="drag_lift|t-bar|j-bar|platter" zoom-min="15">
    <line stroke="#000000" stroke-width="0.2" stroke-linecap="butt"/>
    <line stroke="#000000" stroke-width="0.6" stroke-dasharray="4,16" stroke-linecap="butt"/>    
</rule>
<rule e="way" k="aerialway" v="rope_tow|magic_carpet" zoom-min="15">
    <line stroke="#C5C5C5" stroke-width="0.2"  stroke-linecap="butt"/>
    <line stroke="#C5C5C5" stroke-width="0.5" stroke-dasharray="3,15" stroke-linecap="butt"/>    
</rule>
<rule e="way" k="aerialway" v="goods" zoom-min="15">
    <line stroke="#C5C5C5" stroke-width="0.2"  stroke-linecap="butt"/>
    <line stroke="#C5C5C5" stroke-width="0.6" stroke-dasharray="7,25" stroke-linecap="butt"/>    
</rule>

<rule e="way" k="aerialway" v="*" zoom-min="15">
    <pathText k="name" dy="2" font-style="bold" font-size="10" fill="#606060" stroke="#ffffff" stroke-width="3"/>
</rule>

</xsl:template>
</xsl:stylesheet>