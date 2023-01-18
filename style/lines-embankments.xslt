<?xml-stylesheet type="text/xsl"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

<xsl:template name="lines-embankments">

<rule e="way" k="highway" v="*">
    <rule e="way" k="embankment" v="yes">
        <rule e="way" k="bridge" v="~|no">
            <rule e="way" k="tunnel" v="~|no">
                <rule e="way" k="area" v="~|no">
                    <rule e="way" k="trail_color" v="~">
                        <xsl:call-template name="embankment-rules">
                            <xsl:with-param name="extraSpace" select="0" />
                        </xsl:call-template>
                    </rule>
                    <rule e="way" k="trail_color" v="*">
                        <xsl:call-template name="embankment-rules">
                            <xsl:with-param name="extraSpace" select="$lw-trail-highlight" />
                        </xsl:call-template>
                    </rule>
                </rule>            
            </rule>
        </rule>             
    </rule>    
</rule>

</xsl:template>

<xsl:template name="embankment-rules">
<xsl:param name="extraSpace" />
<rule e="way" k="highway" v="path|bridleway|cycleway"  zoom-min="{$zm-path}">
    <line stroke="{$lc-embankment}" dy="{$lw-path + $extraSpace}" stroke-width="{$lw-embankment}"  stroke-linecap="butt" />
    <line stroke="{$lc-embankment}" dy="{$lw-path + $extraSpace + $lw-embankment + 0.4}" stroke-width="{$lw-embankment2}" stroke-dasharray="{$da-embankment}"  stroke-linecap="butt" scale="all"/>
    <line stroke="{$lc-embankment}" dy="-{$lw-path + $extraSpace}" stroke-width="{$lw-embankment}" stroke-linecap="butt" />
    <line stroke="{$lc-embankment}" dy="-{$lw-path + $extraSpace + $lw-embankment + 0.4}" stroke-width="{$lw-embankment2}" stroke-dasharray="{$da-embankment}"  stroke-linecap="butt" scale="all"/>        
</rule>
<rule e="way" k="highway" v="footway" zoom-min="{$zm-footway}">
</rule>
<rule e="way" k="highway" v="steps" zoom-min="{$zm-steps}">
</rule>
<rule e="way" k="highway" v="pedestrian" zoom-min="{$zm-pedestrian}">
</rule>
<rule e="way" k="highway" v="track">
    <line stroke="{$lc-embankment}" dy="{$lw-track + $extraSpace}" stroke-width="{$lw-embankment}"  stroke-linecap="butt" />
    <line stroke="{$lc-embankment}" dy="{$lw-track + $extraSpace + $lw-embankment + 0.4}" stroke-width="{$lw-embankment2}" stroke-dasharray="{$da-embankment}"  stroke-linecap="butt" scale="all"/>
    <line stroke="{$lc-embankment}" dy="-{$lw-track + $extraSpace}" stroke-width="{$lw-embankment}" stroke-linecap="butt" />
    <line stroke="{$lc-embankment}" dy="-{$lw-track + $extraSpace + $lw-embankment + 0.4}" stroke-width="{$lw-embankment2}" stroke-dasharray="{$da-embankment}"  stroke-linecap="butt" scale="all"/>        
</rule>
</xsl:template>


</xsl:stylesheet>