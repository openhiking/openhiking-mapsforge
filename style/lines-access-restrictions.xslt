<?xml-stylesheet type="text/xsl"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<!-- 
# OpenHikingMap
#
# Access restrictions on highways
#
# Copyright (c) 2022-2023 OpenHiking contributors
# SPDX-License-Identifier: GPL-3.0-only
-->
<xsl:template name="lines-access-restrictions">
<rule cat="restricted_access" e="way" k="highway" v="*" >
    <rule e="way" k="foot" v="no" >
        <xsl:call-template name="access-restriction-rules">
        <xsl:with-param name="symbolSource" select="concat($symbolPath,'/access_private.svg')" />        
        </xsl:call-template>
    </rule>
    <rule e="way" k="foot" v="customers" >
        <xsl:call-template name="access-restriction-rules">
        <xsl:with-param name="symbolSource" select="concat($symbolPath,'/access_customers.svg')" />        
        </xsl:call-template>
    </rule>
</rule>

</xsl:template>

<xsl:template name="access-restriction-rules">
<xsl:param name="symbolSource" />
<xsl:variable name="sw-restriced">8</xsl:variable>
<rule e="way" k="highway" v="steps|path|footway|bridleway|cycleway" zoom-min="{$zm-path}">
    <rule e="any" k="*" v="*" zoom-max="{$zm-path + 2 }">
        <lineSymbol src="{$symbolSource}" align-center="true" repeat="true" repeat-start="15" repeat-gap="60" symbol-width="{$sw-restriced}"  priority="{$pr-restricted}"/>
    </rule> 
    <rule e="any" k="*" v="*" zoom-min="{$zm-path + 3 }">
        <lineSymbol src="{$symbolSource}g" align-center="true" repeat="true" repeat-start="15" repeat-gap="80" symbol-width="12"  priority="{$pr-restricted}"/>
    </rule> 
</rule>
<rule e="way" k="highway" v="track" zoom-min="{$zm-track}">
    <rule e="any" k="*" v="*" zoom-max="{$zm-track + 2 }">
        <lineSymbol src="{$symbolSource}" align-center="true" repeat="true" repeat-start="15" repeat-gap="60" symbol-width="{$sw-restriced}"  priority="{$pr-restricted}"/>
    </rule> 
    <rule e="any" k="*" v="*" zoom-min="{$zm-track + 3 }">
        <lineSymbol src="{$symbolSource}" align-center="true" repeat="true" repeat-start="15" repeat-gap="80" symbol-width="12"  priority="{$pr-restricted}"/>
    </rule> 
</rule>    
<rule e="way" k="highway" v="service" zoom-min="{$zm-service}" >
    <rule e="any" k="*" v="*" zoom-max="{$zm-service + 2 }">
        <lineSymbol src="{$symbolSource}" align-center="true" repeat="true" repeat-start="15" repeat-gap="60" symbol-width="{$sw-restriced}"  priority="{$pr-restricted}"/>
    </rule> 
    <rule e="any" k="*" v="*" zoom-min="{$zm-service + 3 }">
        <lineSymbol src="{$symbolSource}" align-center="true" repeat="true" repeat-start="15" repeat-gap="80" symbol-width="12"  priority="{$pr-restricted}"/>
    </rule> 
</rule>                
<rule e="way" k="highway" v="living_street|residential" zoom-min="{$zm-residential}">
    <rule e="any" k="*" v="*" zoom-max="{$zm-residential + 2 }">
        <lineSymbol src="{$symbolSource}" align-center="true" repeat="true" repeat-start="15" repeat-gap="60" symbol-width="{$sw-restriced}"  priority="{$pr-restricted}"/>
    </rule> 
    <rule e="any" k="*" v="*" zoom-min="{$zm-residential + 3 }">
        <lineSymbol src="{$symbolSource}" align-center="true" repeat="true" repeat-start="15" repeat-gap="80" symbol-width="12"  priority="{$pr-restricted}"/>
    </rule> 
</rule>                
<rule e="way" k="highway" v="pedestrian" zoom-min="{$zm-pedestrian}">
    <rule e="any" k="*" v="*" zoom-max="{$zm-pedestrian + 2 }">
        <lineSymbol src="{$symbolSource}" align-center="true" repeat="true" repeat-start="15" repeat-gap="60" symbol-width="{$sw-restriced}"  priority="{$pr-restricted}"/>
    </rule> 
    <rule e="any" k="*" v="*" zoom-min="{$zm-pedestrian + 3 }">
        <lineSymbol src="{$symbolSource}" align-center="true" repeat="true" repeat-start="15" repeat-gap="80" symbol-width="12"  priority="{$pr-restricted}"/>
    </rule> 

</rule>
<rule e="way" k="highway" v="unclassified" zoom-min="{$zm-unclassified}">
    <rule e="any" k="*" v="*" zoom-max="{$zm-unclassified + 2 }">
        <lineSymbol src="{$symbolSource}" align-center="true" repeat="true" repeat-start="15" repeat-gap="60" symbol-width="{$sw-restriced}"  priority="{$pr-restricted}"/>
    </rule> 
    <rule e="any" k="*" v="*" zoom-min="{$zm-unclassified + 3 }">
        <lineSymbol src="{$symbolSource}" align-center="true" repeat="true" repeat-start="15" repeat-gap="80" symbol-width="12"  priority="{$pr-restricted}"/>
    </rule> 
              
</rule>                
</xsl:template>

</xsl:stylesheet>