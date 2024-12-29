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


<!-- Priority 40 -->
<xsl:variable name="pr-tower-lookout">41</xsl:variable>
<xsl:variable name="pr-alpine-hut">40</xsl:variable>
<xsl:variable name="pr-castle">40</xsl:variable>
<xsl:variable name="pr-historic-ruins">40</xsl:variable>
<xsl:variable name="pr-city">40</xsl:variable>
<xsl:variable name="pr-town">40</xsl:variable>
<xsl:variable name="pr-mountain">40</xsl:variable>

<!-- Priority 30 -->
<xsl:variable name="pr-peak-named">30</xsl:variable>
<xsl:variable name="pr-cliff">30</xsl:variable>
<xsl:variable name="pr-cave">30</xsl:variable>
<xsl:variable name="pr-spring-drinking">30</xsl:variable>
<xsl:variable name="pr-waterfall">31</xsl:variable>
<xsl:variable name="pr-geyser">31</xsl:variable>

<xsl:variable name="pr-wilderness-hut">32</xsl:variable>
<xsl:variable name="pr-basic-hut">31</xsl:variable>
<xsl:variable name="pr-shelter">30</xsl:variable>
<xsl:variable name="pr-picnic-shelter">30</xsl:variable>

<xsl:variable name="pr-city-gate">30</xsl:variable>

<xsl:variable name="pr-viewpoint">30</xsl:variable>
<xsl:variable name="pr-museum">30</xsl:variable>
<xsl:variable name="pr-bus-station">30</xsl:variable>
<xsl:variable name="pr-train-station">30</xsl:variable>
<xsl:variable name="pr-ferry-terminal">30</xsl:variable>
<xsl:variable name="pr-airport">30</xsl:variable>

<xsl:variable name="pr-village">30</xsl:variable>
<xsl:variable name="pr-defensive-tower">30</xsl:variable>

<!-- Priority 20 -->
<xsl:variable name="pr-peak">20</xsl:variable>
<xsl:variable name="pr-rock">20</xsl:variable>
<xsl:variable name="pr-spring">20</xsl:variable>
<xsl:variable name="pr-saddle">20</xsl:variable>

<xsl:variable name="pr-checkpoint">20</xsl:variable>
<xsl:variable name="pr-mountain-rescue">20</xsl:variable>

<xsl:variable name="pr-church">20</xsl:variable>
<xsl:variable name="pr-minaret">20</xsl:variable>
<xsl:variable name="pr-stupa">20</xsl:variable>
<xsl:variable name="pr-monastery">20</xsl:variable>

<xsl:variable name="pr-botanical-garden">20</xsl:variable>
<xsl:variable name="pr-camp-site">20</xsl:variable>
<xsl:variable name="pr-zoo">20</xsl:variable>

<xsl:variable name="pr-helipad">20</xsl:variable>
<xsl:variable name="pr-bus-stop">20</xsl:variable>
<xsl:variable name="pr-historic-mine">20</xsl:variable>
<xsl:variable name="pr-windmill">20</xsl:variable>
<xsl:variable name="pr-watermill">20</xsl:variable>

<xsl:variable name="pr-suburb">20</xsl:variable>
<xsl:variable name="pr-hamlet">20</xsl:variable>
<xsl:variable name="pr-island">20</xsl:variable>
<xsl:variable name="pr-locality">20</xsl:variable>
<xsl:variable name="pr-lighthouse">20</xsl:variable>
<xsl:variable name="pr-radar">20</xsl:variable>
<xsl:variable name="pr-observatory">20</xsl:variable>

<xsl:variable name="pr-sac-scale">20</xsl:variable>
<xsl:variable name="pr-fixme">20</xsl:variable>

<xsl:variable name="pr-beach">20</xsl:variable>
<xsl:variable name="pr-beach-resort">20</xsl:variable>

<!-- Priority 10 -->
<xsl:variable name="pr-picnic">10</xsl:variable>
<xsl:variable name="pr-watering-place">10</xsl:variable>

<xsl:variable name="pr-sinkhole">10</xsl:variable>
<xsl:variable name="pr-ford">10</xsl:variable>
<xsl:variable name="pr-adit">10</xsl:variable>
<xsl:variable name="pr-mineshaft">10</xsl:variable>

<xsl:variable name="pr-ruins">10</xsl:variable>
<xsl:variable name="pr-bell-tower">10</xsl:variable>
<xsl:variable name="pr-clock-tower">10</xsl:variable>
<xsl:variable name="pr-cross">10</xsl:variable>
<xsl:variable name="pr-archeological">10</xsl:variable>
<xsl:variable name="pr-hillfort">10</xsl:variable>

<xsl:variable name="pr-doctors">10</xsl:variable>
<xsl:variable name="pr-fuel">10</xsl:variable>

<xsl:variable name="pr-spa">10</xsl:variable>
<xsl:variable name="pr-fitness-station">10</xsl:variable>
<xsl:variable name="pr-horse-riding">10</xsl:variable>
<xsl:variable name="pr-attraction">10</xsl:variable>

<xsl:variable name="pr-supermarket">10</xsl:variable>
<xsl:variable name="pr-shopping-center">10</xsl:variable>
<xsl:variable name="pr-convenience">10</xsl:variable>
<xsl:variable name="pr-bakery">10</xsl:variable>
<xsl:variable name="pr-pub">10</xsl:variable>
<xsl:variable name="pr-winery">10</xsl:variable>
<xsl:variable name="pr-ice-cream">10</xsl:variable>
<xsl:variable name="pr-restaurant">10</xsl:variable>
<xsl:variable name="pr-fast-food">10</xsl:variable>
<xsl:variable name="pr-cafe">10</xsl:variable>
<xsl:variable name="pr-confectionery">10</xsl:variable>

<xsl:variable name="pr-hostel">10</xsl:variable>
<xsl:variable name="pr-hotel">10</xsl:variable>
<xsl:variable name="pr-chalet">10</xsl:variable>

<xsl:variable name="pr-drinking-water">10</xsl:variable>
<xsl:variable name="pr-toll-booth">10</xsl:variable>

<xsl:variable name="pr-factory">10</xsl:variable>
<xsl:variable name="pr-power-plant">10</xsl:variable>

<xsl:variable name="pr-university">10</xsl:variable>
<xsl:variable name="pr-border-control">10</xsl:variable>

<!-- Priority 0 -->

<xsl:variable name="pr-gate">0</xsl:variable>
<xsl:variable name="pr-lift-gate">0</xsl:variable>
<xsl:variable name="pr-toilets">0</xsl:variable>
<xsl:variable name="pr-hospital">0</xsl:variable>
<xsl:variable name="pr-bank">0</xsl:variable>

<xsl:variable name="pr-mast">0</xsl:variable>
<xsl:variable name="pr-theatre">0</xsl:variable>
<xsl:variable name="pr-school">0</xsl:variable>

<xsl:variable name="pr-memorial">0</xsl:variable>
<xsl:variable name="pr-tower-observation">0</xsl:variable>
<xsl:variable name="pr-graveyard">0</xsl:variable>
<xsl:variable name="pr-post-office">0</xsl:variable>
<xsl:variable name="pr-pharmacy">0</xsl:variable>
<xsl:variable name="pr-gallery">0</xsl:variable>
<xsl:variable name="pr-recycling">0</xsl:variable>
<xsl:variable name="pr-tickets">0</xsl:variable>
<xsl:variable name="pr-bunker">0</xsl:variable>
<xsl:variable name="pr-obstacle">0</xsl:variable>
<xsl:variable name="pr-water-tower">0</xsl:variable>
<xsl:variable name="pr-water-works">0</xsl:variable>
<xsl:variable name="pr-police">0</xsl:variable>
<xsl:variable name="pr-fire-station">0</xsl:variable>
<xsl:variable name="pr-ambulance-station">0</xsl:variable>
<xsl:variable name="pr-tumulus">0</xsl:variable>
<xsl:variable name="pr-shop">0</xsl:variable>
<xsl:variable name="pr-greengrocer">0</xsl:variable>
<xsl:variable name="pr-marketplace">0</xsl:variable>
<xsl:variable name="pr-community-centre">0</xsl:variable>
<xsl:variable name="pr-library">0</xsl:variable>
<xsl:variable name="pr-cinema">0</xsl:variable>
<xsl:variable name="pr-obelisk">0</xsl:variable>
<xsl:variable name="pr-fountain">0</xsl:variable>
<xsl:variable name="pr-dentist">0</xsl:variable>
<xsl:variable name="pr-swimming-pool">0</xsl:variable>
<xsl:variable name="pr-courthouse">0</xsl:variable>
<xsl:variable name="pr-playground">0</xsl:variable>
<xsl:variable name="pr-soccer">0</xsl:variable>
<xsl:variable name="pr-tennis">0</xsl:variable>
<xsl:variable name="pr-sport">0</xsl:variable>

<xsl:variable name="pr-wind-turbine">0</xsl:variable>
<xsl:variable name="pr-cooling-tower">0</xsl:variable>

<xsl:variable name="pr-label-natural">0</xsl:variable>
<xsl:variable name="pr-label-cave">0</xsl:variable>
<xsl:variable name="pr-label-spring">0</xsl:variable>
<xsl:variable name="pr-label-peak">0</xsl:variable>
<xsl:variable name="pr-label-public-transport">0</xsl:variable>
<xsl:variable name="pr-label-historical">0</xsl:variable>
<xsl:variable name="pr-label-culture">-5</xsl:variable>
<xsl:variable name="pr-label-education">10</xsl:variable>
<xsl:variable name="pr-label-financial">0</xsl:variable>
<xsl:variable name="pr-label-healthcare">0</xsl:variable>
<xsl:variable name="pr-label-leisure">0</xsl:variable>
<xsl:variable name="pr-label-military">0</xsl:variable>
<xsl:variable name="pr-label-religion">0</xsl:variable>
<xsl:variable name="pr-label-wilderness">0</xsl:variable>


<xsl:variable name="pr-ele-peak">-5</xsl:variable>

<!-- Priority -10 -->
<xsl:variable name="pr-chimney">-10</xsl:variable>
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


<xsl:variable name="pr-label-industrial">-10</xsl:variable>
<xsl:variable name="pr-label-food">-10</xsl:variable>
<xsl:variable name="pr-label-shop">-10</xsl:variable>
<xsl:variable name="pr-label-transportation">-10</xsl:variable>

<!-- Priority -20 -->
<xsl:variable name="pr-hiking-symbols">-20</xsl:variable>
<xsl:variable name="pr-hiking-symbols-minor">-21</xsl:variable>
<xsl:variable name="pr-drift">-20</xsl:variable>
<xsl:variable name="pr-oneway">-20</xsl:variable>
<xsl:variable name="pr-cycleway">-20</xsl:variable>

<xsl:variable name="pr-poly-label-natural">-20</xsl:variable>
<xsl:variable name="pr-poly-label-landuse">-20</xsl:variable>

<xsl:variable name="pr-label-contour-ele">-21</xsl:variable>
<xsl:variable name="pr-poly-label-building">-50</xsl:variable>


</xsl:stylesheet>