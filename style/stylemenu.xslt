<?xml-stylesheet type="text/xsl"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<!-- 
# OpenHikingMap
#
# Style menu
#
# Copyright (c) 2022-2023 OpenHiking contributors
# SPDX-License-Identifier: GPL-3.0-only
-->

<xsl:template name="stylemenu">


<stylemenu id="openhiking" defaultvalue="topo" defaultlang="en">
    <layer id="contours" enabled="true" visible="false">
        <name lang="en" value="Contour lines" />
        <name lang="hu" value="Szintvonalak" />
        <cat id="contours" />
    </layer>
    <layer id="buildings" enabled="false" visible="false">
        <name lang="en" value="Buildings" />
        <name lang="hu" value="Épületkontúrok" />
        <cat id="buildings" />
    </layer>
    <layer id="fences" enabled="true" visible="false">
        <name lang="en" value="Fences" />
        <name lang="hu" value="Kerítések" />
        <cat id="fences" />
    </layer>
    <layer id="power" enabled="true" visible="false">
        <name lang="en" value="Power lines" />
        <name lang="hu" value="Távvezetékek" />
        <cat id="power" />
    </layer>
    <layer id="ski" enabled="false" visible="false">
        <name lang="en" value="Ski tracks" />
        <name lang="hu" value="Sípályák" />
        <cat id="ski" />
    </layer>

    <layer id="protected_area" enabled="true" visible="false">
        <name lang="en" value="Protected areas" />
        <name lang="hu" value="Védett területek" />
        <cat id="protected_area" />
    </layer>
    <layer id="military_area" enabled="true" visible="false">
        <name lang="en" value="Military areas" />
        <name lang="hu" value="Katonai területek" />
        <cat id="military_area" />
    </layer>
	<layer id="hiking_colored_routes_t" enabled="true" visible="false">
		<name lang="en" value="Hiking routes " />
		<name lang="hu" value="Turistaút kiemelés" />        
		<cat id="colored_hiking" />
	</layer>
	<layer id="hiking_symbols" enabled="true" visible="false">
		<name lang="en" value="Hiking symbols" />
		<name lang="hu" value="Turistajelzések" />
		<cat id="hiking_symbols" />
	</layer>


	<layer id="topo" visible="true">
		<name lang="en" value="OpenHiking layers" />    
		<name lang="hu" value="OpenHiking rétegek" />
        <cat id="all" />
        <cat id="topo" />
        <cat id="topo_common" />
        <cat id="topo_icons" />
        <cat id="building" />
        <cat id="place" />
		<overlay id="contours" />
		<overlay id="buildings" />        
		<overlay id="fences" />
        <overlay id="power" />  
        <overlay id="ski" /> 
		<overlay id="protected_area" />
		<overlay id="military_area" />
		<overlay id="hiking_colored_routes_t" />        
		<overlay id="hiking_symbols" />                
	</layer>


</stylemenu>

</xsl:template>
</xsl:stylesheet>