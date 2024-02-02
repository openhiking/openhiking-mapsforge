<?xml-stylesheet type="text/xsl"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<!-- 
# OpenHikingMap
#
# Point rendering: OSM Editorial
#
# Copyright (c) 2022-2023 OpenHiking contributors
# SPDX-License-Identifier: GPL-3.0-only
-->
<xsl:template name="points-editorial">

<rule  cat="editorial" e="node" k="fixme" v="continue" zoom-min="16">
        <symbol id="fixme" src="{$symbolPath}/fixme.svg" symbol-width="10" priority="{$pr-fixme}"/>  
</rule>

</xsl:template>
</xsl:stylesheet>