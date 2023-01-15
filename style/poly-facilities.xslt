<?xml-stylesheet type="text/xsl"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

<xsl:template name="poly-facilities">

  <!-- DO 7-->
  <rule e="way" k="landuse" v="retail">
    <area fill="#F8E8E8" />
  </rule>
  <rule e="way" k="landuse" v="commercial">
    <area fill="#F8E8E8" />
  </rule>
  <rule e="way" k="landuse" v="industrial">
    <area fill="#D5D5D5" />
  </rule>
  <rule e="way" k="landuse" v="railway">
    <area fill="#c6b4b0" />
  </rule>

  <rule e="way" k="landuse" v="brownfield">
    <area fill="#c9b56a" />
  </rule>
  <rule e="way" k="landuse" v="construction" zoom-min="13">
    <area fill="#60FFCD85"/>
    <rule e="way" k="*" v="*" zoom-max="15">
      <area src="file:/patterns/construction.svg" symbol-height="12"/>
    </rule>
    <rule e="way" k="*" v="*" zoom-min="16">
      <area src="file:/patterns/construction.svg" symbol-height="24"/>
    </rule>
  </rule>
  <rule e="way" k="landuse" v="landfill">
    <area fill="#D3D39A"/>
    <rule e="way" k="*" v="*" zoom-max="15">
      <area src="file:/patterns/landfill.svg" symbol-height="32"/>
    </rule>
    <rule e="way" k="*" v="*" zoom-min="16">
      <area src="file:/patterns/landfill.svg" symbol-height="48"/>
    </rule>
  </rule>

  <rule e="way" k="leisure" v="village_green|common|park">
    <area fill="#CFFF9E" scale="none"/>
    <rule e="way" k="*" v="*" zoom-max="14">
      <area src="file:/patterns/park.svg" symbol-height="20"/>
    </rule>
    <rule e="way" k="*" v="*" zoom-min="15">
      <area src="file:/patterns/park.svg" symbol-height="30"/>
    </rule>
  </rule>

  <rule e="way" k="landuse" v="recreation_ground">
      <area fill="#CFFF9E" scale="none"/>
    <rule e="way" k="*" v="*" zoom-max="14">
      <area src="file:/patterns/park.svg" symbol-height="20"/>
    </rule>
    <rule e="way" k="*" v="*" zoom-min="15">
      <area src="file:/patterns/park.svg" symbol-height="30"/>
    </rule>
  </rule>

  <rule e="way" k="landuse" v="plant_nursery">
    <area fill="#AEDFA3" />
  </rule>

  <rule e="way" k="landuse" v="greenhouse_horticulture">
    <area fill="#ECF1B8" />
  </rule>

<rule e="way" k="building" v="~" >
  <rule e="way" k="power" v="plant">
    <rule e="way" k="plant:source" v="solar">
      <area fill="#42979B" />
    </rule>
  </rule>
  <rule e="way" k="power" v="generator">
    <rule e="way" k="generator:source" v="solar">
      <area fill="#42979B" />
    </rule>
  </rule>

  <rule e="way" k="man_made" v="wastewater_plant" closed="yes">
    <area fill="#D5D5D5" />
  </rule>

  <rule e="way" k="aeroway" v="airport|aerodrome|apron|helipad|terminal" closed="yes">
    <area fill="#F0E8E0" />
  </rule>

  <rule e="way" k="amenity" v="school|childcare" closed="yes">
    <area fill="#E0ECD3" />
  </rule>

  <rule e="way" k="amenity" v="hospital|clinic" closed="yes">
    <area fill="#F86C68" />
  </rule>

  <rule e="way" k="amenity" v="prison" closed="yes">
    <rule e="any" k="*" v="*" zoom-max="14">
      <area stroke="#E6E6E6" stroke-width="2" scale="none" src="file:/patterns/prison.svg" symbol-height="20"/>  
    </rule>
    <rule e="any" k="*" v="*" zoom-min="15">
      <area stroke="#E6E6E6" stroke-width="2" scale="none" src="file:/patterns/prison.svg" symbol-height="40"/>  
    </rule>
  </rule>
</rule>  


  <!-- DO 8-->
  <rule cat="military_area" e="way" k="landuse" v="military">
    <rule e="any" k="*" v="*" zoom-min="13" zoom-max="14">
      <area stroke="#F89696" stroke-width="2" scale="none" src="file:/patterns/military.svg" symbol-height="20"/>
    </rule>
    <rule e="any" k="*" v="*" zoom-min="15">
      <area stroke="#F89696" stroke-width="2" scale="none" src="file:/patterns/military.svg" symbol-height="40"/>
    </rule>
  </rule>

  <rule e="way" k="landuse" v="cemetery">
    <area fill="#B8E4A8" stroke="#C0C0C0" stroke-width="0.8" scale="none"/>
    <rule e="any" k="*" v="*" zoom-max="15">
      <rule e="any" k="religion" v="christian">
        <area src="file:/patterns/cemetery.svg" symbol-scaling="size" symbol-height="32" />
      </rule>
      <rule e="any" k="religion" v="jewish">
        <area src="file:/patterns/cemetery2.svg" symbol-scaling="size" symbol-height="32" />
      </rule>
      <rule e="any" k="religion" v="~">
        <area src="file:/patterns/cemetery.svg" symbol-scaling="size" symbol-height="32" />
      </rule>
    </rule>
    <rule e="any" k="*" v="*" zoom-min="16">
      <rule e="any" k="religion" v="christian">
        <area src="file:/patterns/cemetery.svg" symbol-scaling="size" symbol-height="64" />
      </rule>
      <rule e="any" k="religion" v="jewish">
        <area src="file:/patterns/cemetery2.svg" symbol-scaling="size" symbol-height="64" />
      </rule>
      <rule e="any" k="religion" v="~">
        <area src="file:/patterns/cemetery.svg" symbol-scaling="size" symbol-height="64" />
      </rule>
    </rule>
  </rule>

<rule e="way" k="leisure" v="beach_resort" closed="yes">
  <area fill="#7BFF8B" scale="none"/>
</rule>


  <rule e="way" k="leisure" v="playground" closed="yes">
    <area fill="#FDF0D5" />
  </rule>

<rule e="way" k="amenity" v="parking" zoom-min="15">
  <rule e="way" k="access" v="~|yes">
    <area fill="#FFCAD5" />

    <rule e="way" k="fee" v="yes" >
      <area src="file:/patterns/parking-fee.svg" symbol-scaling="size" symbol-height="18" symbol-width="20"/>
    </rule>
    <rule cat="default" e="way" k="fee" v="~|no" zoom-min="18">
      <symbol src="file:/poi/parking.svg" symbol-width="9" priority="-50"/>
    </rule>
    <rule cat="default" e="way" k="fee" v="yes" zoom-min="18">
      <symbol src="file:/poi/parking-fee.svg" symbol-width="9" priority="-50"/>
    </rule>

  </rule>
</rule>


<rule e="way" k="man_made" v="pier" closed="yes">
    <area fill="#BDCA6A" />
</rule>

<rule e="way" k="waterway" v="dock">
    <area fill="#b5d6f1"/>
</rule>
  

</xsl:template>
</xsl:stylesheet>