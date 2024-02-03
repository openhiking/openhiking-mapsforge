<?xml-stylesheet type="text/xsl"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<!-- 
# OpenHikingMap
#
# Obstacles on highways
#
# Copyright (c) 2022-2023 OpenHiking contributors
# SPDX-License-Identifier: GPL-3.0-only
-->
<xsl:template name="lines-obstacles">
<rule  e="way" k="highway" v="*" >
    <rule e="way" k="area" v="~">
        <rule e="way" k="obstacle" v="vegetation" >
            <rule e="any" k="*" v="*" zoom-min="15" zoom-max="15">
                <lineSymbol src="{$symbolPath}/obstacle_vegetation.svg" align-center="true" repeat="true" repeat-start="10" repeat-gap="80" symbol-width="18"  rotate="false" priority="{$pr-obstacle}"/>
            </rule>
            <rule e="any" k="*" v="*" zoom-min="16" zoom-max="16">
                <lineSymbol src="{$symbolPath}/obstacle_vegetation.svg" align-center="true" repeat="true" repeat-start="10" repeat-gap="120" symbol-width="20"  rotate="false" priority="{$pr-obstacle}"/>
            </rule>
            <rule e="any" k="*" v="*" zoom-min="17" zoom-max="18">
                <lineSymbol src="{$symbolPath}/obstacle_vegetation.svg" align-center="true" repeat="true" repeat-start="30" repeat-gap="180" symbol-width="22"  rotate="false" priority="{$pr-obstacle}"/>
            </rule>
            <rule e="any" k="*" v="*" zoom-min="19" >
                <lineSymbol src="{$symbolPath}/obstacle_vegetation.svg" align-center="true" repeat="true" repeat-start="60" repeat-gap="220" symbol-width="24"  rotate="false" priority="{$pr-obstacle}"/>
            </rule>            
        </rule>
        <rule e="way" k="obstacle" v="fallen_tree" >
            <rule e="any" k="*" v="*" zoom-min="15" zoom-max="15">
                <lineSymbol src="{$symbolPath}/obstacle_fallen_tree.svg" align-center="true" repeat="true" repeat-start="10" repeat-gap="80" symbol-width="18" rotate="false" priority="{$pr-obstacle}"/>
            </rule>
            <rule e="any" k="*" v="*" zoom-min="16" zoom-max="16">
                <lineSymbol src="{$symbolPath}/obstacle_fallen_tree.svg" align-center="true" repeat="true" repeat-start="10" repeat-gap="120" symbol-width="20"  rotate="false" priority="{$pr-obstacle}"/>
            </rule>
            <rule e="any" k="*" v="*" zoom-min="17" zoom-max="18">
                <lineSymbol src="{$symbolPath}/obstacle_fallen_tree.svg" align-center="true" repeat="true" repeat-start="30" repeat-gap="180" symbol-width="22"  rotate="false" priority="{$pr-obstacle}"/>
            </rule>

            <rule e="any" k="*" v="*" zoom-min="19" >
                <lineSymbol src="{$symbolPath}/obstacle_fallen_tree.svg" align-center="true" repeat="true" repeat-start="60" repeat-gap="220" symbol-width="24" rotate="false"  priority="{$pr-obstacle}"/>
            </rule>            
        </rule>
    </rule>
</rule>

</xsl:template>

</xsl:stylesheet>