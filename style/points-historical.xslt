<?xml-stylesheet type="text/xsl"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<!-- 
# OpenHikingMap
#
# Point rendering: Historical
#
# Copyright (c) 2022-2023 OpenHiking contributors
# SPDX-License-Identifier: GPL-3.0-only
-->
<xsl:template name="points-historical">

<rule  e="any" k="ruins" v="~" >
  <rule  e="any" k="historic" v="castle|fort" >
      <rule  e="any" k="castle_type" v="palace" zoom-min="14">
        <symbol id="castle" src="{$symbolPath}/palace.svg" symbol-width="26" priority="{$pr-castle}"/>      
      </rule>
      <rule  e="any" k="castle_type" v="stately|manor" zoom-min="15">
        <symbol id="castle" src="{$symbolPath}/manor.svg" symbol-width="26" priority="{$pr-castle}"/>            
      </rule>
      <rule  e="any" k="castle_type" v="~" zoom-min="14">
        <symbol id="castle" src="{$symbolPath}/castle.svg" symbol-width="28" priority="{$pr-castle}"/>      
      </rule>
      <rule e="node" k="*" v="*" zoom-min="15">
        <caption k="name" symbol-id="castle" 
        font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2" priority="{$pr-castle}"/>
      </rule>      
  </rule>    
  <rule  e="any" k="historic" v="manor" zoom-min="15">    
    <symbol id="manor" src="{$symbolPath}/manor.svg" symbol-width="26" priority="{$pr-castle}"/>            
    <rule e="node" k="*" v="*" zoom-min="15">
      <caption k="name" symbol-id="manor" 
      font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2" priority="{$pr-castle}"/>
    </rule>      
  </rule>
</rule> 

<rule  e="any" k="ruins" v="yes" >
  <rule  e="any" k="historic" v="castle|fort|manor" zoom-min="14">
    <symbol id="castle" src="{$symbolPath}/ruins_castle.svg" symbol-width="28" priority="{$pr-historic-ruins}"/>
    <rule e="node" k="*" v="*" zoom-min="15">
        <caption k="name" symbol-id="castle" 
        font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2" priority="{$pr-historic-ruins}"/>
    </rule>        
  </rule>
</rule>
 

<rule  e="any" k="historic" v="ruins" >
  <rule  e="any" k="ruins" v="castle|fort|tower" zoom-min="14">
    <symbol id="ruins" src="{$symbolPath}/ruins_castle.svg" symbol-width="28" priority="{$pr-historic-ruins}"/>
  </rule>  
  <rule  e="any" k="ruins" v="chapel|church|monastery|temple" zoom-min="15">
    <symbol id="ruins" src="{$symbolPath}/ruins_church.svg" symbol-width="22"  priority="{$pr-historic-ruins}"/>  
  </rule>  
  <rule  e="any" k="ruins" v="~" zoom-min="15">
    <symbol id="ruins" src="{$symbolPath}/ruins.svg" symbol-width="20" priority="{$pr-ruins}"/>  
  </rule>  
  <rule e="node" k="*" v="*" zoom-min="15">
    <caption k="name" symbol-id="ruins" 
    font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2" priority="{$pr-ruins}"/>
  </rule>
</rule>

<rule  e="any" k="historic" v="archaeological_site" >
  <rule  e="any" k="archaeological_site" v="fortification" >
    <rule  e="any" k="fortification_type" v="hill_fort" zoom-min="14">
      <symbol id="archeological" src="{$symbolPath}/hillfort.svg" symbol-width="22" priority="{$pr-hillfort}"/>      
    </rule>
    <rule  e="any" k="fortification_type" v="~" zoom-min="14">
      <symbol id="archeological" src="{$symbolPath}/archeological.svg" symbol-width="18" priority="{$pr-archeological}"/>                
    </rule>
  </rule>
  <rule  e="any" k="archaeological_site" v="tumulus" zoom-min="15">
    <symbol id="archeological" src="{$symbolPath}/tumulus.svg" symbol-width="22" priority="{$pr-tumulus}"/>  
  </rule>
  <rule  e="any" k="archaeological_site" v="~" >
    <rule  e="any" k="site_type" v="fortification" >
      <rule  e="any" k="fortification_type" v="hill_fort" zoom-min="14">
        <symbol id="archeological" src="{$symbolPath}/hillfort.svg" symbol-width="22" priority="{$pr-hillfort}"/>      
      </rule>
      <rule  e="any" k="fortification_type" v="~" zoom-min="14">
        <symbol id="archeological" src="{$symbolPath}/archeological.svg" symbol-width="18" priority="{$pr-archeological}"/>            
      </rule>
    </rule>
    <rule  e="any" k="site_type" v="tumulus" zoom-min="15">
      <symbol id="archeological" src="{$symbolPath}/tumulus.svg" symbol-width="22" priority="{$pr-tumulus}"/>    
    </rule>
    <rule  e="any" k="site_type" v="~" zoom-min="15">
      <symbol id="archeological" src="{$symbolPath}/archeological.svg" symbol-width="18" priority="{$pr-archeological}"/>    
    </rule>
  </rule>
  <rule e="node" k="*" v="*" zoom-min="16">
    <caption k="name" symbol-id="archeological" 
    font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2" priority="{$pr-archeological}"/>
  </rule>
</rule>


<rule  e="any" k="historic" v="tomb" >
  <rule  e="any" k="tomb" v="tumulus" zoom-min="15">
    <symbol id="tomb" src="{$symbolPath}/tumulus.svg" symbol-width="22" priority="{$pr-tumulus}"/>
  </rule>  
  <rule  e="any" k="tomb" v="~" zoom-min="15">
    <symbol id="tomb" src="{$symbolPath}/graveyard.svg" symbol-width="18" priority="{$pr-graveyard}"/>
  </rule>  
  <rule e="node" k="*" v="*" zoom-min="16">
    <caption k="name" symbol-id="tomb" 
    font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2" priority="{$pr-graveyard}"/>
  </rule>
</rule>

<rule  e="any" k="man_made" v="mineshaft|adit" zoom-min="15">
    <rule  e="any" k="abandoned" v="yes" >
            <symbol id="historic_mine" src="{$symbolPath}/historic_mine.svg" symbol-width="18" priority="{$pr-historic-mine}"/>
            <rule e="any" k="*" v="*" >
                <caption k="name" symbol-id="historic_mine" 
                font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2"  priority="{$pr-historic-mine}"/>
            </rule>                    
    </rule>           
</rule>           

<rule  e="any" k="historic" v="adit|mine" zoom-min="15">
        <symbol id="historic_mine" src="{$symbolPath}/historic_mine.svg" symbol-width="18" priority="{$pr-historic-mine}"/>
        <rule e="any" k="*" v="*" >
            <caption k="name" symbol-id="historic_mine" 
            font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2"  priority="{$pr-historic-mine}"/>
        </rule>       
</rule>



<rule  e="any" k="historic" v="memorial|monument" zoom-min="16">
  <rule  e="any" k="memorial" v="plaque" >
    <symbol id="memorial" src="{$symbolPath}/plaque.svg" symbol-width="18" priority="{$pr-memorial}"/>
  </rule>
  <rule  e="any" k="memorial" v="~" >
    <symbol id="memorial" src="{$symbolPath}/memorial.svg" symbol-width="18" priority="{$pr-memorial}"/>
  </rule>
  <rule e="node" k="*" v="*" zoom-min="16">
    <caption k="name" symbol-id="memorial" 
    font-style="bold" font-size="10" fill="#666666" stroke="#ffffff" stroke-width="2" priority="{$pr-memorial}"/>
  </rule>
</rule>




</xsl:template>
</xsl:stylesheet>