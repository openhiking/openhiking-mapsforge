<?xml-stylesheet type="text/xsl" href="OpenHiking.xslt"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<!-- 
# OpenHikingMap
#
# Copyright (c) 2022-2023 OpenHiking contributors
# SPDX-License-Identifier: GPL-3.0-only
-->

  <xsl:include href="stylemenu.xslt" />
  <xsl:include href="config.xslt" />
  <xsl:include href="config-priorities.xslt" />
  <xsl:include href="config-hiking.xslt" />
  <xsl:include href="config-lines.xslt" />

  <xsl:include href="poly-landuse.xslt" />
  <xsl:include href="poly-water.xslt" />
  <xsl:include href="poly-facilities.xslt" />
  <xsl:include href="poly-hazards.xslt" />  
  <xsl:include href="poly-highways.xslt" />  
  <xsl:include href="poly-sport.xslt" />
  <xsl:include href="poly-buildings.xslt" />
  <xsl:include href="poly-top.xslt" />
  <xsl:include href="poly-naming.xslt" />

  <xsl:include href="lines-highlights.xslt"/>

  <xsl:include href="lines-contours.xslt" /> 
  <xsl:include href="lines-admin.xslt" />  
  <xsl:include href="lines-waterways.xslt" />
  <xsl:include href="lines-natural.xslt" />
  <xsl:include href="lines-protected.xslt" />
  <xsl:include href="lines-other.xslt" />
  <xsl:include href="lines-bridges.xslt" />
  <xsl:include href="lines-tunnels.xslt" />
  <xsl:include href="lines-embankments.xslt" />
  <xsl:include href="lines-ski-downhill.xslt" />
  <xsl:include href="lines-sac-scale.xslt" />  
  <xsl:include href="lines-winter-hike.xslt" />
  <xsl:include href="lines-pilgrimage-trails.xslt" />
  <xsl:include href="lines-hiking-trails.xslt" />
  <xsl:include href="lines-ski-nordic.xslt" />
  <xsl:include href="lines-ski-tour.xslt" />  
  <xsl:include href="lines-highways.xslt" />
  <xsl:include href="lines-access-restrictions.xslt" />
  <xsl:include href="lines-obstacles.xslt" />
  <xsl:include href="lines-railways.xslt" />
  <xsl:include href="lines-barriers.xslt" />
  <xsl:include href="lines-aerialways.xslt" />
  <xsl:include href="lines-highways-labels.xslt" />
  
  
  <xsl:include href="points-hiking-symbols-common.xslt"/>
  <xsl:include href="points-hiking-symbols-hu.xslt"/>
  <xsl:include href="points-hiking-symbols-czsk.xslt"/>
  <xsl:include href="points-hiking-symbols-osmc.xslt"/>
  <xsl:include href="points-hiking-symbols-special.xslt"/>
  <xsl:include href="points-pilgrimage-symbols.xslt"/>  
  <xsl:include href="points-accomodation.xslt" /> 
  <xsl:include href="points-barriers.xslt" />  
  <xsl:include href="points-culture.xslt" />  
  <xsl:include href="points-editorial.xslt" />
  <xsl:include href="points-education.xslt" />  
  <xsl:include href="points-financial.xslt" />
  <xsl:include href="points-food.xslt" />
  <xsl:include href="points-healthcare.xslt" />
  <xsl:include href="points-historical.xslt" />
  <xsl:include href="points-hiking.xslt" />
  <xsl:include href="points-industrial.xslt" />
  <xsl:include href="points-leisure.xslt" />
  <xsl:include href="points-military.xslt" />
  <xsl:include href="points-obstacles.xslt" />
  <xsl:include href="points-places.xslt" />   
  <xsl:include href="points-public-services.xslt" /> 
  <xsl:include href="points-religion.xslt" />  
  <xsl:include href="points-shops.xslt" />
  <xsl:include href="points-natural.xslt" />
  <xsl:include href="points-transportation.xslt" />
  <xsl:include href="points-wilderness.xslt" />

  
<xsl:template match="/">

<rendertheme xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://mapsforge.org/renderTheme https://raw.githubusercontent.com/mapsforge/mapsforge/master/resources/renderTheme.xsd" version="5" map-background-outside="#EEEEEE" map-background="#FDFEEE">

  <xsl:call-template name="stylemenu"/>
  
  <xsl:call-template name="poly-landuse"/>
  
  <xsl:call-template name="poly-water"/>
  
  <xsl:call-template name="poly-facilities"/>
  <xsl:call-template name="poly-highways"/>
  <xsl:call-template name="poly-sport"/>
  <xsl:call-template name="poly-top"/>
  
  <xsl:call-template name="poly-buildings"/>  
  <xsl:call-template name="poly-hazards"/>  
  <xsl:call-template name="poly-naming"/>

  <xsl:call-template name="lines-contours"/>
  
  <xsl:call-template name="lines-waterways"/>  
  <xsl:call-template name="lines-natural"/> 
  <xsl:call-template name="lines-protected"/> 
  <xsl:call-template name="lines-ski-downhill"/>


  <xsl:call-template name="lines-bridges"/> 
  <xsl:call-template name="lines-tunnels"/>
  <xsl:call-template name="lines-embankments"/>
  <xsl:call-template name="lines-pilgrimage-trails" />
  <xsl:call-template name="lines-hiking-trails"/>   
  <xsl:call-template name="lines-ski-nordic"/>   
  <xsl:call-template name="lines-ski-tour"/>     
  <xsl:call-template name="lines-winter-hike"/>     
  <xsl:call-template name="lines-sac-scale"/>  
  <xsl:call-template name="lines-highways"/>
  <xsl:call-template name="lines-access-restrictions"/>
  <xsl:call-template name="lines-obstacles"/>
  <xsl:call-template name="lines-railways"/>
  <xsl:call-template name="lines-other"/> 
  <xsl:call-template name="lines-barriers"/>
  <xsl:call-template name="lines-aerialways"/>

  <xsl:call-template name="lines-admin"/>>
  <xsl:call-template name="lines-highways-labels"/>

  

  <xsl:call-template name="points-hiking-symbols-hu"/>  
  <xsl:call-template name="points-hiking-symbols-czsk"/>  
  <xsl:call-template name="points-hiking-symbols-osmc"/>  
  <xsl:call-template name="points-hiking-symbols-special"/>  
  <xsl:call-template name="points-pilgrimage-symbols"/>  
  <xsl:call-template name="points-accomodation"/>
  <xsl:call-template name="points-barriers"/>
  <xsl:call-template name="points-culture"/>
  <xsl:call-template name="points-editorial"/>  
  <xsl:call-template name="points-education"/>     
  <xsl:call-template name="points-financial"/>
  <xsl:call-template name="points-food"/>
  <xsl:call-template name="points-healthcare"/>
  <xsl:call-template name="points-hiking"/>
  <xsl:call-template name="points-historical"/>
  <xsl:call-template name="points-industrial"/>
  <xsl:call-template name="points-leisure"/>
  <xsl:call-template name="points-military"/>  
  <xsl:call-template name="points-places"/>  
  <xsl:call-template name="points-religion"/>
  <xsl:call-template name="points-shops"/>
  <xsl:call-template name="points-natural"/>
  <xsl:call-template name="points-public-services"/> 
  <xsl:call-template name="points-transportation"/>
  <xsl:call-template name="points-wilderness"/>  
    
</rendertheme>

</xsl:template>
</xsl:stylesheet>

