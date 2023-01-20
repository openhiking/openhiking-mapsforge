<?xml-stylesheet type="text/xsl"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<!-- 
# OpenHikingMap
#
# Point rendering: Amenities
#
# Copyright (c) 2022-2023 OpenHiking contributors
# SPDX-License-Identifier: GPL-3.0-only
-->

<xsl:template name="points-amenities">

<rule  e="any" k="amenity" v="police" zoom-min="15">
        <symbol id="police" src="{$symbolPath}/police.svg" symbol-width="20" priority="{$pr-police}"/>
        <rule e="any" k="*" v="*" >
            <caption k="name" symbol-id="police" 
            font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2"  priority="{$pr-police}"/>
        </rule>       
</rule>

<rule  e="any" k="amenity" v="courthouse" zoom-min="15">
    <rule  e="any" k="*" v="*" zoom-max="16">
        <symbol id="courthouse" src="{$symbolPath}/courthouse.svg" symbol-width="20" priority="{$pr-courthouse}"/>
        </rule>
    <rule  e="any" k="*" v="*" zoom-max="17"> 
        <symbol id="courthouse" src="{$symbolPath}/courthouse.svg" symbol-width="22" priority="{$pr-courthouse}"/>       
    </rule>
    <rule e="any" k="*" v="*" >
        <caption k="name" symbol-id="courthouse" 
        font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2"  priority="{$pr-courthouse}"/>
    </rule>       
</rule>


<rule  e="any" k="amenity" v="post_office" zoom-min="14">
        <symbol id="post_office" src="{$symbolPath}/post_office.svg" symbol-width="20" priority="{$pr-post-office}"/>
        <rule e="any" k="*" v="*" >
            <caption k="name" symbol-id="post_office" 
            font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2"  priority="{$pr-post-office}"/>
        </rule>       
</rule>

<rule e="any" k="access" v="~|yes" >
    <rule  e="any" k="amenity" v="toilets" zoom-min="16">
        <symbol id="toilets" src="{$symbolPath}/toilets.svg" symbol-width="18" priority="{$pr-toilets}"/>
    </rule>        

    <rule  e="any" k="amenity" v="recycling" zoom-min="16">
        <symbol id="recycling" src="{$symbolPath}/recycling.svg" symbol-width="18" priority="{$pr-recycling}"/>
    </rule>        

    <rule  e="any" k="amenity" v="drinking_water" zoom-min="14">
        <symbol id="drinking_water" src="{$symbolPath}/drinking_water.svg" symbol-width="20" priority="{$pr-drinking-water}"/>
    </rule>        


</rule>

<rule  e="any" k="amenity" v="marketplace" zoom-min="15">
        <symbol id="marketplace" src="{$symbolPath}/marketplace.svg" symbol-width="22" priority="{$pr-marketplace}"/>
        <rule e="any" k="*" v="*" >
            <caption k="name" symbol-id="marketplace" 
            font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2"  priority="{$pr-marketplace}"/>
        </rule>       
</rule>


<rule  e="any" k="shop" v="ticket" zoom-min="16">
        <symbol id="tickets" src="{$symbolPath}/tickets.svg" symbol-width="20" priority="{$pr-tickets}"/>
        <rule e="any" k="*" v="*" >
            <caption k="name" symbol-id="tickets" 
            font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2"  priority="{$pr-tickets}"/>
        </rule>       
</rule>


</xsl:template>
</xsl:stylesheet>