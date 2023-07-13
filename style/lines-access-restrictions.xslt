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
<rule cat="restricted_access" e="way" k="highway" v="path|footway|platform|bridleway|steps|pedestrian|track|raceway|cycleway|service|living_street|residential|unclassified|tertiary|secondary|primary" >
    <rule e="way" k="area" v="~">
        <rule e="way" k="foot" v="no" >
            <rule e="any" k="*" v="*" zoom-max="16">
                <lineSymbol src="{$symbolPath}/access_private.svg" align-center="true" repeat="true" repeat-start="15" repeat-gap="60" symbol-width="8"  priority="{$pr-restricted}"/>
            </rule> 
            <rule e="any" k="*" v="*" zoom-min="17" zoom-max="18">
                <lineSymbol src="{$symbolPath}/access_private.svg" align-center="true" repeat="true" repeat-start="15" repeat-gap="80" symbol-width="12"  priority="{$pr-restricted}"/>
            </rule> 
            <rule e="any" k="*" v="*" zoom-min="19" >
                <lineSymbol src="{$symbolPath}/access_private.svg" align-center="true" repeat="true" repeat-start="15" repeat-gap="160" symbol-width="14"  priority="{$pr-restricted}"/>
            </rule> 
        </rule>
        <rule e="way" k="foot" v="customers" >
            <rule e="any" k="*" v="*" zoom-max="16">
                <lineSymbol src="{$symbolPath}/access_customers.svg" align-center="true" repeat="true" repeat-start="15" repeat-gap="60" symbol-width="8"  priority="{$pr-restricted}"/>
            </rule> 
            <rule e="any" k="*" v="*" zoom-min="17" zoom-max="18">
                <lineSymbol src="{$symbolPath}/access_customers.svg" align-center="true" repeat="true" repeat-start="15" repeat-gap="80" symbol-width="12"  priority="{$pr-restricted}"/>
            </rule> 
            <rule e="any" k="*" v="*" zoom-min="19" >
                <lineSymbol src="{$symbolPath}/access_customers.svg" align-center="true" repeat="true" repeat-start="15" repeat-gap="160" symbol-width="14"  priority="{$pr-restricted}"/>
            </rule> 
        </rule>
    </rule>
</rule>

</xsl:template>


</xsl:stylesheet>