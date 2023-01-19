<?xml-stylesheet type="text/xsl"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<!-- 
# OpenHikingMap
#
# Point rendering: Shops
#
# Copyright (c) 2022-2023 OpenHiking contributors
# SPDX-License-Identifier: GPL-3.0-only
-->

<xsl:template name="points-shops">


<rule  e="any" k="shop" v="mall" zoom-min="14">
    <rule  e="any" k="*" v="*" zoom-max="15">
        <symbol id="shopping_center" src="{$symbolPath}/shopping_center.svg" symbol-width="20" priority="{$pr-shopping-center}"/>
    </rule> 
    <rule  e="any" k="*" v="*" zoom-min="16">
        <symbol id="shopping_center" src="{$symbolPath}/shopping_center.svg" symbol-width="22" priority="{$pr-shopping-center}"/>
    </rule>                         
    <rule e="any" k="*" v="*" >
        <caption k="name" symbol-id="shopping_center" 
        font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2"  priority="{$pr-shopping-center}"/>
    </rule>       
</rule>

<rule  e="any" k="shop" v="general|supermarket" zoom-min="14">
    <rule  e="any" k="*" v="*" zoom-max="15">
        <symbol id="supermarket" src="{$symbolPath}/supermarket.svg" symbol-width="18" priority="{$pr-supermarket}"/>
    </rule> 
    <rule  e="any" k="*" v="*" zoom-min="16">
        <symbol id="supermarket" src="{$symbolPath}/supermarket.svg" symbol-width="20" priority="{$pr-supermarket}"/>            
    </rule>                         
    <rule e="any" k="*" v="*" >
        <caption k="name" symbol-id="supermarket" 
        font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2"  priority="{$pr-supermarket}"/>
    </rule>       
</rule>


<rule  e="any" k="shop" v="convenience" zoom-min="14">
    <rule  e="any" k="*" v="*" zoom-max="15">
        <symbol id="convenience" src="{$symbolPath}/convenience.svg" symbol-width="18" priority="{$pr-convenience}"/>
    </rule> 
    <rule  e="any" k="*" v="*" zoom-min="16">
        <symbol id="convenience" src="{$symbolPath}/convenience.svg" symbol-width="20" priority="{$pr-convenience}"/>
    </rule>                         
    <rule e="any" k="*" v="*" >
        <caption k="name" symbol-id="convenience" 
        font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2"  priority="{$pr-convenience}"/>
    </rule>       
</rule>

<rule  e="any" k="shop" v="bakery" zoom-min="14">
    <rule  e="any" k="*" v="*" zoom-max="15">
        <symbol id="bakery" src="{$symbolPath}/bakery.svg" symbol-width="18" priority="{$pr-bakery}"/> 
    </rule> 
    <rule  e="any" k="*" v="*" zoom-min="16">
        <symbol id="bakery" src="{$symbolPath}/bakery.svg" symbol-width="20" priority="{$pr-bakery}"/>  
    </rule>                         
    <rule e="any" k="*" v="*" >
        <caption k="name" symbol-id="bakery" 
        font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2"  priority="{$pr-bakery}"/>
    </rule>       
</rule>

<rule  e="any" k="shop" v="clothes|boutique|shoes|leather" zoom-min="15">
    <symbol id="shop" src="{$symbolPath}/shop.svg" symbol-width="20" priority="{$pr-shop}"/>
    <rule e="any" k="*" v="*" >
        <caption k="name" symbol-id="shop" 
        font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2"  priority="{$pr-shop}"/>
    </rule>       
</rule>

<rule  e="any" k="shop" v="doityourself|electrical|florist|garden_centre|houseware" zoom-min="15">
    <symbol id="shop" src="{$symbolPath}/shop.svg" symbol-width="20" priority="{$pr-shop}"/>
    <rule e="any" k="*" v="*" >
        <caption k="name" symbol-id="shop" 
        font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2"  priority="{$pr-shop}"/>
    </rule>       
</rule>

<rule  e="any" k="shop" v="furniture|interior_decoration|kitchen" zoom-min="15">
    <symbol id="shop" src="{$symbolPath}/shop.svg" symbol-width="20" priority="{$pr-shop}"/>
    <rule e="any" k="*" v="*" >
        <caption k="name" symbol-id="shop" 
        font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2"  priority="{$pr-shop}"/>
    </rule>       
</rule>

<rule  e="any" k="shop" v="bicycle" zoom-min="15">
    <symbol id="shop" src="{$symbolPath}/shop.svg" symbol-width="20" priority="{$pr-shop}"/>
    <rule e="any" k="*" v="*" >
        <caption k="name" symbol-id="shop" 
        font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2"  priority="{$pr-shop}"/>
    </rule>       
</rule>

<rule  e="any" k="shop" v="computer|electronics|mobile_phone" zoom-min="15">
    <symbol id="shop" src="{$symbolPath}/shop.svg" symbol-width="20" priority="{$pr-shop}"/>
    <rule e="any" k="*" v="*" >
        <caption k="name" symbol-id="shop" 
        font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2"  priority="{$pr-shop}"/>
    </rule>       
</rule>

<rule  e="any" k="shop" v="sports" zoom-min="15">
    <symbol id="shop" src="{$symbolPath}/shop.svg" symbol-width="20" priority="{$pr-shop}"/>
    <rule e="any" k="*" v="*" >
        <caption k="name" symbol-id="shop" 
        font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2"  priority="{$pr-shop}"/>
    </rule>       
</rule>

<rule  e="any" k="shop" v="butcher|cheese|chocolate|deli|farm|seafood" zoom-min="15">
    <symbol id="shop" src="{$symbolPath}/shop.svg" symbol-width="20" priority="{$pr-shop}"/>
    <rule e="any" k="*" v="*" >
        <caption k="name" symbol-id="shop" 
        font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2"  priority="{$pr-shop}"/>
    </rule>       
</rule>

<rule  e="any" k="shop" v="kiosk" zoom-min="15">
    <symbol id="shop" src="{$symbolPath}/shop.svg" symbol-width="20" priority="{$pr-shop}"/>
    <rule e="any" k="*" v="*" >
        <caption k="name" symbol-id="shop" 
        font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2"  priority="{$pr-shop}"/>
    </rule>       
</rule>


</xsl:template>
</xsl:stylesheet>