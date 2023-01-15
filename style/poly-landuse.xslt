<?xml-stylesheet type="text/xsl"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

<xsl:template name="poly-landuse">
  <!-- DO 3-->
  <rule e="way" k="landuse" v="field|farm|farmland">
    <area fill="#FFFFE6"/>
  </rule>

  <!-- DO 4-->
  <rule e="way" k="landuse" v="residential">
    <area fill="#FADEA5" stroke="#000000" stroke-width="0.2" scale="none" />   
  </rule>
  <rule e="way" k="landuse" v="garages">
    <area fill="#FADEA5" stroke="#000000" stroke-width="0.2" scale="none" />   
  </rule>
  <rule e="way" k="landuse" v="meadow">
    <area fill="#d8fca4" scale="none"/>
  </rule>
  <rule e="way" k="natural|landuse" v="forest|wood"  zoom-min="10">
    <area fill="#A1E976"/>
  </rule>
  <rule e="way" k="natural" v="grass|grassland">
    <area fill="#d8fca4" scale="none"/>
  </rule>

  <rule e="way" k="tourism" v="zoo" closed="yes">
    <area fill="#CFFF9E" scale="none"/>
    <rule e="way" k="*" v="*" zoom-max="14">
      <area src="file:/patterns/zoo.svg" symbol-height="20"/>
    </rule>
    <rule e="way" k="*" v="*" zoom-min="15">
      <area src="file:/patterns/zoo.svg" symbol-height="30"/>
    </rule>
  </rule>


  <!-- DO 5-->
  <rule e="way" k="natural" v="glacier">
    <area fill="#38FCF8" scale="none"/>
  </rule>

  <rule e="way" k="natural" v="sand">
    <area fill="#F8F898" scale="none"/>
  </rule>

  <rule e="way" k="natural" v="beach">
    <area fill="#F8F898" scale="none"/>
  </rule>

<rule e="way" k="landuse" v="allotments">
  <area fill="#80FFF8C5" />
</rule>

  <rule e="way" k="landuse" v="orchard">
    <area fill="#F8FCC8"/>
    <rule e="way" k="*" v="*" zoom-max="14">
      <area src="file:/patterns/orchard.svg" symbol-height="16"/>
    </rule>
    <rule e="way" k="*" v="*" zoom-min="15">
      <area src="file:/patterns/orchard.svg" symbol-height="24"/>
    </rule>
  </rule>
  <rule e="way" k="landuse" v="farmyard">
  <area fill="#D1DAB2"/>
</rule>

<rule e="way" k="landuse" v="vineyard">
  <area fill="#D8FCB0"/>
  <rule e="way" k="*" v="*" zoom-max="14">
    <area src="file:/patterns/vineyard.svg" symbol-height="20"/>
  </rule>
  <rule e="way" k="*" v="*" zoom-min="15">
    <area src="file:/patterns/vineyard.svg" symbol-height="30"/>
  </rule>
</rule>

  <rule cat="all" e="way" k="natural" v="scrub">
    <rule cat="all" e="way" k="*" v="*">
      <area fill="#D8FCB0" scale="none" />   
    </rule>
    <rule cat="topo_common" e="any" k="*" v="*">
      <rule e="way" k="*" v="*" zoom-max="14">
        <area src="file:/patterns/scrub.svg" symbol-height="28"/>
      </rule>
      <rule e="way" k="*" v="*" zoom-min="15">
        <area src="file:/patterns/scrub.svg" symbol-height="42"/>
      </rule>
    </rule>
  </rule>

  <rule cat="all" e="way" k="natural" v="heath">
    <rule cat="all" e="way" k="*" v="*">
      <area fill="#d8fca4" scale="none"/>
    </rule>
  </rule>

<rule cat="topo_common" e="way" k="natural" v="scree">
  <area fill="#E0E4E0" scale="none"/>
  <area src="file:/patterns/scree.svg" symbol-height="32"/>
</rule>


<rule cat="topo_common" e="way" k="man_made" v="clearcut" zoom-min="12">
  <rule cat="all" e="way" k="*" v="*">
    <area fill="#D8FCB0" scale="none"/>
  </rule>
  <rule e="way" k="*" v="*" zoom-max="14">
    <area src="file:/patterns/forest_cut.svg" symbol-scaling="size" symbol-height="32"/>
  </rule>
  <rule e="way" k="*" v="*" zoom-min="15">
    <area src="file:/patterns/forest_cut.svg" symbol-scaling="size" symbol-height="64"/>
  </rule>
</rule>

<rule cat="topo_common" e="way" k="natural" v="bare_rock">
  <area fill="#E0E4E0" scale="none"/>
  <rule e="way" k="*" v="*" zoom-max="15">
    <area src="file:/patterns/bare_rock.svg" symbol-height="18"/>
  </rule>
  <rule e="way" k="*" v="*" zoom-min="16">
    <area src="file:/patterns/bare_rock.svg" symbol-height="32"/>
  </rule>
</rule>
<rule e="way" k="landuse" v="quarry">
  <area fill="#E0E4E0"/>
  <rule e="way" k="*" v="*" zoom-max="15">
    <area src="file:/patterns/quarry.svg" symbol-height="32"/>
  </rule>
  <rule e="way" k="*" v="*" zoom-min="16">
    <area src="file:/patterns/quarry.svg" symbol-height="48"/>
  </rule>
</rule>

  <rule e="way" k="natural" v="mud">
    <area fill="#AEAE97" scale="none"/>
  </rule>



  
</xsl:template>
</xsl:stylesheet>