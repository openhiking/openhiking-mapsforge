<?xml-stylesheet type="text/xsl"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<!-- 
# OpenHikingMap
#
# Point rendering: Financial POIs
#
# Copyright (c) 2022-2023 OpenHiking contributors
# SPDX-License-Identifier: GPL-3.0-only
-->

<xsl:template name="points-financial">
<rule  e="any" k="amenity" v="bank" zoom-min="14">
        <symbol id="bank" src="{$symbolPath}/bank.svg" symbol-width="20" priority="{$pr-bank}"/>
        <rule e="any" k="*" v="*" >
            <caption k="name" symbol-id="bank" 
            font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2"  priority="{$pr-label-financial}"/>
        </rule>       
</rule>

</xsl:template>
</xsl:stylesheet>