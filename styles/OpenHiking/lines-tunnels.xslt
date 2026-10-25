<?xml-stylesheet type="text/xsl"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

<xsl:template name="lines-tunnels">

<rule e="way" k="highway" v="*">
    <rule e="way" k="tunnel" v="yes">
    <rule e="way" k="bridge" v="~|no">
        <rule e="way" k="area" v="~|no">
            <rule e="way" k="trail_color" v="~">
                 <xsl:call-template name="tunnel-rules">
                    <xsl:with-param name="extraSpace" select="0" />
                </xsl:call-template>
 
            </rule>
            <rule e="way" k="trail_color" v="*">
                <xsl:call-template name="tunnel-rules">
                    <xsl:with-param name="extraSpace" select="$lw-trail-highlight" />
                </xsl:call-template>
            </rule>
        </rule>            
    </rule>
    </rule>    
</rule>

</xsl:template>

<xsl:template name="tunnel-rules">
<xsl:param name="extraSpace" />
    <rule e="way" k="highway" v="footway" zoom-min="{$zm-footway}">
        <line stroke="{$lc-tunnel}" stroke-width="{$lw-footway + $extraSpace + 0.6}" stroke-linecap="butt"/>          
    </rule>
    <rule e="way" k="highway" v="path" zoom-min="{$zm-path}">
        <line stroke="{$lc-tunnel}" stroke-width="{$lw-path + $extraSpace + 0.6}" stroke-linecap="butt"/>          
    </rule>
    <rule e="way" k="highway" v="path_obscure" zoom-min="{$zm-path}">
        <line stroke="{$lc-tunnel}" stroke-width="{$lw-obscure2 + $extraSpace + 0.6}" stroke-linecap="butt"/>          
    </rule>
    <rule e="way" k="highway" v="bridleway" zoom-min="{$zm-bridleway}">
        <line stroke="{$lc-tunnel}" stroke-width="{$lw-bridleway + $extraSpace + 0.6}" stroke-linecap="butt"/>          
    </rule>
    <rule e="way" k="highway" v="steps" zoom-min="{$zm-steps}">
        <line stroke="{$lc-tunnel}" stroke-width="{$lw-steps + $extraSpace + 0.7}" stroke-linecap="butt"/>          
    </rule>
    <rule e="way" k="highway" v="pedestrian" zoom-min="{$zm-pedestrian}">
        <line stroke="{$lc-tunnel}" stroke-width="{$lw-pedestrian + $extraSpace + 0.7}" stroke-linecap="butt"/>          
    </rule>
    <rule e="way" k="highway" v="track" zoom-min="{$zm-track}">
        <line stroke="{$lc-tunnel}" stroke-width="{$lw-track + $extraSpace + 0.9}" stroke-linecap="butt"/>          
    </rule>
   <rule e="way" k="highway" v="track_obscure" zoom-min="{$zm-track}">
        <line stroke="{$lc-tunnel}" stroke-width="{$lw-obscure + $extraSpace + 0.9}" stroke-linecap="butt"/>          
    </rule>
    <rule e="way" k="highway" v="cycleway" zoom-min="{$zm-cycleway}">
        <line stroke="{$lc-tunnel}" stroke-width="{$lw-cycleway + $extraSpace + 0.9}" stroke-linecap="butt"/>          
    </rule>

</xsl:template>


</xsl:stylesheet>