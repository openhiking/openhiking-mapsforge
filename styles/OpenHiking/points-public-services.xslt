<?xml-stylesheet type="text/xsl"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<!-- 
# OpenHikingMap
#
# Point rendering: Amenities
#
# Copyright (c) 2022-2024 OpenHiking contributors
# SPDX-License-Identifier: GPL-3.0-only
-->

<xsl:template name="points-public-services">


<rule  e="any" k="amenity" v="townhall" zoom-min="15">
        <symbol id="townhall" src="{$publicServiceIconPath}/townhall.svg" symbol-width="20" priority="{$pr-police}"/>
        <rule e="any" k="*" v="*" zoom-min="16">
            <caption k="name" symbol-id="townhall" 
            font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2"  priority="{$pr-label-amenities}"/>
        </rule>       
</rule>

<rule  e="any" k="amenity" v="courthouse" zoom-min="15">
    <rule  e="any" k="*" v="*" zoom-max="16">
        <symbol id="courthouse" src="{$publicServiceIconPath}/courthouse.svg" symbol-width="20" priority="{$pr-courthouse}"/>
        </rule>
    <rule  e="any" k="*" v="*" zoom-max="17"> 
        <symbol id="courthouse" src="{$publicServiceIconPath}/courthouse.svg" symbol-width="22" priority="{$pr-courthouse}"/>       
    </rule>
    <rule e="any" k="*" v="*" zoom-min="16">
        <caption k="name" symbol-id="courthouse" 
        font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2"  priority="{$pr-label-amenities}"/>
    </rule>       
</rule>

<rule  e="any" k="amenity" v="marketplace" zoom-min="15">
        <symbol id="marketplace" src="{$publicServiceIconPath}/marketplace.svg" symbol-width="22" priority="{$pr-marketplace}"/>
        <rule e="any" k="*" v="*" zoom-min="16">
            <caption k="name" symbol-id="marketplace" 
            font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2"  priority="{$pr-label-amenities}"/>
        </rule>       
</rule>

<rule  e="any" k="amenity" v="community_centre" zoom-min="15">
        <symbol id="community_centre" src="{$publicServiceIconPath}/community_centre.svg" symbol-width="22" priority="{$pr-community-centre}"/>
        <rule e="any" k="*" v="*" zoom-min="16">
            <caption k="name" symbol-id="community_centre" 
            font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2"  priority="{$pr-label-amenities}"/>
        </rule>       
</rule>

<rule  e="any" k="amenity" v="police" zoom-min="15">
        <symbol id="police" src="{$publicServiceIconPath}/police.svg" symbol-width="20" priority="{$pr-police}"/>
        <rule e="any" k="*" v="*" zoom-min="16">
            <caption k="name" symbol-id="police" 
            font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2"  priority="{$pr-label-amenities}"/>
        </rule>       
</rule>


<rule  e="any" k="amenity" v="fire_station" zoom-min="15">
        <symbol id="fire_station" src="{$publicServiceIconPath}/fire_station.svg" symbol-width="22" priority="{$pr-fire-station}"/>
        <rule e="any" k="*" v="*" zoom-min="16">
            <caption k="name" symbol-id="fire_station" 
            font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2"  priority="{$pr-label-amenities}"/>
        </rule>       
</rule>

<rule  e="any" k="emergency" v="ambulance_station" zoom-min="15">
    <rule  e="any" k="*" v="*" zoom-max="16">
        <symbol id="ambulance_station" src="{$publicServiceIconPath}/ambulance_station.svg" symbol-width="24" priority="{$pr-ambulance-station}"/>
    </rule> 
    <rule  e="any" k="*" v="*" zoom-min="17">
        <symbol id="ambulance_station" src="{$publicServiceIconPath}/ambulance_station.svg" symbol-width="26" priority="{$pr-ambulance-station}"/>
    </rule>                         
    <rule e="any" k="*" v="*" zoom-min="15">
        <caption k="name" symbol-id="ambulance_station" 
            font-style="bold" font-size="11" fill="#666666" stroke="#ffffff" stroke-width="2"  priority="{$pr-ambulance-station}"/>
    </rule>       
</rule>


<rule  e="any" k="amenity" v="post_office" zoom-min="14">
        <symbol id="post_office" src="{$publicServiceIconPath}/post_office.svg" symbol-width="20" priority="{$pr-post-office}"/>
        <rule e="any" k="*" v="*" zoom-min="16">
            <caption k="name" symbol-id="post_office" 
            font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2"  priority="{$pr-label-amenities}"/>
        </rule>       
</rule>


<rule  e="any" k="amenity" v="toilets" zoom-min="16">
    <symbol id="toilets" src="{$publicServiceIconPath}/toilets.svg" symbol-width="19" priority="{$pr-toilets}"/>
</rule>        

<rule  e="any" k="amenity" v="recycling" zoom-min="16">
    <symbol id="recycling" src="{$publicServiceIconPath}/recycling.svg" symbol-width="18" priority="{$pr-recycling}"/>
</rule>        

<rule  e="any" k="amenity" v="drinking_water" >
    <rule  e="any" k="*" v="*" zoom-min="15" zoom-max="16">
        <symbol id="drinking_water" src="{$publicServiceIconPath}/drinking_water.svg" symbol-width="18" priority="{$pr-drinking-water}"/>
    </rule>        
    <rule  e="any" k="*" v="*" zoom-min="17">
        <symbol id="drinking_water" src="{$publicServiceIconPath}/drinking_water.svg" symbol-width="20" priority="{$pr-drinking-water}"/>
    </rule>        
</rule>        



</xsl:template>
</xsl:stylesheet>