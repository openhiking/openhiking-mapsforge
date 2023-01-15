<?xml-stylesheet type="text/xsl"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

<xsl:template name="points-healthcare">
<rule  e="any" k="amenity" v="hospital|clinic" zoom-min="15">
        <symbol id="hospital" src="{$symbolPath}/hospital.svg" symbol-width="16" priority="{$pr-hospital}"/>
        <rule e="any" k="*" v="*" >
            <caption k="name" symbol-id="hospital" 
            font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2"  priority="{$pr-hospital}"/>
        </rule>       
</rule>

<rule  e="any" k="amenity" v="doctors" zoom-min="15">
        <symbol id="doctors" src="{$symbolPath}/doctors.svg" symbol-width="18" priority="{$pr-doctors}"/>
        <rule e="any" k="*" v="*" >
            <caption k="name" symbol-id="doctors" 
            font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2"  priority="{$pr-doctors}"/>
        </rule>       
</rule>

<rule  e="any" k="amenity" v="pharmacy" zoom-min="15">
        <symbol id="pharmacy" src="{$symbolPath}/pharmacy.svg" symbol-width="18" priority="{$pr-pharmacy}"/>
        <rule e="any" k="*" v="*" >
            <caption k="name" symbol-id="pharmacy" 
            font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2"  priority="{$pr-pharmacy}"/>
        </rule>       
</rule>


</xsl:template>
</xsl:stylesheet>