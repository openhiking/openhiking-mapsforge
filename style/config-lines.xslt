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
<xsl:variable name="zm-residential">13</xsl:variable>
<xsl:variable name="zm-pedestrian">13</xsl:variable>
<xsl:variable name="zm-living">13</xsl:variable>
<xsl:variable name="zm-service">14</xsl:variable>
<xsl:variable name="zm-raceway">15</xsl:variable>
<xsl:variable name="zm-track-grade1">13</xsl:variable>
<xsl:variable name="zm-track">14</xsl:variable>
<xsl:variable name="zm-track2">17</xsl:variable>
<xsl:variable name="zm-cycleway">15</xsl:variable>
<xsl:variable name="zm-footway">15</xsl:variable>
<xsl:variable name="zm-bridleway">15</xsl:variable>
<xsl:variable name="zm-path">15</xsl:variable>
<xsl:variable name="zm-path2">17</xsl:variable>
<xsl:variable name="zm-steps">15</xsl:variable>
<xsl:variable name="zm-ferrata">15</xsl:variable>

<xsl:variable name="zm-ferry">12</xsl:variable>

<xsl:variable name="zm-deep">17</xsl:variable>
<xsl:variable name="zm-level2">17</xsl:variable>
<xsl:variable name="zm-level3">19</xsl:variable>


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
<xsl:variable name="lc-raceway">#838383</xsl:variable>
<xsl:variable name="lc-track">#7B3000</xsl:variable>
<xsl:variable name="lc-pedestrian">#626262</xsl:variable>
<xsl:variable name="lc-cycleway">#BB00B6</xsl:variable>
<xsl:variable name="lc-footway">#4B3D23</xsl:variable>
<xsl:variable name="lc-bridleway">#7B3000</xsl:variable>
<xsl:variable name="lc-path">#7B3000</xsl:variable>
<xsl:variable name="lc-steps">#BD3041</xsl:variable>
<xsl:variable name="lc-ferrata">#D90000</xsl:variable>

<xsl:variable name="lc-motorway-tunnel">#fd957c</xsl:variable>
<xsl:variable name="lc-motorway_link-tunnel">#fd957c</xsl:variable>
<xsl:variable name="lc-trunk-tunnel">#fd957c</xsl:variable>
<xsl:variable name="lc-trunk_link-tunnel">#fd957c</xsl:variable>
<xsl:variable name="lc-primary-tunnel">#fcb871ff</xsl:variable>
<xsl:variable name="lc-secondary-tunnel">#fef99e</xsl:variable>
<xsl:variable name="lc-tertiary-tunnel">#fef893</xsl:variable>
<xsl:variable name="lc-unclassified-tunnel">#FFFFFF</xsl:variable>
<xsl:variable name="lc-residential-tunnel">#FFFFFF</xsl:variable>
<xsl:variable name="lc-living-tunnel">#FFFFFF</xsl:variable>
<xsl:variable name="lc-service-tunnel">#FFFFFF</xsl:variable>
<xsl:variable name="lc-tunnel">#FFFFFF</xsl:variable>
<xsl:variable name="lc-embankment">#949494</xsl:variable>

<xsl:variable name="lc-restricted">#FF0000</xsl:variable>

<xsl:variable name="lw-motorway">2.2</xsl:variable>
<xsl:variable name="lw-motorway_link">1.6</xsl:variable>
<xsl:variable name="lw-trunk">2.2</xsl:variable>
<xsl:variable name="lw-trunk_link">1.6</xsl:variable>
<xsl:variable name="lw-primary">2.2</xsl:variable>
<xsl:variable name="lw-secondary">2.0</xsl:variable>
<xsl:variable name="lw-tertiary">1.8</xsl:variable>
<xsl:variable name="lw-residential">1.2</xsl:variable>
<xsl:variable name="lw-living_street">1.2</xsl:variable>
<xsl:variable name="lw-unclassified">1.0</xsl:variable>
<xsl:variable name="lw-service">0.8</xsl:variable>
<xsl:variable name="lw-raceway">0.6</xsl:variable>
<xsl:variable name="lw-track">0.4</xsl:variable>
<xsl:variable name="lw-track2">0.3</xsl:variable>
<xsl:variable name="lw-pedestrian">0.4</xsl:variable>
<xsl:variable name="lw-cycleway">0.4</xsl:variable>
<xsl:variable name="lw-footway">0.2</xsl:variable>
<xsl:variable name="lw-bridleway">0.4</xsl:variable>
<xsl:variable name="lw-path">0.4</xsl:variable>
<xsl:variable name="lw-path2">0.3</xsl:variable>
<xsl:variable name="lw-steps">0.6</xsl:variable>
<xsl:variable name="lw-tunnel">0.2</xsl:variable>
<xsl:variable name="lw-embankment">0.1</xsl:variable>
<xsl:variable name="lw-embankment2">1</xsl:variable>

<xsl:variable name="lw-ferry">0.5</xsl:variable>
<xsl:variable name="lw-rail">0.55</xsl:variable>
<xsl:variable name="lw-rail-narrow">0.45</xsl:variable>

<xsl:variable name="lw-trail-highlight-low">1.5</xsl:variable>
<xsl:variable name="lw-trail-highlight">0.6</xsl:variable>
<xsl:variable name="lw-trail-highlight-deep">0.5</xsl:variable>
<xsl:variable name="lw-trail-highlight-l2">0.5</xsl:variable>
<xsl:variable name="lw-trail-highlight-l3">0.3</xsl:variable>

<xsl:variable name="lw-restricted">1.5</xsl:variable>

<xsl:variable name="lw-protected-area">1.1</xsl:variable>
<xsl:variable name="lw-protected-area-l2">0.7</xsl:variable>
<xsl:variable name="lw-protected-area-l3">0.5</xsl:variable>

<xsl:variable name="da-tunnel">16,16</xsl:variable>
<xsl:variable name="da-embankment">0.1,2</xsl:variable>
<xsl:variable name="da-restricted">0.08,1.8</xsl:variable>

</xsl:stylesheet>