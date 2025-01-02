<?xml-stylesheet type="text/xsl"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

<xsl:template name="lines-waterways">
<xsl:variable name="stream-color">#69A7F5</xsl:variable>
<xsl:variable name="drain-color">#BDFFFF</xsl:variable>

<xsl:call-template name="create-waterway-rules">
    <xsl:with-param name="waterway" select="'river'" />
    <xsl:with-param name="zoom-min" select="9" />  
    <xsl:with-param name="zoom-label" select="11" />          
    <xsl:with-param name="stroke-color" select="$stream-color" />
    <xsl:with-param name="stroke-width" select="1.0" />
    <xsl:with-param name="stroke-width2" select="1.4" />    
    <xsl:with-param name="font-size" select="10" />      
    <xsl:with-param name="repeat-gap-low" select="90" />    
    <xsl:with-param name="repeat-gap-high" select="160" />   
    <xsl:with-param name="drift-width" select="8" />   
    <xsl:with-param name="drift-width2" select="12" />                
</xsl:call-template>

<xsl:call-template name="create-waterway-rules">
    <xsl:with-param name="waterway" select="'stream|canal'" />
    <xsl:with-param name="zoom-min" select="12" />     
    <xsl:with-param name="zoom-label" select="15" />        
    <xsl:with-param name="stroke-color" select="$stream-color" />
    <xsl:with-param name="stroke-width" select="0.5" />
    <xsl:with-param name="stroke-width2" select="0.4" />    
    <xsl:with-param name="font-size" select="10" />       
    <xsl:with-param name="repeat-gap-low" select="120" />    
    <xsl:with-param name="repeat-gap-high" select="210" />        
    <xsl:with-param name="drift-width" select="8" />   
    <xsl:with-param name="drift-width2" select="12" />                
</xsl:call-template>

<xsl:call-template name="create-waterway-rules">
    <xsl:with-param name="waterway" select="'drain'" />
    <xsl:with-param name="zoom-min" select="14" />     
    <xsl:with-param name="zoom-label" select="15" />        
    <xsl:with-param name="stroke-color" select="$drain-color" />
    <xsl:with-param name="stroke-width" select="0.3" />
    <xsl:with-param name="stroke-width2" select="0.3" />  
    <xsl:with-param name="font-size" select="10" />         
    <xsl:with-param name="repeat-gap-low" select="200" />    
    <xsl:with-param name="repeat-gap-high" select="300" />  
    <xsl:with-param name="drift-width" select="8" />   
    <xsl:with-param name="drift-width2" select="12" />                
</xsl:call-template>

</xsl:template>

<xsl:template name="create-waterway-rules">
<xsl:param name="waterway" />
<xsl:param name="zoom-min" />
<xsl:param name="zoom-label" />
<xsl:param name="stroke-color" />
<xsl:param name="stroke-width" />
<xsl:param name="stroke-width2" />
<xsl:param name="font-size" />
<xsl:param name="repeat-gap-low" />
<xsl:param name="repeat-gap-high" />
<xsl:param name="drift-width" />
<xsl:param name="drift-width2" />
<rule e="way" k="waterway" v="{$waterway}" zoom-min="{$zoom-min}"  >
    <rule e="way" k="*" v="*" zoom-min="{$zoom-label}" zoom-max="{$zoom-label + 1}">
        <pathText k="name" font-style="italic" font-size="{$font-size}" fill="#0000fc" stroke="#ffffff" stroke-width="2" repeat-start="30" repeat-gap="150" priority="{$pr-waterway-name}" />
    </rule>
     <rule e="way" k="*" v="*" zoom-min="{$zoom-label + 2}">
        <pathText k="name" font-style="italic" font-size="{$font-size + 2}" fill="#0000fc" stroke="#ffffff" stroke-width="2" repeat-start="30" repeat-gap="150" priority="{$pr-waterway-name}" />
    </rule>   
    <rule e="way" k="tunnel" v="yes|culvert">
        <line stroke="{$stroke-color}" stroke-dasharray="1,0.4" stroke-width="{$stroke-width}" stroke-linecap="butt" scale="all"/>
    </rule>
    <rule e="way" k="tunnel" v="~|no">
        <rule e="way" k="intermittent" v="~|no">
            <rule e="way" k="*" v="*" zoom-max="{$zoom-min + 1}"> 
                <line stroke="{$stroke-color}" stroke-width="{$stroke-width}"/>
            </rule>
            <rule e="way" k="*" v="*" zoom-min="{$zoom-min + 2}"> 
                <line stroke="{$stroke-color}" stroke-width="{$stroke-width2}"/>
            </rule>
        </rule>
        <rule e="way" k="intermittent" v="yes">
            <line stroke="{$stroke-color}" stroke-dasharray="0.5,1" stroke-width="{$stroke-width}" scale="all"/>
        </rule>
    </rule>
    <rule e="way" k="*" v="*" zoom-min="{$zoom-min +2 }" zoom-max="{$zoom-min + 3}">
        <lineSymbol src="{$signsPath}/drift.svg" align-center="true" repeat="true" repeat-start="15" repeat-gap="{$repeat-gap-low}" symbol-width="{$drift-width}"  priority="{$pr-drift}"/>
    </rule>
    <rule e="way" k="*" v="*" zoom-min="{$zoom-min+ 4}">
        <lineSymbol src="{$signsPath}/drift.svg" align-center="true" repeat="true" repeat-start="15" repeat-gap="{$repeat-gap-high}"  symbol-width="{$drift-width}" priority="{$pr-drift}"/>
    </rule>    
</rule>
</xsl:template>
</xsl:stylesheet>