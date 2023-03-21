<?xml-stylesheet type="text/xsl"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

<xsl:template name="poly-naming">

<rule e="way" k="natural"
    v="grassland|heath|marsh|wetland|scree|scrub|wood"
    zoom-min="15">
    <caption fill="#202020" font-family="serif" font-size="12" font-style="italic" k="name"
        priority="{$pr-poly-label-natural}" stroke="#FFFFFF" stroke-width="0.1" />
</rule>

<rule e="way" k="natural"  v="beach"  zoom-min="15">
    <caption fill="#202020" font-family="serif" font-size="11" font-style="italic" k="name"
        priority="{$pr-poly-label-natural}" stroke="#FFFFFF" stroke-width="0.1" />
</rule>


<rule e="way" k="natural" v="water" zoom-min="14">
    <caption k="name" font-style="italic" font-size="14" 
    priority="{$pr-poly-label-natural}" fill="#4040ff" stroke="#ffffff" stroke-width="3"/>
</rule>


<rule e="way" k="landuse"
    v="forest|meadow|grass|orchard|vineyard|allotments|farmland|landfill|quarry|dog_park"
    zoom-min="15">
    <caption fill="#202020" font-family="serif" font-size="12" font-style="italic" k="name"
        priority="-100" stroke="#FFFFFF" stroke-width="0.1" />
</rule>

<rule e="way" k="natural" v="glacier" zoom-min="14">
    <caption k="name" font-style="italic" font-size="14" 
    priority="{$pr-poly-label-natural}" fill="#4040ff" stroke="#ffffff" stroke-width="2"/>
</rule>


<rule e="way" k="landuse"
    v="industrial|recreation_ground|military|garden|green|cemetery|graveyard"
    zoom-min="16">
    <caption fill="#202020" font-family="serif" font-size="14" font-style="italic" k="name"
        priority="-100" stroke="#FFFFFF" stroke-width="2.0" />
</rule>

<rule e="way" k="leisure"
    v="beach_resort|village_green|common|park|stadium|sports_centre|swimming_pool"
    zoom-min="16">
    <caption fill="#202020" font-family="serif" font-size="14" font-style="italic" k="name"
        priority="-100" stroke="#FFFFFF" stroke-width="2.0" />
</rule>


<rule e="way" k="building" v="~" >
    <rule e="way" k="tourism" v="camp_site" closed="yes" zoom-min="16">
        <caption fill="#202020" font-family="serif" font-size="14" font-style="italic" k="name"
            priority="-100" stroke="#FFFFFF" stroke-width="2.0" />
    </rule>

    <rule e="way" k="amenity" v="school|childcare|hospital|clinic|prison" closed="yes" zoom-min="16">
    <caption fill="#202020" font-family="serif" font-size="12" font-style="italic" k="name"
        priority="-100" stroke="#FFFFFF" stroke-width="1.0" />
    </rule>

    <rule e="way" k="man_made" v="wastewater_plant" closed="yes" zoom-min="16">
    <caption fill="#202020" font-family="serif" font-size="12" font-style="italic" k="name"
        priority="-100" stroke="#FFFFFF" stroke-width="1.0" />
    </rule>

</rule>

</xsl:template>
</xsl:stylesheet>