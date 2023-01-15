<?xml-stylesheet type="text/xsl"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

<xsl:template name="lines-railways">
<xsl:variable name="lc-dark">#404040</xsl:variable>
<xsl:variable name="lc-tunnel">#949494</xsl:variable>
<xsl:variable name="lc-light">#F8FCF8</xsl:variable>
<xsl:variable name="lc-disused">#949494</xsl:variable>

<rule e="way" k="railway" v="*">
<rule e="way" k="tunnel" v="~|false|no">

<rule e="way" k="abandoned" v="~">
<rule e="way" k="disused" v="~">
    <rule e="way" k="railway" v="rail|light_rail">
        <line stroke="{$lc-dark}" stroke-linecap="butt" stroke-width="{$lw-rail}" />
        <line stroke="{$lc-light}" stroke-linecap="butt" stroke-width="0.4" />
        <line stroke="{$lc-dark}" stroke-dasharray="3,3" stroke-linecap="butt" stroke-width="0.4" scale="all" />
    </rule>
    <rule e="way" k="railway" v="narrow_gauge|funicular">
        <line stroke="{$lc-dark}" stroke-linecap="butt" stroke-width="{$lw-rail-narrow}" />
        <line stroke="{$lc-light}" stroke-linecap="butt" stroke-width="0.3" />
        <line stroke="{$lc-dark}" stroke-dasharray="2,2" stroke-linecap="butt" stroke-width="0.3" scale="all" />
    </rule>
    <rule e="way" k="railway" v="tram">
        <line stroke="{$lc-dark}" stroke-linecap="butt" stroke-width="{$lw-rail-narrow}" />
        <line stroke="{$lc-light}" stroke-linecap="butt" stroke-width="0.3" />
        <line stroke="{$lc-dark}" stroke-dasharray="2,2" stroke-linecap="butt" stroke-width="0.3" scale="all" />
    </rule>
</rule>    
</rule>    

<rule e="way" k="railway" v="disused">
    <rule e="way" k="disused" v="~|rail|light_rail">
        <line stroke="{$lc-disused}" stroke-linecap="butt" stroke-width="{$lw-rail}" />
        <line stroke="{$lc-light}" stroke-linecap="butt" stroke-width="0.4" />
        <line stroke="{$lc-disused}" stroke-dasharray="3,3" stroke-linecap="butt" stroke-width="0.4" scale="all" />
    </rule>    
    <rule e="way" k="disused" v="narrow_gauge">
        <line stroke="{$lc-disused}" stroke-linecap="butt" stroke-width="{$lw-rail-narrow}" />
        <line stroke="{$lc-light}" stroke-linecap="butt" stroke-width="0.3" />
        <line stroke="{$lc-disused}" stroke-dasharray="2,2" stroke-linecap="butt" stroke-width="0.3" scale="all" />
    </rule>
</rule>    

</rule>    
<rule e="way" k="tunnel" v="yes">
    <rule e="way" k="railway" v="rail|light_rail">
        <line stroke="{$lc-dark}" stroke-dasharray="3,3" stroke-linecap="butt" stroke-width="{$lw-rail}" scale="all" />        
        <line stroke="{$lc-tunnel}" stroke-dasharray="3,3" stroke-linecap="butt" stroke-width="0.4" scale="all" />
    </rule>
    <rule e="way" k="railway" v="narrow_gauge|funicular|tram">
        <line stroke="{$lc-dark}" stroke-dasharray="2,2" stroke-linecap="butt" stroke-width="{$lw-rail}" scale="all" />        
        <line stroke="{$lc-tunnel}" stroke-dasharray="2,2" stroke-linecap="butt" stroke-width="0.3" scale="all" />
    </rule>
</rule>    
</rule>    

<rule e="way" k="disused:railway" v="*">
    <rule e="way" k="railway" v="~">
        <rule e="way" k="tunnel" v="~|false|no">
            <rule e="way" k="disused:railway" v="rail|light_rail">
                <line stroke="{$lc-disused}" stroke-linecap="butt" stroke-width="{$lw-rail}" />
                <line stroke="{$lc-light}" stroke-linecap="butt" stroke-width="0.4" />
                <line stroke="{$lc-disused}" stroke-dasharray="3,3" stroke-linecap="butt" stroke-width="0.4" scale="all" />
            </rule>    
            <rule e="way" k="disused:railway" v="narrow_gauge">
                <line stroke="{$lc-disused}" stroke-linecap="butt" stroke-width="{$lw-rail-narrow}" />
                <line stroke="{$lc-light}" stroke-linecap="butt" stroke-width="0.3" />
                <line stroke="{$lc-disused}" stroke-dasharray="2,2" stroke-linecap="butt" stroke-width="0.3" scale="all" />
            </rule>
        </rule>    
        <rule e="way" k="tunnel" v="yes">
            <rule e="way" k="disused:railway" v="rail|light_rail">
                <line stroke="{$lc-dark}" stroke-dasharray="3,3" stroke-linecap="butt" stroke-width="{$lw-rail}" scale="all" />        
                <line stroke="{$lc-tunnel}" stroke-dasharray="3,3" stroke-linecap="butt" stroke-width="0.4" scale="all" />
            </rule>    
            <rule e="way" k="disused:railway" v="narrow_gauge|tram">
                <line stroke="{$lc-dark}" stroke-dasharray="2,2" stroke-linecap="butt" stroke-width="{$lw-rail}" scale="all" />        
                <line stroke="{$lc-tunnel}" stroke-dasharray="2,2" stroke-linecap="butt" stroke-width="0.3" scale="all" />
            </rule>
        </rule>        
    </rule>    
</rule>    
</xsl:template>


</xsl:stylesheet>