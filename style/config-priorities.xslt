<?xml-stylesheet type="text/xsl"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

<!-- 
# OpenHikingMap
#
# Label and icon rendering priorities
#
# Copyright (c) 2022-2023 OpenHiking contributors
# SPDX-License-Identifier: GPL-3.0-only
-->


<!-- Priority 30 -->
<xsl:variable name="pr-tower-lookout">31</xsl:variable>
<xsl:variable name="pr-alpine-hut">30</xsl:variable>
<xsl:variable name="pr-wilderness-hut">30</xsl:variable>
<xsl:variable name="pr-castle">30</xsl:variable>
<xsl:variable name="pr-historic-ruins">30</xsl:variable>
<xsl:variable name="pr-city">30</xsl:variable>
<xsl:variable name="pr-town">30</xsl:variable>

<!-- Priority 20 -->
<xsl:variable name="pr-peak-named">20</xsl:variable>
<xsl:variable name="pr-cliff">20</xsl:variable>
<xsl:variable name="pr-cave">20</xsl:variable>
<xsl:variable name="pr-spring-drinking">20</xsl:variable>
<xsl:variable name="pr-waterfall">20</xsl:variable>
<xsl:variable name="pr-basic-hut">20</xsl:variable>
<xsl:variable name="pr-shelter">20</xsl:variable>
<xsl:variable name="pr-viewpoint">20</xsl:variable>
<xsl:variable name="pr-bus-station">20</xsl:variable>
<xsl:variable name="pr-village">20</xsl:variable>

<xsl:variable name="pr-church">20</xsl:variable>
<xsl:variable name="pr-stupa">20</xsl:variable>

<!-- Priority 10 -->
<xsl:variable name="pr-peak">10</xsl:variable>
<xsl:variable name="pr-rock">10</xsl:variable>
<xsl:variable name="pr-spring">10</xsl:variable>
<xsl:variable name="pr-saddle">10</xsl:variable>

<xsl:variable name="pr-checkpoint">10</xsl:variable>
<xsl:variable name="pr-picnic">10</xsl:variable>
<xsl:variable name="pr-picnic-shelter">11</xsl:variable>

<xsl:variable name="pr-hostel">10</xsl:variable>
<xsl:variable name="pr-hotel">10</xsl:variable>
<xsl:variable name="pr-camp-site">10</xsl:variable>
<xsl:variable name="pr-chalet">10</xsl:variable>

<xsl:variable name="pr-playground">10</xsl:variable>
<xsl:variable name="pr-pub">10</xsl:variable>
<xsl:variable name="pr-zoo">10</xsl:variable>
<xsl:variable name="pr-train-station">10</xsl:variable>
<xsl:variable name="pr-bus-stop">10</xsl:variable>

<xsl:variable name="pr-ruins">10</xsl:variable>
<xsl:variable name="pr-bell-tower">10</xsl:variable>
<xsl:variable name="pr-windmill">10</xsl:variable>
<xsl:variable name="pr-museum">10</xsl:variable>

<xsl:variable name="pr-suburb">10</xsl:variable>
<xsl:variable name="pr-hamlet">10</xsl:variable>
<xsl:variable name="pr-island">10</xsl:variable>
<xsl:variable name="pr-locality">10</xsl:variable>


<!-- Priority 0 -->

<xsl:variable name="pr-sinkhole">0</xsl:variable>

<xsl:variable name="pr-gate">0</xsl:variable>
<xsl:variable name="pr-lift-gate">0</xsl:variable>
<xsl:variable name="pr-toilets">0</xsl:variable>
<xsl:variable name="pr-hospital">0</xsl:variable>
<xsl:variable name="pr-bank">0</xsl:variable>
<xsl:variable name="pr-adit">0</xsl:variable>
<xsl:variable name="pr-mineshaft">0</xsl:variable>
<xsl:variable name="pr-historic-mine">0</xsl:variable>
<xsl:variable name="pr-mast">0</xsl:variable>
<xsl:variable name="pr-bakery">0</xsl:variable>
<xsl:variable name="pr-supermarket">0</xsl:variable>
<xsl:variable name="pr-shopping-center">0</xsl:variable>
<xsl:variable name="pr-archeological">0</xsl:variable>
<xsl:variable name="pr-theatre">0</xsl:variable>
<xsl:variable name="pr-cross">0</xsl:variable>
<xsl:variable name="pr-memorial">0</xsl:variable>
<xsl:variable name="pr-tower-observation">0</xsl:variable>
<xsl:variable name="pr-graveyard">0</xsl:variable>
<xsl:variable name="pr-post-office">0</xsl:variable>
<xsl:variable name="pr-doctors">0</xsl:variable>
<xsl:variable name="pr-pharmacy">0</xsl:variable>
<xsl:variable name="pr-gallery">0</xsl:variable>
<xsl:variable name="pr-fuel">0</xsl:variable>
<xsl:variable name="pr-spa">0</xsl:variable>
<xsl:variable name="pr-recycling">0</xsl:variable>
<xsl:variable name="pr-tickets">0</xsl:variable>
<xsl:variable name="pr-attraction">0</xsl:variable>
<xsl:variable name="pr-convenience">0</xsl:variable>
<xsl:variable name="pr-ice-cream">0</xsl:variable>
<xsl:variable name="pr-bunker">0</xsl:variable>
<xsl:variable name="pr-factory">0</xsl:variable>
<xsl:variable name="pr-obstacle">0</xsl:variable>
<xsl:variable name="pr-water-tower">0</xsl:variable>
<xsl:variable name="pr-restaurant">0</xsl:variable>
<xsl:variable name="pr-fast-food">0</xsl:variable>
<xsl:variable name="pr-cafe">0</xsl:variable>
<xsl:variable name="pr-confectionery">0</xsl:variable>
<xsl:variable name="pr-police">0</xsl:variable>
<xsl:variable name="pr-ford">0</xsl:variable>
<xsl:variable name="pr-tumulus">0</xsl:variable>
<xsl:variable name="pr-hillfort">0</xsl:variable>
<xsl:variable name="pr-shop">0</xsl:variable>
<xsl:variable name="pr-marketplace">0</xsl:variable>
<xsl:variable name="pr-library">0</xsl:variable>
<xsl:variable name="pr-obelisk">0</xsl:variable>
<xsl:variable name="pr-drinking-water">0</xsl:variable>
<xsl:variable name="pr-winery">0</xsl:variable>
<xsl:variable name="pr-dentist">0</xsl:variable>
<xsl:variable name="pr-swimming-pool">0</xsl:variable>
<xsl:variable name="pr-courthouse">0</xsl:variable>

<xsl:variable name="pr-label-natural">0</xsl:variable>
<xsl:variable name="pr-label-spring">0</xsl:variable>
<xsl:variable name="pr-label-peak">0</xsl:variable>
<xsl:variable name="pr-label-public-transport">0</xsl:variable>



<!-- Priority -10 -->
<xsl:variable name="pr-hunting-stand">-10</xsl:variable>
<xsl:variable name="pr-game-feeding">-10</xsl:variable>
<xsl:variable name="pr-stile">-10</xsl:variable>
<xsl:variable name="pr-guidepost">-10</xsl:variable>
<xsl:variable name="pr-board">-10</xsl:variable>
<xsl:variable name="pr-parking">-10</xsl:variable>
<xsl:variable name="pr-tree">-12</xsl:variable>
<xsl:variable name="pr-wayside-cross">-10</xsl:variable>
<xsl:variable name="pr-bench">-10</xsl:variable>
<xsl:variable name="pr-firepit">-10</xsl:variable>
<xsl:variable name="pr-crossing">-10</xsl:variable>
<xsl:variable name="pr-water-well">-10</xsl:variable>
<xsl:variable name="pr-waterway-name">-10</xsl:variable>
<xsl:variable name="pr-restricted">-10</xsl:variable>

<xsl:variable name="pr-label-accomodation">-10</xsl:variable>
<xsl:variable name="pr-label-amenities">-10</xsl:variable>
<xsl:variable name="pr-label-culture">-10</xsl:variable>
<xsl:variable name="pr-label-financial">-10</xsl:variable>
<xsl:variable name="pr-label-healthcare">-10</xsl:variable>
<xsl:variable name="pr-label-historical">-10</xsl:variable>
<xsl:variable name="pr-label-industrial">-10</xsl:variable>
<xsl:variable name="pr-label-food">-10</xsl:variable>
<xsl:variable name="pr-label-leisure">-10</xsl:variable>
<xsl:variable name="pr-label-military">-10</xsl:variable>
<xsl:variable name="pr-label-religion">-10</xsl:variable>
<xsl:variable name="pr-label-shop">-10</xsl:variable>
<xsl:variable name="pr-label-transportation">-10</xsl:variable>
<xsl:variable name="pr-label-wilderness">-10</xsl:variable>



<!-- Priority -20 -->
<xsl:variable name="pr-hiking-symbols">-20</xsl:variable>
<xsl:variable name="pr-hiking-symbols-minor">-21</xsl:variable>
<xsl:variable name="pr-drift">-20</xsl:variable>
</xsl:stylesheet>