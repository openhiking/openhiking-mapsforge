<?xml-stylesheet type="text/xsl"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

<xsl:template name="poly-naming">

<rule e="way" k="natural"
    v="grassland|heath|marsh|wetland|scree|scrub|wood"
    zoom-min="15">
    <caption fill="#202020" font-family="serif" font-size="12" font-style="italic" k="name"
        priority="{$pr-poly-label-natural}" stroke="#FFFFFF" stroke-width="0.1" />
</rule>
<!-- 
<rule e="way" k="natural" v="mountain_range">
    <rule e="any" k="*" v="*" zoom-min="8" zoom-max="9">
        <caption k="name" font-family="sans_serif" font-style="bold" font-size="12" 
            priority="{$pr-mountain}" fill="#663300" stroke="#ffffff" stroke-width="2"/>
    </rule>
    <rule e="any" k="*" v="*"  zoom-min="10" zoom-max="11">
        <caption k="name" font-family="serif"  font-style="bold" font-size="16" 
            priority="{$pr-mountain}" fill="#663300" stroke="#ffffff" stroke-width="2"/>
    </rule>
</rule>
-->

<rule e="way" k="natural"  v="beach"  zoom-min="15">
    <caption fill="#202020" font-family="serif" font-size="11" font-style="italic" k="name"
        priority="{$pr-poly-label-natural}" stroke="#FFFFFF" stroke-width="0.1" />
</rule>

<rule e="way" k="natural" v="bay">
    <rule e="any" k="*" v="*" zoom-min="9" zoom-max="9">
        <caption k="name" font-style="italic" font-size="9" 
            priority="{$pr-poly-label-natural}" fill="#4040ff" stroke="#ffffff" stroke-width="2"/>
    </rule>
    <rule e="any" k="*" v="*" zoom-min="10" zoom-max="11">
        <caption k="name" font-style="bold_italic" font-size="11" 
            priority="{$pr-poly-label-natural}" fill="#4040ff" stroke="#ffffff" stroke-width="2"/>
    </rule>
    <rule e="any" k="*" v="*" zoom-min="12" >
        <caption k="name" font-style="bold_italic" font-size="14" 
            priority="{$pr-poly-label-natural}" fill="#4040ff" stroke="#ffffff" stroke-width="3"/>
    </rule>            
</rule>


<rule e="way" k="natural" v="water" >
    <rule e="any" k="*" v="*" zoom-min="12" zoom-max="13">
        <caption k="name" font-style="bold_italic" font-size="11" 
            priority="{$pr-poly-label-natural}" fill="#4040ff" stroke="#ffffff" stroke-width="2"/>
    </rule>
    <rule e="any" k="*" v="*" zoom-min="14" >
        <caption k="name" font-style="bold_italic" font-size="14" 
            priority="{$pr-poly-label-natural}" fill="#4040ff" stroke="#ffffff" stroke-width="3"/>
    </rule>            
</rule>


<rule e="way" k="landuse"
    v="forest|meadow|grass|orchard|vineyard|allotments|farmland|landfill|quarry|dog_park"
    zoom-min="15">
    <caption fill="#202020" font-family="serif" font-size="12" font-style="italic" k="name"
        priority="{$pr-poly-label-landuse}" stroke="#FFFFFF" stroke-width="0.1" />
</rule>

<rule e="way" k="natural" v="glacier" zoom-min="11">
    <caption k="name" font-style="italic" font-size="14" 
    priority="{$pr-poly-label-natural}" fill="#4040ff" stroke="#ffffff" stroke-width="2"/>
</rule>


<rule e="way" k="landuse"
    v="industrial|recreation_ground|military|garden|green|cemetery|graveyard"
    zoom-min="16">
    <caption fill="#202020" font-family="serif" font-size="14" font-style="italic" k="name"
        priority="{$pr-poly-label-landuse}" stroke="#FFFFFF" stroke-width="2.0" />
</rule>

<rule e="way" k="leisure"
    v="beach_resort|village_green|common|park|fitness_centre|sports_hall|sports_centre|water_park|stadium|swimming_facility"
    zoom-min="16">
    <caption fill="#202020" font-family="serif" font-size="14" font-style="italic" k="name"
        priority="{$pr-poly-label-landuse}" stroke="#FFFFFF" stroke-width="2.0" />
</rule>


<rule e="way" k="building" v="~" >
    <rule e="way" k="tourism" v="camp_site" closed="yes" zoom-min="16">
        <caption fill="#202020" font-family="serif" font-size="14" font-style="italic" k="name"
            priority="{$pr-poly-label-building}" stroke="#FFFFFF" stroke-width="2.0" />
    </rule>

    <rule e="way" k="amenity" v="school|childcare|hospital|clinic|prison" closed="yes" zoom-min="16">
    <caption fill="#202020" font-family="serif" font-size="12" font-style="italic" k="name"
        priority="{$pr-poly-label-building}" stroke="#FFFFFF" stroke-width="1.0" />
    </rule>

    <rule e="way" k="man_made" v="wastewater_plant" closed="yes" zoom-min="16">
    <caption fill="#202020" font-family="serif" font-size="12" font-style="italic" k="name"
        priority="{$pr-poly-label-building}" stroke="#FFFFFF" stroke-width="1.0" />
    </rule>

</rule>

</xsl:template>
</xsl:stylesheet>