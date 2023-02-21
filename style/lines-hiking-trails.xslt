<?xml-stylesheet type="text/xsl"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

<xsl:template name="lines-hiking-trails">
<xsl:variable name="lc-trail-blue">#0094F8</xsl:variable>
<xsl:variable name="lc-trail-red">#F80000</xsl:variable>
<xsl:variable name="lc-trail-green">#38C820</xsl:variable>
<xsl:variable name="lc-trail-yellow">#F8C800</xsl:variable>
<xsl:variable name="lc-trail-purple">#be40be</xsl:variable>
<xsl:variable name="lc-trail-orange">#ffa100</xsl:variable>
<xsl:variable name="lc-trail-black">#626262</xsl:variable>

<rule cat="colored_hiking" e="way" k="highway" v="*" zoom-min="12">
	<rule  e="way" k="trail_color" v="blue" >
   		<xsl:call-template name="trail-highlight-rules">
        	<xsl:with-param name="color" select="$lc-trail-blue" />
    	</xsl:call-template>
	</rule>
	<rule  e="way" k="trail_color" v="red" >
   		<xsl:call-template name="trail-highlight-rules">
        	<xsl:with-param name="color" select="$lc-trail-red" />
    	</xsl:call-template>
	</rule>
	<rule  e="way" k="trail_color" v="green" >
   		<xsl:call-template name="trail-highlight-rules">
        	<xsl:with-param name="color" select="$lc-trail-green" />
    	</xsl:call-template>
	</rule>
	<rule  e="way" k="trail_color" v="yellow" >
   		<xsl:call-template name="trail-highlight-rules">
        	<xsl:with-param name="color" select="$lc-trail-yellow" />
    	</xsl:call-template>
	</rule>
	<rule  e="way" k="trail_color" v="purple" >
   		<xsl:call-template name="trail-highlight-rules">
        	<xsl:with-param name="color" select="$lc-trail-purple" />
    	</xsl:call-template>
	</rule>
	<rule  e="way" k="trail_color" v="orange" >
   		<xsl:call-template name="trail-highlight-rules">
        	<xsl:with-param name="color" select="$lc-trail-orange" />
    	</xsl:call-template>
	</rule>
	<rule  e="way" k="trail_color" v="black" >
   		<xsl:call-template name="trail-highlight-rules">
        	<xsl:with-param name="color" select="$lc-trail-black" />
    	</xsl:call-template>
	</rule>
	<rule  e="way" k="trail_color" v="default" >
   		<xsl:call-template name="trail-highlight-rules">
        	<xsl:with-param name="color" select="$lc-trail-red" />
    	</xsl:call-template>
	</rule>
</rule>

<rule cat="colored_hiking" e="way" k="route" v="ferry" >
	<rule  e="way" k="trail_color" v="blue" >
   		<xsl:call-template name="trail-highlight-rules-ferry">
        	<xsl:with-param name="color" select="$lc-trail-blue" />
    	</xsl:call-template>
	</rule>
	<rule  e="way" k="trail_color" v="red" >
   		<xsl:call-template name="trail-highlight-rules-ferry">
        	<xsl:with-param name="color" select="$lc-trail-red" />
    	</xsl:call-template>
	</rule>
	<rule  e="way" k="trail_color" v="green" >
   		<xsl:call-template name="trail-highlight-rules-ferry">
        	<xsl:with-param name="color" select="$lc-trail-green" />
    	</xsl:call-template>
	</rule>
	<rule  e="way" k="trail_color" v="yellow" >
   		<xsl:call-template name="trail-highlight-rules-ferry">
        	<xsl:with-param name="color" select="$lc-trail-yellow" />
    	</xsl:call-template>
	</rule>
	<rule  e="way" k="trail_color" v="purple" >
   		<xsl:call-template name="trail-highlight-rules-ferry">
        	<xsl:with-param name="color" select="$lc-trail-purple" />
    	</xsl:call-template>
	</rule>
	<rule  e="way" k="trail_color" v="orange" >
   		<xsl:call-template name="trail-highlight-rules">
        	<xsl:with-param name="color" select="$lc-trail-orange" />
    	</xsl:call-template>
	</rule>
	<rule  e="way" k="trail_color" v="black" >
   		<xsl:call-template name="trail-highlight-rules">
        	<xsl:with-param name="color" select="$lc-trail-black" />
    	</xsl:call-template>
	</rule>
</rule>


</xsl:template>

<xsl:template name="trail-highlight-rules1">
<xsl:param name="color" />
		<line stroke="{$color}" dy="{$lw-track}" stroke-width="{$lw-trail-highlight}" stroke-linecap="butt" />
		<line stroke="{$color}" dy="-{$lw-track}" stroke-width="{$lw-trail-highlight}" stroke-linecap="butt" />
</xsl:template>


<xsl:template name="trail-highlight-rules">
<xsl:param name="color" />
	<rule e="way" k="highway" v="path|bridleway|cycleway">
		<rule e="way" k="*" v="*" zoom-max="{$zm-path - 1}">		
			<line stroke="{$color}" stroke-width="{$lw-trail-highlight-low}" stroke-linecap="butt" />
		</rule>
		<rule e="way" k="*" v="*" zoom-min="{$zm-path}" zoom-max="{$zm-level2 - 1}">		
			<line stroke="{$color}" dy="{$lw-path}" stroke-width="{$lw-trail-highlight}" stroke-linecap="butt" />
			<line stroke="{$color}" dy="-{$lw-path}" stroke-width="{$lw-trail-highlight}" stroke-linecap="butt" />
		</rule>
		<rule e="way" k="*" v="*" zoom-min="{$zm-level2}" zoom-max="{$zm-level3 - 1}" >		
			<line stroke="{$color}" dy="{$lw-path}" stroke-width="{$lw-trail-highlight-l2}" stroke-linecap="butt" />
			<line stroke="{$color}" dy="-{$lw-path}" stroke-width="{$lw-trail-highlight-l2}" stroke-linecap="butt" />
		</rule>
		<rule e="way" k="*" v="*" zoom-min="{$zm-level3}">		
			<line stroke="{$color}" dy="{$lw-path - 0.1}" stroke-width="{$lw-trail-highlight-l3}" stroke-linecap="butt" />
			<line stroke="{$color}" dy="-{$lw-path - 0.1}" stroke-width="{$lw-trail-highlight-l3}" stroke-linecap="butt" />
		</rule>		
	</rule>
	
	<rule e="way" k="highway" v="footway">
		<rule e="way" k="*" v="*" zoom-max="{$zm-footway - 1}">		
			<line stroke="{$color}" stroke-width="{$lw-trail-highlight-low}" stroke-linecap="butt" />
		</rule>
		<rule e="way" k="*" v="*" zoom-min="{$zm-footway}" zoom-max="{$zm-level2 - 1}">		
			<line stroke="{$color}" dy="{$lw-footway}" stroke-width="{$lw-trail-highlight}" stroke-linecap="butt" />
			<line stroke="{$color}" dy="-{$lw-footway}" stroke-width="{$lw-trail-highlight}" stroke-linecap="butt" />
		</rule>
		<rule e="way" k="*" v="*" zoom-min="{$zm-level2}" zoom-max="{$zm-level3 - 1}" >		
			<line stroke="{$color}" dy="{$lw-footway}" stroke-width="{$lw-trail-highlight-l2}" stroke-linecap="butt" />
			<line stroke="{$color}" dy="-{$lw-footway}" stroke-width="{$lw-trail-highlight-l2}" stroke-linecap="butt" />
		</rule>
		<rule e="way" k="*" v="*" zoom-min="{$zm-level3 }">		
			<line stroke="{$color}" dy="{$lw-footway - 0.1}" stroke-width="{$lw-trail-highlight-l3}" stroke-linecap="butt" />
			<line stroke="{$color}" dy="-{$lw-footway - 0.1}" stroke-width="{$lw-trail-highlight-l3}" stroke-linecap="butt" />
		</rule>
	</rule>
	<rule e="way" k="highway" v="via_ferrata">
		<rule e="way" k="*" v="*" zoom-max="{$zm-ferrata - 1}">		
			<line stroke="{$color}" stroke-width="{$lw-trail-highlight-low}" stroke-linecap="butt" />
		</rule>
		<rule e="way" k="*" v="*" zoom-min="{$zm-ferrata}" zoom-max="{$zm-level2 - 1}">		
			<line stroke="{$color}" dy="{$lw-ferrata}" stroke-width="{$lw-trail-highlight}" stroke-linecap="butt" />
			<line stroke="{$color}" dy="-{$lw-ferrata}" stroke-width="{$lw-trail-highlight}" stroke-linecap="butt" />
		</rule>
		<rule e="way" k="*" v="*" zoom-min="{$zm-level2}" zoom-max="{$zm-level3 - 1}" >		
			<line stroke="{$color}" dy="{$lw-ferrata}" stroke-width="{$lw-trail-highlight-l2}" stroke-linecap="butt" />
			<line stroke="{$color}" dy="-{$lw-ferrata}" stroke-width="{$lw-trail-highlight-l2}" stroke-linecap="butt" />
		</rule>
		<rule e="way" k="*" v="*" zoom-min="{$zm-level3 }">		
			<line stroke="{$color}" dy="{$lw-ferrata - 0.1}" stroke-width="{$lw-trail-highlight-l3}" stroke-linecap="butt" />
			<line stroke="{$color}" dy="-{$lw-ferrata - 0.1}" stroke-width="{$lw-trail-highlight-l3}" stroke-linecap="butt" />
		</rule>
	</rule>
	<rule e="way" k="highway" v="steps">
		<rule e="way" k="*" v="*" zoom-max="{$zm-steps - 1}">		
			<line stroke="{$color}" stroke-width="{$lw-trail-highlight-low}" stroke-linecap="butt" />
		</rule>
		<rule e="way" k="*" v="*" zoom-min="{$zm-steps}" zoom-max="{$zm-level2 - 1}">		
			<line stroke="{$color}" dy="{$lw-steps}" stroke-width="{$lw-trail-highlight}" stroke-linecap="butt" />
			<line stroke="{$color}" dy="-{$lw-steps}" stroke-width="{$lw-trail-highlight}" stroke-linecap="butt" />
		</rule>
		<rule e="way" k="*" v="*" zoom-min="{$zm-level2}" zoom-max="{$zm-level3 - 1}">		
			<line stroke="{$color}" dy="{$lw-steps}" stroke-width="{$lw-trail-highlight-l2}" stroke-linecap="butt" />
			<line stroke="{$color}" dy="-{$lw-steps}" stroke-width="{$lw-trail-highlight-l2}" stroke-linecap="butt" />
		</rule>
		<rule e="way" k="*" v="*" zoom-min="{$zm-level3 }">		
			<line stroke="{$color}" dy="{$lw-steps - 0.1}" stroke-width="{$lw-trail-highlight-l3}" stroke-linecap="butt" />
			<line stroke="{$color}" dy="-{$lw-steps - 0.1}" stroke-width="{$lw-trail-highlight-l3}" stroke-linecap="butt" />
		</rule>
	</rule>
	<rule e="way" k="highway" v="track">
		<rule e="way" k="tracktype" v="grade1|grade2">
			<rule e="way" k="*" v="*" zoom-max="{$zm-macadam - 1}">		
				<line stroke="{$color}" stroke-width="{$lw-trail-highlight-low}" stroke-linecap="butt" />
			</rule>
			<rule e="way" k="*" v="*" zoom-min="{$zm-macadam}">	
				<line stroke="{$color}" stroke-width="{$lw-macadam + $lw-trail-highlight + 0.3}" stroke-linecap="butt" />														
				<line stroke="{$lc-macadam}" stroke-width="{$lw-macadam}" stroke-linecap="butt" />
			</rule>
		</rule>
		<rule e="way" k="tracktype" v="grade3|grade4|grade5|~">		
			<rule e="way" k="*" v="*" zoom-max="{$zm-track - 1}">		
				<line stroke="{$color}" stroke-width="{$lw-trail-highlight-low}" stroke-linecap="butt" />
			</rule>
			<rule e="way" k="*" v="*" zoom-min="{$zm-track}" zoom-max="{$zm-level2 - 1}">					
				<line stroke="{$color}" dy="{$lw-track}" stroke-width="{$lw-trail-highlight}" stroke-linecap="butt" />
				<line stroke="{$color}" dy="-{$lw-track}" stroke-width="{$lw-trail-highlight}" stroke-linecap="butt" />
			</rule>	
			<rule e="way" k="*" v="*" zoom-min="{$zm-level2}" zoom-max="{$zm-level3 - 1}" >		
				<line stroke="{$color}" dy="{$lw-track}" stroke-width="{$lw-trail-highlight-deep}" stroke-linecap="butt" />
				<line stroke="{$color}" dy="-{$lw-track}" stroke-width="{$lw-trail-highlight-deep}" stroke-linecap="butt" />
			</rule>
			<rule e="way" k="*" v="*" zoom-min="{$zm-level3 }">		
				<line stroke="{$color}" dy="{$lw-track - 0.1}" stroke-width="{$lw-trail-highlight-l3}" stroke-linecap="butt" />
				<line stroke="{$color}" dy="-{$lw-track - 0.1}" stroke-width="{$lw-trail-highlight-l3}" stroke-linecap="butt" />
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
	<rule e="way" k="highway" v="service">
		<rule e="way" k="*" v="*" zoom-max="{$zm-service - 1}">		
			<line stroke="{$color}" stroke-width="{$lw-trail-highlight-low}" stroke-linecap="butt" />
		</rule>
		<rule e="way" k="*" v="*" zoom-min="{$zm-service}">	
			<line stroke="{$color}" stroke-width="{$lw-service + $lw-trail-highlight + 0.2}" stroke-linecap="butt" />				
		</rule>	
	</rule>			
	<rule e="way" k="highway" v="living_street|residential">
		<rule e="way" k="*" v="*" zoom-max="{$zm-residential - 1}">		
			<line stroke="{$color}" stroke-width="{$lw-trail-highlight-low}" stroke-linecap="butt" />
		</rule>
		<rule e="way" k="*" v="*" zoom-min="{$zm-residential}">		
			<line stroke="{$color}" stroke-width="{$lw-residential + $lw-trail-highlight + 0.3}" stroke-linecap="butt" />
		</rule>
	</rule>
	<rule e="way" k="highway" v="unclassified">
		<rule e="way" k="*" v="*" zoom-max="{$zm-unclassified - 1}">		
			<line stroke="{$color}" stroke-width="{$lw-trail-highlight-low}" stroke-linecap="butt" />
		</rule>
		<rule e="way" k="*" v="*" zoom-min="{$zm-unclassified}">	
			<line stroke="{$color}" stroke-width="{$lw-unclassified + $lw-trail-highlight + 0.3}" stroke-linecap="butt" />		
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