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
<rule e="way" k="highway" v="path|bridleway|cycleway"  zoom-min="{$zm-path}">
    <line stroke="{$bc-tunnel}" dy="{$lw-path + $extraSpace}" stroke-width="{$lw-tunnel}" stroke-dasharray="{$da-tunnel}" stroke-linecap="butt" />
    <line stroke="{$bc-tunnel}" dy="-{$lw-path + $extraSpace}" stroke-width="{$lw-tunnel}" stroke-dasharray="{$da-tunnel}" stroke-linecap="butt" />
</rule>
<rule e="way" k="highway" v="footway" zoom-min="{$zm-footway}">
    <line stroke="{$bc-tunnel}" dy="{$lw-footway + $extraSpace}" stroke-width="{$lw-tunnel}" stroke-dasharray="{$da-tunnel}" stroke-linecap="butt" />
    <line stroke="{$bc-tunnel}" dy="-{$lw-footway + $extraSpace}" stroke-width="{$lw-tunnel}" stroke-dasharray="{$da-tunnel}" stroke-linecap="butt" />
</rule>
<rule e="way" k="highway" v="steps" zoom-min="{$zm-steps}">
    <line stroke="{$bc-tunnel}" dy="{$lw-steps + $extraSpace}" stroke-width="{$lw-tunnel}" stroke-dasharray="{$da-tunnel}" stroke-linecap="butt" />
    <line stroke="{$bc-tunnel}" dy="-{$lw-steps + $extraSpace}" stroke-width="{$lw-tunnel}" stroke-dasharray="{$da-tunnel}" stroke-linecap="butt" />
</rule>
<rule e="way" k="highway" v="pedestrian" zoom-min="{$zm-pedestrian}">
    <line stroke="{$bc-tunnel}" dy="{$lw-pedestrian + $extraSpace}" stroke-width="{$lw-tunnel}" stroke-dasharray="{$da-tunnel}" stroke-linecap="butt" />
    <line stroke="{$bc-tunnel}" dy="-{$lw-pedestrian + $extraSpace}" stroke-width="{$lw-tunnel}" stroke-dasharray="{$da-tunnel}" stroke-linecap="butt" />
</rule>
<rule e="way" k="highway" v="track">
    <rule e="way" k="surface" v="paved">  
    </rule>
    <rule e="way" k="surface" v="~|compacted|unpaved" zoom-min="{$zm-track}">  
        <line stroke="{$bc-tunnel}" dy="{$lw-track + $extraSpace}" stroke-width="{$lw-tunnel}" stroke-dasharray="{$da-tunnel}" stroke-linecap="butt" />
        <line stroke="{$bc-tunnel}" dy="-{$lw-track + $extraSpace}" stroke-width="{$lw-tunnel}" stroke-dasharray="{$da-tunnel}" stroke-linecap="butt" />
    </rule>
</rule>
<rule e="way" k="highway" v="service|living_street|residential|unclassified">
    <rule e="way" k="surface" v="compacted|unpaved" zoom-min="{$zm-track}">  
        <line stroke="{$bc-tunnel}" dy="{$lw-track + $extraSpace}" stroke-width="{$lw-tunnel}" stroke-dasharray="{$da-tunnel}" stroke-linecap="butt" />
        <line stroke="{$bc-tunnel}" dy="-{$lw-track + $extraSpace}" stroke-width="{$lw-tunnel}" stroke-dasharray="{$da-tunnel}" stroke-linecap="butt" />			
    </rule>
</rule>
</xsl:template>


</xsl:stylesheet>