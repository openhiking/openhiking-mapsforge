<?xml-stylesheet type="text/xsl"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

<xsl:template name="lines-natural">

<rule e="way" k="natural" v="cliff" zoom-min="13">
  <line stroke="#000000" stroke-width="1" scale="none"/>
  <line stroke="#000000" dy="2" stroke-dasharray="1,6" stroke-width="4" stroke-linecap="butt"  scale="none"/>
  <rule e="way" k="*" v="*" zoom-min="16" zoom-max="17">
    <pathText k="name"  font-style="italic"  font-size="12" fill="#4c2600" stroke="#f0f0e8" dy="-0.9" repeat-gap="300" stroke-width="1" />
  </rule>
  <rule e="way" k="*" v="*" zoom-min="18">
    <pathText k="name"  font-style="italic" font-size="14" fill="#4c2600" stroke="#f0f0e8" dy="-0.9" repeat-gap="400" stroke-width="1.1" />
  </rule>  
</rule>

<rule e="way" k="natural" v="arete" zoom-min="13">
  <line stroke="#808080" stroke-width="1" scale="none"/>
  <line stroke="#808080" stroke-dasharray="1,9" stroke-width="5" stroke-linecap="butt"  scale="none"/>
  <rule e="way" k="*" v="*" zoom-min="16" zoom-max="17">
    <pathText k="name"  font-style="italic"  font-size="12" fill="#4c2600" stroke="#f0f0e8" dy="-1.4" repeat-gap="300" stroke-width="1" />
  </rule>
  <rule e="way" k="*" v="*" zoom-min="18">
    <pathText k="name"  font-style="italic" font-size="14" fill="#4c2600" stroke="#f0f0e8" dy="-1.4" repeat-gap="400" stroke-width="1.1" />
  </rule>  
</rule>


<rule  e="way" k="natural" v="valley" zoom-min="12"> 
  <rule e="way" k="*" v="*" zoom-min="12" zoom-max="12">
    <pathText k="name"  font-size="11" fill="#404040" stroke="#e6e6e6" repeat-gap="150" stroke-width="0.5" />
  </rule>
  <rule e="way" k="*" v="*" zoom-min="13" zoom-max="14">
    <pathText k="name"  font-size="13" fill="#404040" stroke="#e6e6e6" repeat-gap="200" stroke-width="0.8" />
  </rule>
  <rule e="way" k="*" v="*" zoom-min="15" zoom-max="16">
    <pathText k="name"  font-style="italic"  font-size="16" fill="#404040" stroke="#e6e6e6" repeat-gap="300" stroke-width="1" />
  </rule>
</rule>

<rule  e="way" k="natural" v="ridge|gorge" zoom-min="13"> 
  <rule e="way" k="*" v="*" zoom-min="12" zoom-max="13">
    <pathText k="name"  font-size="10" fill="#1f8500" stroke="#f0f0e8" repeat-gap="150" stroke-width="0.5" />
  </rule>
  <rule e="way" k="*" v="*" zoom-min="14" zoom-max="15">
    <pathText k="name"  font-size="14" fill="#1f8500" stroke="#f0f0e8" repeat-gap="200" stroke-width="0.8" />
  </rule>
  <rule e="way" k="*" v="*" zoom-min="16" zoom-max="17">
    <pathText k="name"  font-style="italic"  font-size="16" fill="#247000" stroke="#f0f0e8" repeat-gap="300" stroke-width="1" />
  </rule>
  <rule e="way" k="*" v="*" zoom-min="18">
    <pathText k="name"  font-style="italic" font-size="18" fill="#247000" stroke="#f0f0e8" repeat-gap="400" stroke-width="1.1" />
  </rule>
</rule>

</xsl:template>
</xsl:stylesheet>