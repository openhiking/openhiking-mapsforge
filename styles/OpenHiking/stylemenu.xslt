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
	<layer id="hiking_routes" enabled="true" visible="false">
		<name lang="en" value="Hiking routes" />
		<name lang="hu" value="Turistautak" />
		<cat id="hiking_routes" />
	</layer>
	<layer id="pilgrimage_routes" enabled="false" visible="false">
		<name lang="en" value="Pilgrimage routes" />
		<name lang="hu" value="Zarándokutak" />
		<cat id="pilgrimage_routes" />
	</layer>
	<layer id="unmarked_routes" enabled="false" visible="false">
		<name lang="en" value="Unmarked hiking routes" />
		<name lang="hu" value="Jelölés nélküli útvonalak" />
		<cat id="unmarked_routes" />
	</layer>    
	<layer id="hiking_sac_highlight" enabled="false" visible="false">
		<name lang="en" value="SAC highlighting" />
		<name lang="hu" value="SAC nehézség jelölés" />
		<cat id="hiking_sac_highlight" />
	</layer>    
	<layer id="seasonal_closure" enabled="true" visible="false">
		<name lang="en" value="Seasonal closure highlighting" />
		<name lang="hu" value="Időszakos zárlat kiemelés" />
		<cat id="seasonal_closure" />
	</layer>     
    <layer id="hiking_winter" enabled="false" visible="false">
		<name lang="en" value="Winter hiking routes" />
		<name lang="hu" value="Téli túrautak" />        
		<cat id="hiking_winter" />
	</layer>
    <layer id="ski_downhill" enabled="false" visible="false">
        <name lang="en" value="Downhill ski tracks" />
        <name lang="hu" value="Sílesikló pályák" />
        <cat id="ski_downhill" />
    </layer>  
    <layer id="ski_nordic" enabled="false" visible="false">
		<name lang="en" value="Cross-country ski routes " />
		<name lang="hu" value="Sífutó utak" />        
		<cat id="ski_nordic" />
	</layer>
    <layer id="ski_tour" enabled="false" visible="false">
		<name lang="en" value="Skitour routes " />
		<name lang="hu" value="Sítúra utak" />        
		<cat id="ski_tour" />
	</layer>
    <layer id="region_border" enabled="false" visible="false">
        <name lang="en" value="Region boundaries" />
        <name lang="hu" value="Régióhatárok" />
        <cat id="region_border" />
    </layer>

    <layer id="contours" enabled="true" visible="false">
        <name lang="en" value="Contour lines" />
        <name lang="hu" value="Szintvonalak" />
        <cat id="contours" />
    </layer>
    <layer id="buildings" enabled="true" visible="false">
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
    <layer id="restricted_access" enabled="true" visible="false">
        <name lang="en" value="Access restrictions" />
        <name lang="hu" value="Behajtási korlátozások" />
        <cat id="restricted_access" />
    </layer>
	<layer id="cycleway_symbols" enabled="true" visible="false">
		<name lang="en" value="Cycleway symbols" />
		<name lang="hu" value="Kerékpárút ikonok" />
		<cat id="cycleway_symbols" />
	</layer>
   	<layer id="editorial" enabled="false" visible="false">
		<name lang="en" value="OSM editorial symbols" />
		<name lang="hu" value="OSM szerkesztői jelölések" />
		<cat id="editorial" />
	</layer>
     

	<layer id="topo" visible="true">
		<name lang="en" value="OpenHiking layers" />    
		<name lang="hu" value="OpenHiking rétegek" />
        <cat id="building" />
        <overlay id="hiking_routes" /> 
        <overlay id="pilgrimage_routes" />    
        <overlay id="unmarked_routes" />    
        <overlay id="hiking_sac_highlight" /> 
        <overlay id="seasonal_closure" />   
        <overlay id="hiking_winter" /> 
        <overlay id="ski_downhill" /> 
        <overlay id="ski_nordic" />         
        <overlay id="ski_tour" />  
        <overlay id="region_border" />               
		<overlay id="protected_area" />        
		<overlay id="military_area" />
        <overlay id="restricted_access" />
		<overlay id="contours" />        
		<overlay id="fences" />        
        <overlay id="power" />  
		<overlay id="buildings" />  
        <overlay id="cycleway_symbols" />                    
        <overlay id="editorial" />                       
	</layer>


</stylemenu>

</xsl:template>
</xsl:stylesheet>