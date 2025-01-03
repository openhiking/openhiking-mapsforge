<?xml-stylesheet type="text/xsl"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<!-- 
# OpenHikingMap
#
# Trail highlights
#
# Copyright (c) 2022-2023 OpenHiking contributors
# SPDX-License-Identifier: GPL-3.0-only
-->
<xsl:template name="trail-highlight-rules1">
<xsl:param name="color" />
		<line stroke="{$color}" dy="{$lw-track}" stroke-width="{$lw-trail-highlight}" stroke-linecap="butt" />
		<line stroke="{$color}" dy="-{$lw-track}" stroke-width="{$lw-trail-highlight}" stroke-linecap="butt" />
</xsl:template>


<xsl:template name="trail-highlight-rules-unpaved">
<xsl:param name="color" />
	<rule e="way" k="highway" v="path|bridleway">
		<rule e="way" k="*" v="*" zoom-max="{$zm-path - 1}">		
			<line stroke="{$color}" stroke-width="{$lw-trail-highlight-low}" stroke-linecap="butt" />
		</rule>
		<rule e="way" k="*" v="*" zoom-min="{$zm-path}" zoom-max="{$zm-level2 - 1}">		
			<line stroke="{$color}" dy="{($lw-path + $lw-trail-highlight) div 2}" stroke-width="{$lw-trail-highlight}" stroke-linecap="butt" />
			<line stroke="{$color}" dy="-{($lw-path + $lw-trail-highlight) div 2}" stroke-width="{$lw-trail-highlight}" stroke-linecap="butt" />
		</rule>
		<rule e="way" k="*" v="*" zoom-min="{$zm-level2}" zoom-max="{$zm-level3 - 1}" >		
			<line stroke="{$color}" dy="{($lw-path2 + $lw-trail-highlight-l2) div 2}" stroke-width="{$lw-trail-highlight-l2}" stroke-linecap="butt" />
			<line stroke="{$color}" dy="-{($lw-path2 + $lw-trail-highlight-l2) div 2}" stroke-width="{$lw-trail-highlight-l2}" stroke-linecap="butt" />
		</rule>
		<rule e="way" k="*" v="*" zoom-min="{$zm-level3}" zoom-max="{$zm-level4 - 1}" >		
			<line stroke="{$color}" dy="{($lw-path3 + $lw-trail-highlight-l3) div 2}" stroke-width="{$lw-trail-highlight-l3}" stroke-linecap="butt" />
			<line stroke="{$color}" dy="-{($lw-path3 + $lw-trail-highlight-l3) div 2}" stroke-width="{$lw-trail-highlight-l3}" stroke-linecap="butt" />
		</rule>
		<rule e="way" k="*" v="*" zoom-min="{$zm-level4}">		
			<line stroke="{$color}" dy="{($lw-path4 + $lw-trail-highlight-l4) div 2}" stroke-width="{$lw-trail-highlight-l4}" stroke-linecap="butt" />
			<line stroke="{$color}" dy="-{($lw-path4 + $lw-trail-highlight-l4) div 2}" stroke-width="{$lw-trail-highlight-l4}" stroke-linecap="butt" />
		</rule>		
	</rule>
	
	<rule e="way" k="highway" v="footway">
		<rule e="way" k="*" v="*" zoom-max="{$zm-footway - 1}">		
			<line stroke="{$color}" stroke-width="{$lw-trail-highlight-low}" stroke-linecap="butt" />
		</rule>
		<rule e="way" k="*" v="*" zoom-min="{$zm-footway}" zoom-max="{$zm-level2 - 1}">		
			<line stroke="{$color}" dy="{($lw-footway + $lw-trail-highlight) div 2}" stroke-width="{$lw-trail-highlight}" stroke-linecap="butt" />
			<line stroke="{$color}" dy="-{($lw-footway + $lw-trail-highlight) div 2}" stroke-width="{$lw-trail-highlight}" stroke-linecap="butt" />
		</rule>
		<rule e="way" k="*" v="*" zoom-min="{$zm-level2}" zoom-max="{$zm-level3 - 1}" >		
			<line stroke="{$color}" dy="{($lw-footway + $lw-trail-highlight-l2) div 2}" stroke-width="{$lw-trail-highlight-l2}" stroke-linecap="butt" />
			<line stroke="{$color}" dy="-{($lw-footway + $lw-trail-highlight-l2) div 2}" stroke-width="{$lw-trail-highlight-l2}" stroke-linecap="butt" />
		</rule>		
		<rule e="way" k="*" v="*" zoom-min="{$zm-level3}" zoom-max="{$zm-level4 - 1}" >		
			<line stroke="{$color}" dy="{($lw-footway + $lw-trail-highlight-l3) div 2}" stroke-width="{$lw-trail-highlight-l3}" stroke-linecap="butt" />
			<line stroke="{$color}" dy="-{($lw-footway + $lw-trail-highlight-l3) div 2}" stroke-width="{$lw-trail-highlight-l3}" stroke-linecap="butt" />
		</rule>
		<rule e="way" k="*" v="*" zoom-min="{$zm-level4 }">		
			<line stroke="{$color}" dy="{($lw-footway + $lw-trail-highlight-l4) div 2}" stroke-width="{$lw-trail-highlight-l4}" stroke-linecap="butt" />
			<line stroke="{$color}" dy="-{($lw-footway + $lw-trail-highlight-l4) div 2}" stroke-width="{$lw-trail-highlight-l4}" stroke-linecap="butt" />
		</rule>
	</rule>
	<rule e="way" k="highway" v="via_ferrata">
		<rule e="way" k="*" v="*" zoom-max="{$zm-ferrata - 1}">		
			<line stroke="{$color}" stroke-width="{$lw-trail-highlight-low}" stroke-linecap="butt" />
		</rule>
		<rule e="way" k="*" v="*" zoom-min="{$zm-ferrata}" zoom-max="{$zm-level3 - 1}">		
			<line stroke="{$color}" dy="{($lw-ferrata + $lw-trail-highlight) div 2}" stroke-width="{$lw-trail-highlight}" stroke-linecap="butt" />
			<line stroke="{$color}" dy="-{($lw-ferrata + $lw-trail-highlight) div 2}" stroke-width="{$lw-trail-highlight}" stroke-linecap="butt" />
		</rule>
		<rule e="way" k="*" v="*" zoom-min="{$zm-level3}" zoom-max="{$zm-level4 - 1}" >		
			<line stroke="{$color}" dy="{($lw-ferrata + $lw-trail-highlight-l3) div 2}" stroke-width="{$lw-trail-highlight-l3}" stroke-linecap="butt" />
			<line stroke="{$color}" dy="-{($lw-ferrata + $lw-trail-highlight-l3) div 2}" stroke-width="{$lw-trail-highlight-l3}" stroke-linecap="butt" />
		</rule>
		<rule e="way" k="*" v="*" zoom-min="{$zm-level4 }">		
			<line stroke="{$color}" dy="{($lw-ferrata + $lw-trail-highlight-l4) div 2}" stroke-width="{$lw-trail-highlight-l4}" stroke-linecap="butt" />
			<line stroke="{$color}" dy="-{($lw-ferrata + $lw-trail-highlight-l4) div 2}" stroke-width="{$lw-trail-highlight-l4}" stroke-linecap="butt" />
		</rule>
	</rule>
	<rule e="way" k="highway" v="steps">
		<rule e="way" k="*" v="*" zoom-max="{$zm-steps - 1}">		
			<line stroke="{$color}" stroke-width="{$lw-trail-highlight-low}" stroke-linecap="butt" />
		</rule>
		<rule e="way" k="*" v="*" zoom-min="{$zm-steps}" zoom-max="{$zm-level3 - 1}">		
			<line stroke="{$color}" dy="{($lw-steps + $lw-trail-highlight) div 2}" stroke-width="{$lw-trail-highlight}" stroke-linecap="butt" />
			<line stroke="{$color}" dy="-{($lw-steps + $lw-trail-highlight) div 2}" stroke-width="{$lw-trail-highlight}" stroke-linecap="butt" />
		</rule>
		<!-- 
		<rule e="way" k="*" v="*" zoom-min="{$zm-level2}" zoom-max="{$zm-level3 - 1}">		
			<line stroke="{$color}" dy="{($lw-steps + $lw-trail-highlight-l2) div 2}" stroke-width="{$lw-trail-highlight-l2}" stroke-linecap="butt" />
			<line stroke="{$color}" dy="-{($lw-steps + $lw-trail-highlight-l2) div 2}" stroke-width="{$lw-trail-highlight-l2}" stroke-linecap="butt" />
		</rule>
		-->				
		<rule e="way" k="*" v="*" zoom-min="{$zm-level3}" zoom-max="{$zm-level4 - 1}">		
			<line stroke="{$color}" dy="{($lw-steps + $lw-trail-highlight-l3) div 2}" stroke-width="{$lw-trail-highlight-l3}" stroke-linecap="butt" />
			<line stroke="{$color}" dy="-{($lw-steps + $lw-trail-highlight-l3) div 2}" stroke-width="{$lw-trail-highlight-l3}" stroke-linecap="butt" />
		</rule>
		<rule e="way" k="*" v="*" zoom-min="{$zm-level4 }">		
			<line stroke="{$color}" dy="{($lw-steps + $lw-trail-highlight-l4) div 2}" stroke-width="{$lw-trail-highlight-l4}" stroke-linecap="butt" />
			<line stroke="{$color}" dy="-{($lw-steps + $lw-trail-highlight-l4) div 2}" stroke-width="{$lw-trail-highlight-l4}" stroke-linecap="butt" />
		</rule>
	</rule>
	<rule e="way" k="highway" v="track">
		<rule e="way" k="tracktype" v="grade1|grade2">
			<rule e="way" k="*" v="*" zoom-max="{$zm-macadam - 1}">		
				<line stroke="{$color}" stroke-width="{$lw-trail-highlight-low}" stroke-linecap="butt" />
			</rule>
			<rule e="way" k="*" v="*" zoom-min="{$zm-macadam}" zoom-max="{$zm-level2 - 1}">	
				<line stroke="{$color}" stroke-width="{$lw-macadam + $lw-trail-highlight + 0.3}" stroke-linecap="butt" />														
				<line stroke="{$lc-macadam}" stroke-width="{$lw-macadam}" stroke-linecap="butt" />
			</rule>
			<rule e="way" k="*" v="*" zoom-min="{$zm-level2}">	
				<line stroke="{$color}" stroke-width="{$lw-macadam2 + $lw-trail-highlight-l2 + 0.3}" stroke-linecap="butt" />														
				<line stroke="{$lc-macadam}" stroke-width="{$lw-macadam2}" stroke-linecap="butt" />
			</rule>			
		</rule>
		<rule e="way" k="tracktype" v="grade3|grade4|grade5|~">		
			<rule e="way" k="*" v="*" zoom-max="{$zm-track - 1}">		
				<line stroke="{$color}" stroke-width="{$lw-trail-highlight-low}" stroke-linecap="butt" />
			</rule>
			<rule e="way" k="*" v="*" zoom-min="{$zm-track}" zoom-max="{$zm-level2 - 1}">					
				<line stroke="{$color}" dy="{($lw-track + $lw-trail-highlight) div 2}" stroke-width="{$lw-trail-highlight}" stroke-linecap="butt" />
				<line stroke="{$color}" dy="-{($lw-track + $lw-trail-highlight) div 2}" stroke-width="{$lw-trail-highlight}" stroke-linecap="butt" />
			</rule>
			<rule e="way" k="*" v="*" zoom-min="{$zm-level2}" zoom-max="{$zm-level3 - 1}" >		
				<line stroke="{$color}" dy="{($lw-track2 + $lw-trail-highlight-l2) div 2}" stroke-width="{$lw-trail-highlight-l2}" stroke-linecap="butt" />
				<line stroke="{$color}" dy="-{($lw-track2 + $lw-trail-highlight-l2) div 2}" stroke-width="{$lw-trail-highlight-l2}" stroke-linecap="butt" />
			</rule>				
			<rule e="way" k="*" v="*" zoom-min="{$zm-level3}" zoom-max="{$zm-level4 - 1}" >		
				<line stroke="{$color}" dy="{($lw-track3 + $lw-trail-highlight-deep) div 2}" stroke-width="{$lw-trail-highlight-deep}" stroke-linecap="butt" />
				<line stroke="{$color}" dy="-{($lw-track3 + $lw-trail-highlight-deep) div 2}" stroke-width="{$lw-trail-highlight-deep}" stroke-linecap="butt" />
			</rule>
			<rule e="way" k="*" v="*" zoom-min="{$zm-level4 }">		
				<line stroke="{$color}" dy="{($lw-track3 + $lw-trail-highlight-l4) div 2}" stroke-width="{$lw-trail-highlight-l4}" stroke-linecap="butt" />
				<line stroke="{$color}" dy="-{($lw-track3 + $lw-trail-highlight-l4) div 2}" stroke-width="{$lw-trail-highlight-l4}" stroke-linecap="butt" />
			</rule>
		</rule>
	</rule>
	<rule e="way" k="highway" v="pedestrian">
		<rule e="way" k="*" v="*" zoom-max="{$zm-pedestrian - 1}">		
			<line stroke="{$color}" stroke-width="{$lw-trail-highlight-low}" stroke-linecap="butt" />
		</rule>
		<rule e="way" k="*" v="*" zoom-min="{$zm-pedestrian}">	
			<line stroke="{$color}" stroke-width="{$lw-pedestrian + $lw-trail-highlight + 0.2}" stroke-linecap="butt" />							
		</rule>				
	</rule>
</xsl:template>

<xsl:template name="trail-highlight-rules-paved">
<xsl:param name="color" />
	<rule e="way" k="highway" v="cycleway">
		<rule e="way" k="*" v="*" zoom-max="{$zm-cycleway - 1}">		
			<line stroke="{$color}" stroke-width="{$lw-trail-highlight-low}" stroke-linecap="butt" />
		</rule>
		<rule e="way" k="*" v="*" zoom-min="{$zm-cycleway}">	
			<line stroke="{$color}" stroke-width="{$lw-cycleway + $lw-trail-highlight + 0.2}" stroke-linecap="butt" />				
		</rule>	
	</rule>			
	<rule e="way" k="highway" v="service">
		<rule e="way" k="*" v="*" zoom-max="{$zm-service - 1}">		
			<line stroke="{$color}" stroke-width="{$lw-trail-highlight-low}" stroke-linecap="butt" />
		</rule>
		<rule e="way" k="*" v="*" zoom-min="{$zm-service}" zoom-max="{$zm-level2 - 1}">	
			<line stroke="{$color}" stroke-width="{$lw-service + $lw-trail-highlight + 0.2}" stroke-linecap="butt" />				
		</rule>	
		<rule e="way" k="*" v="*" zoom-min="{$zm-level2}">		
			<line stroke="{$color}" stroke-width="{$lw-service2 + $lw-trail-highlight-l2 + 0.3}" stroke-linecap="butt" />		
		</rule>			
	</rule>			
	<rule e="way" k="highway" v="living_street|residential">
		<rule e="way" k="*" v="*" zoom-max="{$zm-residential - 1}">		
			<line stroke="{$color}" stroke-width="{$lw-trail-highlight-low}" stroke-linecap="butt" />
		</rule>
		<rule e="way" k="*" v="*" zoom-min="{$zm-residential}" zoom-max="{$zm-level2 - 1}">		
			<line stroke="{$color}" stroke-width="{$lw-residential + $lw-trail-highlight + 0.3}" stroke-linecap="butt" />
		</rule>
		<rule e="way" k="*" v="*" zoom-min="{$zm-level2}">		
			<line stroke="{$color}" stroke-width="{$lw-residential2 + $lw-trail-highlight-l2 + 0.3}" stroke-linecap="butt" />		
		</rule>				
	</rule>
	<rule e="way" k="highway" v="unclassified">
		<rule e="way" k="*" v="*" zoom-max="{$zm-unclassified - 1}">		
			<line stroke="{$color}" stroke-width="{$lw-trail-highlight-low}" stroke-linecap="butt" />
		</rule>
		<rule e="way" k="*" v="*" zoom-min="{$zm-unclassified}" zoom-max="{$zm-level2 - 1}">	
			<line stroke="{$color}" stroke-width="{$lw-unclassified + $lw-trail-highlight + 0.3}" stroke-linecap="butt" />		
		</rule>		
		<rule e="way" k="*" v="*" zoom-min="{$zm-level2}">		
			<line stroke="{$color}" stroke-width="{$lw-unclassified2 + $lw-trail-highlight-l2 + 0.3}" stroke-linecap="butt" />		
		</rule>				
	</rule>
	<rule e="way" k="highway" v="tertiary|tertiary_link">
		<rule e="way" k="*" v="*" zoom-max="{$zm-tertiary - 1}">		
			<line stroke="{$color}" stroke-width="{$lw-trail-highlight-low}" stroke-linecap="butt" />
		</rule>
		<rule e="way" k="*" v="*" zoom-min="{$zm-tertiary}">
			<line stroke="{$color}" stroke-width="{$lw-tertiary + $lw-trail-highlight + 0.3}" stroke-linecap="butt" />
		</rule>
	</rule>
	<rule e="way" k="highway" v="secondary|secondary_link" >
		<rule e="way" k="*" v="*" zoom-max="{$zm-secondary - 1}">		
			<line stroke="{$color}" stroke-width="{$lw-trail-highlight-low}" stroke-linecap="butt" />
		</rule>
		<rule e="way" k="*" v="*" zoom-min="{$zm-secondary}">	
			<line stroke="{$color}" stroke-width="{$lw-secondary + $lw-trail-highlight + 0.2}" stroke-linecap="butt" />							
		</rule>
	</rule>
	<rule e="way" k="highway" v="primary|primary_link" >
		<rule e="way" k="*" v="*" zoom-max="{$zm-primary - 1}">		
			<line stroke="{$color}" stroke-width="{$lw-trail-highlight-low}" stroke-linecap="butt" />
		</rule>
		<rule e="way" k="*" v="*" zoom-min="{$zm-primary}">		
			<line stroke="{$color}" stroke-width="{$lw-primary + $lw-trail-highlight + 0.2}" stroke-linecap="butt" />							
		</rule>
	</rule>
</xsl:template>


<xsl:template name="trail-highlight-rules-ferry">
<xsl:param name="color" />
	<rule e="way" k="route" v="ferry" >
		<rule e="way" k="*" v="*" zoom-max="{$zm-ferry - 1}">		
			<line stroke="{$color}" stroke-width="{$lw-trail-highlight-low}" stroke-linecap="butt" />
		</rule>
		<rule e="way" k="*" v="*" zoom-min="{$zm-ferry}">		
			<line stroke="{$color}" stroke-width="{$lw-ferry + $lw-trail-highlight + 0.2}" stroke-linecap="butt" />							
		</rule>
	</rule>
</xsl:template>
</xsl:stylesheet>