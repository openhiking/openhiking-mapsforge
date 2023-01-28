<?xml-stylesheet type="text/xsl"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<!-- 
# OpenHikingMap
#
# Point rendering: Accomodation
#
# Copyright (c) 2022-2023 OpenHiking contributors
# SPDX-License-Identifier: GPL-3.0-only
-->
<xsl:template name="points-accomodation">

<rule  e="any" k="tourism" v="hostel" zoom-min="15">
        <rule  e="any" k="*" v="*" zoom-max="16">
            <symbol id="hostel" src="{$symbolPath}/hostel.svg" symbol-width="20" priority="{$pr-hostel}"/>
        </rule> 
        <rule  e="any" k="*" v="*" zoom-min="17">
            <symbol id="hostel" src="{$symbolPath}/hostel.svg" symbol-width="24" priority="{$pr-hostel}"/>
        </rule>                         
    <rule e="any" k="*" v="*" zoom-min="16">
        <caption k="name" symbol-id="hostel" 
        font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2"  priority="{$pr-label-accomodation}"/>
    </rule>       
</rule>

<rule  e="any" k="tourism" v="hotel|motel|guest_house|bed_and_breakfast|apartment|chalet" zoom-min="15">
        <rule  e="any" k="*" v="*" zoom-max="16">
            <symbol id="hotel" src="{$symbolPath}/hotel.svg" symbol-width="20" priority="{$pr-hotel}"/>
        </rule> 
        <rule  e="any" k="*" v="*" zoom-min="17">
            <symbol id="hotel" src="{$symbolPath}/hotel.svg" symbol-width="24" priority="{$pr-hotel}"/>
        </rule>                         
    <rule e="any" k="*" v="*" zoom-min="16">
        <caption k="name" symbol-id="hotel" 
        font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2"  priority="{$pr-label-accomodation}"/>
    </rule>       
</rule>

<!-- 
<rule  e="any" k="tourism" v="chalet" zoom-min="16">
    <symbol id="hotel" src="{$symbolPath}/chalet.svg" symbol-width="20" priority="{$pr-chalet}"/>
    <rule e="any" k="*" v="*" zoom-min="16">
        <caption k="name" symbol-id="chalet" 
        font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2"  priority="{$pr-label-accomodation}"/>
    </rule>       
</rule>
-->

<rule  e="any" k="tourism" v="camp_site" zoom-min="14">
    <rule  e="any" k="camp_site" v="basic" >
        <rule  e="any" k="*" v="*" zoom-max="15">
            <symbol id="camp_site" src="{$symbolPath}/camp_site_basic.svg" symbol-width="21" priority="{$pr-camp-site}"/>
        </rule> 
        <rule  e="any" k="*" v="*" zoom-min="16">
            <symbol id="camp_site" src="{$symbolPath}/camp_site_basic.svg" symbol-width="24" priority="{$pr-camp-site}"/>
        </rule>                         
    </rule> 
    <rule  e="any" k="camp_site" v="~" >
        <rule  e="any" k="*" v="*" zoom-max="15">
            <symbol id="camp_site" src="{$symbolPath}/camp_site.svg" symbol-width="21" priority="{$pr-camp-site}"/>
        </rule> 
        <rule  e="any" k="*" v="*" zoom-min="16">
            <symbol id="camp_site" src="{$symbolPath}/camp_site.svg" symbol-width="24" priority="{$pr-label-accomodation}"/>
        </rule>                         
    </rule>                   
    <rule e="any" k="*" v="*" zoom-min="15">
        <caption k="name" symbol-id="camp_site" 
        font-style="italic" font-size="12" fill="#666666" stroke="#ffffff" stroke-width="2"  priority="{$pr-label-accomodation}"/>
    </rule>                 
</rule>

<rule  e="any" k="tourism" v="caravan_site" zoom-min="15">
    <symbol id="caravan_site" src="{$symbolPath}/camp_site.svg" symbol-width="23" priority="{$pr-camp-site}"/>
    <rule e="any" k="*" v="*" zoom-min="16">
        <caption k="name" symbol-id="caravan_site" 
        font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2"  priority="{$pr-label-accomodation}"/>
    </rule>
</rule>        




</xsl:template>
</xsl:stylesheet>