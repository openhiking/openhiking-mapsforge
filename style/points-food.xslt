<?xml-stylesheet type="text/xsl"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<!-- 
# OpenHikingMap
#
# Point rendering: Food
#
# Copyright (c) 2022-2023 OpenHiking contributors
# SPDX-License-Identifier: GPL-3.0-only
-->
<xsl:template name="points-food">

<rule  e="any" k="amenity" v="restaurant" zoom-min="15">
    <rule  e="any" k="*" v="*" zoom-max="16">
        <symbol id="restaurant" src="{$symbolPath}/restaurant.svg" symbol-width="16" priority="{$pr-restaurant}"/>
    </rule> 
    <rule  e="any" k="*" v="*" zoom-min="17">
        <symbol id="restaurant" src="{$symbolPath}/restaurant.svg" symbol-width="18" priority="{$pr-restaurant}"/>
    </rule>                         
    <rule e="any" k="*" v="*" zoom-min="16">
        <caption k="name" symbol-id="restaurant" 
        font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2"  priority="{$pr-label-food}"/>
    </rule>       
</rule>

<rule  e="any" k="amenity" v="fast_food" zoom-min="15">
    <symbol id="fast_food" src="{$symbolPath}/fast_food.svg" symbol-width="18" priority="{$pr-fast-food}"/>
    <rule e="any" k="*" v="*" zoom-min="16">
        <caption k="name" symbol-id="fast_food" 
        font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2"  priority="{$pr-label-food}"/>
    </rule>       
</rule>

<rule  e="any" k="amenity" v="ice_cream" zoom-min="15">
    <symbol id="ice_cream" src="{$symbolPath}/ice_cream.svg" symbol-width="14" priority="{$pr-ice-cream}"/>
    <rule e="any" k="*" v="*" zoom-min="16">
        <caption k="name" symbol-id="ice_cream" 
        font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2"  priority="{$pr-label-food}"/>
    </rule>       
</rule>

<rule  e="any" k="amenity" v="cafe" zoom-min="15">
<symbol id="cafe" src="{$symbolPath}/cafe.svg" symbol-width="19" priority="{$pr-cafe}"/>
    <rule e="any" k="*" v="*" zoom-min="16">
        <caption k="name" symbol-id="cafe" 
        font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2"  priority="{$pr-label-food}"/>
    </rule>       
</rule>

<rule  e="any" k="amenity" v="pub|biergarten|bar" zoom-min="15">
        <symbol id="pub" src="{$symbolPath}/pub.svg" symbol-width="18" priority="{$pr-pub}"/>
        <rule e="any" k="*" v="*" zoom-min="16">
            <caption k="name" symbol-id="pub" 
            font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2"  priority="{$pr-label-food}"/>
        </rule>       
</rule>

<rule  e="any" k="craft" v="winery" zoom-min="15">
    <symbol id="winery" src="{$symbolPath}/winery.svg" symbol-width="18" priority="{$pr-winery}"/>
    <rule e="any" k="*" v="*" zoom-min="16">
        <caption k="name" symbol-id="winery" 
        font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2"  priority="{$pr-label-food}"/>
    </rule>       
</rule>


<rule  e="any" k="shop" v="confectionery|pastry" zoom-min="15">
        <symbol id="confectionery" src="{$symbolPath}/confectionery.svg" symbol-width="22" priority="{$pr-confectionery}"/>
        <rule e="any" k="*" v="*" zoom-min="16">
            <caption k="name" symbol-id="confectionery" 
            font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2"  priority="{$pr-label-food}"/>
        </rule>       
</rule>



</xsl:template>
</xsl:stylesheet>