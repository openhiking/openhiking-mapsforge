<?xml-stylesheet type="text/xsl"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

<xsl:template name="lines-barriers">
<rule e="way" k="barrier" v="*" zoom-min="15">
	<rule cat="fences" e="way" k="barrier" v="fence" zoom-min="15">
		<line stroke="#FF0000" stroke-width="0.2" stroke-dasharray="2,2" stroke-linecap="butt" />
	</rule>
	<rule e="way" k="barrier" v="city_wall" zoom-min="14">
		<line stroke="#949494" stroke-width="0.3" stroke-linecap="square" />
		<line stroke="#949494" dy="0.3" stroke-width="0.5" stroke-dasharray="3,6" stroke-linecap="butt" />
	</rule>
	<rule e="way" k="barrier" v="wall" zoom-min="14">
	    <rule e="way" k="wall" v="castle_wall" >    
		    <line stroke="#949494" stroke-width="0.3" stroke-linecap="square" />
		    <line stroke="#949494" dy="0.3" stroke-width="0.5" stroke-dasharray="3,6" stroke-linecap="butt" />
        </rule>            
	</rule>

</rule>

</xsl:template>
</xsl:stylesheet>