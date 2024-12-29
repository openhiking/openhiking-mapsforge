<?xml-stylesheet type="text/xsl"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<!-- 
# OpenHikingMap
#
# Point rendering: Historical
#
# Copyright (c) 2022-2024 OpenHiking contributors
# SPDX-License-Identifier: GPL-3.0-only
-->
<xsl:template name="points-historical">

<!-- Orux bug: historic=ruins matching to historic=castle too-->
<rule  e="any" k="historic" v="castle|fort" >
  <rule  e="any" k="ruins" v="~" zoom-min="14">
      <rule  e="any" k="castle_type" v="palace" >
        <rule  e="any" k="*" v="*" zoom-min="14" zoom-max="15">   
          <symbol id="castle" src="{$historicIconPath}/palace.svg" symbol-width="24" priority="{$pr-castle}"/>           
        </rule>
        <rule  e="any" k="*" v="*" zoom-min="16" >        
          <symbol id="castle" src="{$historicIconPath}/palace.svg" symbol-width="30" priority="{$pr-castle}"/>                   
        </rule>
      </rule>
      <rule  e="any" k="castle_type" v="~" zoom-min="14">
        <rule  e="any" k="*" v="*" zoom-min="14" zoom-max="15">   
          <symbol id="castle" src="{$historicIconPath}/castle.svg" symbol-width="28" priority="{$pr-castle}"/>           
        </rule>
        <rule  e="any" k="*" v="*" zoom-min="16" >        
          <symbol id="castle" src="{$historicIconPath}/castle.svg" symbol-width="30" priority="{$pr-castle}"/>                   
        </rule>
      </rule>
      <rule e="any" k="*" v="*" zoom-min="16">
        <caption k="name" symbol-id="castle" 
        font-style="bold" font-size="12" fill="#666666" stroke="#ffffff" stroke-width="2" priority="{$pr-label-historical}"/>
      </rule>      
  </rule>   
</rule>   


<rule  e="any" k="historic" v="manor" >  
  <rule  e="any" k="*" v="*" zoom-min="15" zoom-max="16">   
    <symbol id="manor" src="{$historicIconPath}/manor.svg" symbol-width="30" priority="{$pr-castle}"/>           
  </rule>
  <rule  e="any" k="*" v="*" zoom-min="17" >        
    <symbol id="manor" src="{$historicIconPath}/manor.svg" symbol-width="34" priority="{$pr-castle}"/>                   
  </rule>
  <rule e="any" k="*" v="*" zoom-min="16">
    <caption k="name" symbol-id="manor" 
    font-style="bold" font-size="12" fill="#666666" stroke="#ffffff" stroke-width="2" priority="{$pr-label-historical}"/>
  </rule>      
</rule>


<rule  e="any" k="historic" v="city_gate" >  
  <rule  e="any" k="*" v="*" zoom-min="15" zoom-max="16">   
    <symbol id="city_gate" src="{$historicIconPath}/city_gate.svg" symbol-width="20" priority="{$pr-city-gate}"/>           
  </rule>
  <rule  e="any" k="*" v="*" zoom-min="17" >        
    <symbol id="city_gate" src="{$historicIconPath}/city_gate.svg" symbol-width="23" priority="{$pr-city-gate}"/>                   
  </rule>
  <rule e="any" k="*" v="*" zoom-min="16">
    <caption k="name" symbol-id="city_gate" 
    font-style="bold" font-size="12" fill="#666666" stroke="#ffffff" stroke-width="2" priority="{$pr-label-historical}"/>
  </rule>      
</rule>

<rule  e="any" k="tower:type" v="clock" zoom-min="15" >  
  <rule  e="any" k="*" v="*" zoom-max="16">   
    <symbol id="clock_tower" src="{$historicIconPath}/clock_tower.svg" symbol-width="20" priority="{$pr-clock-tower}"/>           
  </rule>
  <rule  e="any" k="*" v="*" zoom-min="17" >        
    <symbol id="clock_tower" src="{$historicIconPath}/clock_tower.svg" symbol-width="23" priority="{$pr-clock-tower}"/>                   
  </rule>
  <rule e="any" k="*" v="*" zoom-min="16">
    <caption k="name" symbol-id="clock_tower" 
    font-style="bold" font-size="12" fill="#666666" stroke="#ffffff" stroke-width="2" priority="{$pr-label-historical}"/>
  </rule>      
</rule>

<rule  e="any" k="tower:type" v="defensive" zoom-min="15" >  
  <rule  e="any" k="*" v="*" zoom-max="16">   
    <symbol id="defensive_tower" src="{$historicIconPath}/defensive_tower.svg" symbol-width="18" priority="{$pr-defensive-tower}"/>           
  </rule>
  <rule  e="any" k="*" v="*" zoom-min="17" >        
    <symbol id="defensive_tower" src="{$historicIconPath}/defensive_tower.svg" symbol-width="22" priority="{$pr-defensive-tower}"/>                   
  </rule>
  <rule e="any" k="*" v="*" zoom-min="16">
    <caption k="name" symbol-id="defensive_tower" 
    font-style="bold" font-size="12" fill="#666666" stroke="#ffffff" stroke-width="2" priority="{$pr-label-historical}"/>
  </rule>      
</rule>


<rule  e="any" k="historic" v="ruins" >
  <rule  e="any" k="ruins" v="palace|manor" zoom-min="14">
    <rule  e="any" k="*" v="*"  zoom-max="16">   
      <symbol id="ruins" src="{$historicIconPath}/ruins_manor.svg" symbol-width="30" priority="{$pr-historic-ruins}"/>
    </rule>
    <rule  e="any" k="*" v="*" zoom-min="17" >        
      <symbol id="ruins" src="{$historicIconPath}/ruins_manor.svg" symbol-width="34" priority="{$pr-historic-ruins}"/>
    </rule>
    <rule e="any" k="*" v="*" zoom-min="15">
      <caption k="name" symbol-id="ruins" 
      font-style="bold" font-size="12" fill="#666666" stroke="#ffffff" stroke-width="2" priority="{$pr-label-historical}"/>
    </rule>
  </rule>  
  <rule  e="any" k="ruins" v="castle|fort|tower" zoom-min="14">
    <rule  e="any" k="*" v="*"  zoom-max="16">   
      <symbol id="ruins" src="{$historicIconPath}/ruins_castle.svg" symbol-width="28" priority="{$pr-historic-ruins}"/>
    </rule>
    <rule  e="any" k="*" v="*" zoom-min="17" >        
      <symbol id="ruins" src="{$historicIconPath}/ruins_castle.svg" symbol-width="34" priority="{$pr-historic-ruins}"/>
    </rule>
    <rule e="any" k="*" v="*" zoom-min="15">
      <caption k="name" symbol-id="ruins" 
      font-style="bold" font-size="12" fill="#666666" stroke="#ffffff" stroke-width="2" priority="{$pr-label-historical}"/>
    </rule>
  </rule>  
  <rule  e="any" k="ruins" v="chapel|church|monastery|temple" zoom-min="14">
    <rule  e="any" k="*" v="*"  zoom-max="15">   
      <symbol id="ruins" src="{$historicIconPath}/ruins_church.svg" symbol-width="22"  priority="{$pr-historic-ruins}"/>  
    </rule>
   <rule  e="any" k="*" v="*"  zoom-min="16">   
      <symbol id="ruins" src="{$historicIconPath}/ruins_church.svg" symbol-width="28"  priority="{$pr-historic-ruins}"/>  
    </rule> 
    <rule e="any" k="*" v="*" zoom-min="15">
      <caption k="name" symbol-id="ruins" 
      font-style="bold" font-size="11" fill="#666666" stroke="#ffffff" stroke-width="2" priority="{$pr-label-historical}"/>
    </rule>
  </rule>  
  <rule  e="any" k="ruins" v="~" zoom-min="15">
    <rule  e="any" k="*" v="*"  zoom-max="16">   
      <symbol id="ruins" src="{$historicIconPath}/ruins.svg" symbol-width="18" priority="{$pr-ruins}"/>  
    </rule>
    <rule  e="any" k="*" v="*" zoom-min="17" >        
      <symbol id="ruins" src="{$historicIconPath}/ruins.svg" symbol-width="20" priority="{$pr-ruins}"/>  
    </rule>
    <rule e="any" k="*" v="*" zoom-min="16">
      <caption k="name" symbol-id="ruins" 
      font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2" priority="{$pr-label-historical}"/>
    </rule>
  </rule>  
</rule>


<rule  e="any" k="historic" v="archaeological_site" >
  <rule  e="any" k="archaeological_site" v="fortification" >
    <rule  e="any" k="fortification_type" v="hill_fort" zoom-min="14">
      <symbol id="archeological" src="{$historicIconPath}/hillfort.svg" symbol-width="22" priority="{$pr-hillfort}"/>      
    </rule>
    <rule  e="any" k="fortification_type" v="~" zoom-min="14">
      <symbol id="archeological" src="{$historicIconPath}/archeological.svg" symbol-width="18" priority="{$pr-archeological}"/>                
    </rule>
  </rule>
  <rule  e="any" k="archaeological_site" v="tumulus" zoom-min="15">
    <symbol id="archeological" src="{$historicIconPath}/tumulus.svg" symbol-width="22" priority="{$pr-tumulus}"/>  
  </rule>
  <rule  e="any" k="archaeological_site" v="~" zoom-min="15">
    <symbol id="archeological" src="{$historicIconPath}/archeological.svg" symbol-width="18" priority="{$pr-archeological}"/>    
  </rule>
  <rule e="any" k="*" v="*" zoom-min="16">
    <caption k="name" symbol-id="archeological" 
    font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2" priority="{$pr-label-historical}"/>
  </rule>
</rule>


<rule  e="any" k="historic" v="tomb"  zoom-min="16">
  <symbol id="tomb" src="{$historicIconPath}/graveyard.svg" symbol-width="18" priority="{$pr-graveyard}"/>
  <rule e="any" k="*" v="*" zoom-min="16">
    <caption k="name" symbol-id="tomb" 
    font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2" priority="{$pr-label-historical}"/>
  </rule>
</rule>

<rule  e="any" k="historic" v="adit|mine" zoom-min="14">
  <rule e="any" k="*" v="*" zoom-max="15">
    <symbol id="historic_mine" src="{$historicIconPath}/mine.svg" symbol-width="16" priority="{$pr-historic-mine}"/>
  </rule>
   <rule e="any" k="*" v="*" zoom-min="16">
    <symbol id="historic_mine" src="{$historicIconPath}/mine.svg" symbol-width="20" priority="{$pr-historic-mine}"/>
  </rule>
  <rule e="any" k="*" v="*" zoom-min="16">
      <caption k="name" symbol-id="historic_mine" 
      font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2"  priority="{$pr-label-historical}"/>
  </rule>       
</rule>


<rule  e="any" k="historic" v="quarry" zoom-min="14">
  <rule e="any" k="*" v="*" zoom-max="15">
    <symbol id="historic_quarry" src="{$historicIconPath}/quarry.svg" symbol-width="14" priority="{$pr-historic-mine}"/>
  </rule>
  <rule e="any" k="*" v="*" zoom-min="16">
    <symbol id="historic_quarry" src="{$historicIconPath}/quarry.svg" symbol-width="16" priority="{$pr-historic-mine}"/>
  </rule>
  <rule e="any" k="*" v="*" zoom-min="16">
      <caption k="name" symbol-id="historic_quarry" 
      font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2"  priority="{$pr-label-historical}"/>
  </rule>       
</rule>


<rule  e="any" k="man_made" v="windmill" zoom-min="15">
  <rule  e="any" k="*" v="*" zoom-max="16">
    <symbol id="windmill" src="{$historicIconPath}/windmill.svg" symbol-width="20" priority="{$pr-windmill}"/>
  </rule>
  <rule  e="any" k="*" v="*" zoom-min="17"> 
    <symbol id="windmill" src="{$historicIconPath}/windmill.svg" symbol-width="22" priority="{$pr-windmill}"/>  
  </rule>     
  <rule e="any" k="*" v="*" zoom-min="16">
      <caption k="name" symbol-id="windmill" 
      font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2"  priority="{$pr-label-historical}"/>
  </rule>       
</rule>

<rule  e="any" k="man_made" v="watermill" zoom-min="15">
  <rule  e="any" k="*" v="*" zoom-max="16">
    <symbol id="watermill" src="{$historicIconPath}/watermill.svg" symbol-width="22" priority="{$pr-watermill}"/>
  </rule>
  <rule  e="any" k="*" v="*" zoom-min="17"> 
    <symbol id="watermill" src="{$historicIconPath}/watermill.svg" symbol-width="24" priority="{$pr-watermill}"/>  
  </rule>     
  <rule e="any" k="*" v="*" zoom-min="16">
      <caption k="name" symbol-id="watermill" 
      font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2"  priority="{$pr-label-historical}"/>
  </rule>       
</rule>


<rule  e="any" k="historic" v="memorial|monument" zoom-min="16">
  <rule  e="any" k="memorial" v="plaque" >
    <symbol id="memorial" src="{$historicIconPath}/plaque.svg" symbol-width="16" priority="{$pr-memorial}"/>
  </rule>
  <rule  e="any" k="memorial" v="~" >
    <symbol id="memorial" src="{$historicIconPath}/memorial.svg" symbol-width="14" priority="{$pr-memorial}"/>
  </rule>
  <rule e="any" k="*" v="*" zoom-min="16">
    <caption k="name" symbol-id="memorial" 
    font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2" priority="{$pr-label-historical}"/>
  </rule>
</rule>


<rule  e="any" k="man_made" v="water_well" zoom-min="16">
  <rule  e="any" k="pump" v="~" >
    <symbol id="water_well" src="{$historicIconPath}/water_well.svg" symbol-width="18" priority="{$pr-label-historical}"/>
  </rule>
</rule>

<rule  e="any" k="man_made" v="crane_well" zoom-min="16">
  <rule  e="any" k="*" v="*" zoom-max="17">
    <symbol id="crane_well" src="{$historicIconPath}/crane_well.svg" symbol-width="26" priority="{$pr-label-historical}"/>
  </rule>
  <rule  e="any" k="*" v="*" zoom-min="18"> 
    <symbol id="crane_well" src="{$historicIconPath}/crane_well.svg" symbol-width="28" priority="{$pr-label-historical}"/>
  </rule>     
</rule>




</xsl:template>
</xsl:stylesheet>