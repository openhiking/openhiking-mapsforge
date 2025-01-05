<?xml-stylesheet type="text/xsl"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<!-- 
# OpenHikingMap
#
# Line configuration
#
# Copyright (c) 2022-2023 OpenHiking contributors
# SPDX-License-Identifier: GPL-3.0-only
-->

<xsl:variable name="zm-motorway">8</xsl:variable>
<xsl:variable name="zm-motorway_link">12</xsl:variable>
<xsl:variable name="zm-trunk">8</xsl:variable>
<xsl:variable name="zm-trunk_link">12</xsl:variable>
<xsl:variable name="zm-primary">8</xsl:variable>
<xsl:variable name="zm-secondary">9</xsl:variable>
<xsl:variable name="zm-tertiary">10</xsl:variable>
<xsl:variable name="zm-unclassified">11</xsl:variable>
<xsl:variable name="zm-residential">11</xsl:variable>
<xsl:variable name="zm-pedestrian">13</xsl:variable>
<xsl:variable name="zm-living">12</xsl:variable>
<xsl:variable name="zm-service">13</xsl:variable>
<xsl:variable name="zm-raceway">14</xsl:variable>
<xsl:variable name="zm-macadam">11</xsl:variable>
<xsl:variable name="zm-track">13</xsl:variable>
<xsl:variable name="zm-track2">16</xsl:variable>
<xsl:variable name="zm-cycleway">13</xsl:variable>
<xsl:variable name="zm-footway">14</xsl:variable>
<xsl:variable name="zm-bridleway">14</xsl:variable>
<xsl:variable name="zm-path">13</xsl:variable>
<xsl:variable name="zm-path2">16</xsl:variable>
<xsl:variable name="zm-steps">15</xsl:variable>
<xsl:variable name="zm-ferrata">15</xsl:variable>

<xsl:variable name="zm-ferry">12</xsl:variable>

<!-- 
<xsl:variable name="zm-level2">15</xsl:variable>
<xsl:variable name="zm-level3">17</xsl:variable>
<xsl:variable name="zm-level4">19</xsl:variable>

<xsl:variable name="lw-trail-highlight-low">2.6</xsl:variable>
<xsl:variable name="lw-trail-highlight">1.2</xsl:variable>
<xsl:variable name="lw-trail-highlight-deep">0.5</xsl:variable>
<xsl:variable name="lw-trail-highlight-l2">0.9</xsl:variable>
<xsl:variable name="lw-trail-highlight-l3">0.6</xsl:variable>
<xsl:variable name="lw-trail-highlight-l4">0.4</xsl:variable>
-->

<xsl:variable name="zm-level2">14</xsl:variable>
<xsl:variable name="zm-level3">16</xsl:variable>
<xsl:variable name="zm-level4">18</xsl:variable>

<xsl:variable name="lw-trail-highlight-low">2.6</xsl:variable>
<xsl:variable name="lw-trail-highlight">1.2</xsl:variable>
<xsl:variable name="lw-trail-highlight-deep">0.5</xsl:variable>
<xsl:variable name="lw-trail-highlight-l2">0.9</xsl:variable>
<xsl:variable name="lw-trail-highlight-l3">0.6</xsl:variable>
<xsl:variable name="lw-trail-highlight-l4">0.35</xsl:variable>


<xsl:variable name="lw-motorway">2.8</xsl:variable>
<xsl:variable name="lw-motorway_link">1.6</xsl:variable>
<xsl:variable name="lw-trunk">2.8</xsl:variable>
<xsl:variable name="lw-trunk_link">1.6</xsl:variable>
<xsl:variable name="lw-primary">3.0</xsl:variable>
<xsl:variable name="lw-secondary">2.8</xsl:variable>
<xsl:variable name="lw-tertiary">2.5</xsl:variable>
<xsl:variable name="lw-residential">2.0</xsl:variable>
<xsl:variable name="lw-residential2">1.8</xsl:variable>
<xsl:variable name="lw-living_street">1.3</xsl:variable>
<xsl:variable name="lw-unclassified">2.5</xsl:variable>
<xsl:variable name="lw-unclassified2">1.8</xsl:variable>
<xsl:variable name="lw-service">2.2</xsl:variable>
<xsl:variable name="lw-service2">1.2</xsl:variable>
<xsl:variable name="lw-cycleway">1.2</xsl:variable>
<xsl:variable name="lw-raceway">0.6</xsl:variable>
<xsl:variable name="lw-macadam">2.5</xsl:variable>
<xsl:variable name="lw-macadam2">1.5</xsl:variable>
<xsl:variable name="lw-track">0.65</xsl:variable>
<xsl:variable name="lw-track2">0.5</xsl:variable>
<xsl:variable name="lw-track3">0.3</xsl:variable>
<xsl:variable name="lw-pedestrian">0.4</xsl:variable>
<xsl:variable name="lw-footway">0.2</xsl:variable>
<xsl:variable name="lw-bridleway">0.4</xsl:variable>
<xsl:variable name="lw-path">0.65</xsl:variable>
<xsl:variable name="lw-path2">0.5</xsl:variable>
<xsl:variable name="lw-path3">0.3</xsl:variable>
<xsl:variable name="lw-path4">0.25</xsl:variable>
<xsl:variable name="lw-steps">0.6</xsl:variable>
<xsl:variable name="lw-ferrata">0.8</xsl:variable>


<xsl:variable name="lw-tunnel">0.2</xsl:variable>
<xsl:variable name="lw-embankment">0.1</xsl:variable>
<xsl:variable name="lw-embankment2">1</xsl:variable>

<xsl:variable name="lw-ferry">0.5</xsl:variable>
<xsl:variable name="lw-pier">0.5</xsl:variable>
<xsl:variable name="lw-rail">0.8</xsl:variable>
<xsl:variable name="lw-rail-narrow">0.45</xsl:variable>

<xsl:variable name="lw-restricted">1.5</xsl:variable>

<xsl:variable name="lw-national-park">2.2</xsl:variable>
<xsl:variable name="lw-national-park-l2">1.9</xsl:variable>
<xsl:variable name="lw-national-park-l3">1.5</xsl:variable>
<xsl:variable name="lw-national-park-l4">0.5</xsl:variable>

<xsl:variable name="lw-protected-area">2.4</xsl:variable>
<xsl:variable name="lw-protected-area-l2">1.8</xsl:variable>
<xsl:variable name="lw-protected-area-l3">0.7</xsl:variable>
<xsl:variable name="lw-protected-area-l4">0.5</xsl:variable>

<xsl:variable name="lw-protected-strictly-2">1.5</xsl:variable>
<xsl:variable name="lw-protected-strictly-3">0.9</xsl:variable>
<xsl:variable name="lw-protected-strictly-4">0.4</xsl:variable>


<xsl:variable name="bc-motorway">#808080</xsl:variable>
<xsl:variable name="bc-motorway_link">#808080</xsl:variable>
<xsl:variable name="bc-trunk">#808080</xsl:variable>
<xsl:variable name="bc-trunk_link">#808080</xsl:variable>
<xsl:variable name="bc-primary">#808080</xsl:variable>
<xsl:variable name="bc-secondary">#808080</xsl:variable>
<xsl:variable name="bc-tertiary">#808080</xsl:variable>
<xsl:variable name="bc-unclassified">#383040</xsl:variable>
<xsl:variable name="bc-residential">#383040</xsl:variable>
<xsl:variable name="bc-living">#383040</xsl:variable>
<xsl:variable name="bc-service">#383040</xsl:variable>
<xsl:variable name="bc-cycleway">#7373ff</xsl:variable>
<xsl:variable name="bc-macadam">#383040</xsl:variable>
<xsl:variable name="bc-tunnel">#383040</xsl:variable>


<xsl:variable name="lc-motorway">#FC7352</xsl:variable>
<xsl:variable name="lc-motorway_link">#FEF458</xsl:variable>
<xsl:variable name="lc-trunk">#FC7352</xsl:variable>
<xsl:variable name="lc-trunk_link">#FEF458</xsl:variable>
<xsl:variable name="lc-primary">#FB9C39</xsl:variable>
<xsl:variable name="lc-secondary">#FEF458</xsl:variable>
<xsl:variable name="lc-tertiary">#FEF458</xsl:variable>
<xsl:variable name="lc-unclassified">#FFFFFF</xsl:variable>
<xsl:variable name="lc-residential">#FFFFFF</xsl:variable>
<xsl:variable name="lc-living">#FFFFFF</xsl:variable>
<xsl:variable name="lc-service">#FFFFFF</xsl:variable>
<xsl:variable name="lc-cycleway">#FFFFFF</xsl:variable>
<xsl:variable name="lc-raceway">#838383</xsl:variable>
<xsl:variable name="lc-macadam">#FFFFFF</xsl:variable>
<xsl:variable name="lc-track">#7B3000</xsl:variable>
<xsl:variable name="lc-pedestrian">#626262</xsl:variable>
<xsl:variable name="lc-footway">#4B3D23</xsl:variable>
<xsl:variable name="lc-bridleway">#7B3000</xsl:variable>
<xsl:variable name="lc-path">#7B3000</xsl:variable>
<xsl:variable name="lc-mountain-path">#7B3000</xsl:variable>
<xsl:variable name="lc-alpine-path">#000000</xsl:variable>
<xsl:variable name="lc-steps">#BD3041</xsl:variable>
<xsl:variable name="lc-ferrata">#D90000</xsl:variable>

<xsl:variable name="lc-motorway-tunnel">#fd957c</xsl:variable>
<xsl:variable name="lc-motorway_link-tunnel">#fd957c</xsl:variable>
<xsl:variable name="lc-trunk-tunnel">#fd957c</xsl:variable>
<xsl:variable name="lc-trunk_link-tunnel">#fd957c</xsl:variable>
<xsl:variable name="lc-primary-tunnel">#fcb871</xsl:variable>
<xsl:variable name="lc-secondary-tunnel">#fef99e</xsl:variable>
<xsl:variable name="lc-tertiary-tunnel">#fef893</xsl:variable>
<xsl:variable name="lc-unclassified-tunnel">#FFFFFF</xsl:variable>
<xsl:variable name="lc-residential-tunnel">#FFFFFF</xsl:variable>
<xsl:variable name="lc-living-tunnel">#FFFFFF</xsl:variable>
<xsl:variable name="lc-service-tunnel">#FFFFFF</xsl:variable>
<xsl:variable name="lc-tunnel">#FFFFFF</xsl:variable>
<xsl:variable name="lc-embankment">#949494</xsl:variable>

<xsl:variable name="lc-restricted">#FF0000</xsl:variable>

<xsl:variable name="lc-protected">#588d42</xsl:variable>
<xsl:variable name="lc-protected-strictly">#FF956A</xsl:variable>

<xsl:variable name="da-tunnel">16,16</xsl:variable>
<xsl:variable name="da-embankment">0.1,2</xsl:variable>
<xsl:variable name="da-restricted">0.08,1.8</xsl:variable>

</xsl:stylesheet>