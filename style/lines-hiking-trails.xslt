<?xml-stylesheet type="text/xsl"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

<xsl:template name="lines-hiking-trails">
<xsl:variable name="lc-trail-blue">#0094F8</xsl:variable>
<xsl:variable name="lc-trail-red">#F80000</xsl:variable>
<xsl:variable name="lc-trail-green">#38C820</xsl:variable>
<xsl:variable name="lc-trail-yellow">#F8C800</xsl:variable>
<xsl:variable name="lc-trail-purple">#A800A8</xsl:variable>

<rule cat="colored_hiking" e="way" k="highway" v="*" >
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
		<rule e="way" k="*" v="*" zoom-min="{$zm-path}" zoom-max="{$zm-deep - 1}">		
			<line stroke="{$color}" dy="{$lw-path}" stroke-width="{$lw-trail-highlight}" stroke-linecap="butt" />
			<line stroke="{$color}" dy="-{$lw-path}" stroke-width="{$lw-trail-highlight}" stroke-linecap="butt" />
		</rule>
		<rule e="way" k="*" v="*" zoom-min="{$zm-deep}">		
			<line stroke="{$color}" dy="{$lw-path}" stroke-width="{$lw-trail-highlight-deep}" stroke-linecap="butt" />
			<line stroke="{$color}" dy="-{$lw-path}" stroke-width="{$lw-trail-highlight-deep}" stroke-linecap="butt" />
		</rule>
	</rule>
	<rule e="way" k="highway" v="footway">
		<rule e="way" k="*" v="*" zoom-max="{$zm-footway - 1}">		
			<line stroke="{$color}" stroke-width="{$lw-trail-highlight-low}" stroke-linecap="butt" />
		</rule>
		<rule e="way" k="*" v="*" zoom-min="{$zm-footway}">		
			<line stroke="{$color}" dy="{$lw-footway}" stroke-width="{$lw-trail-highlight}" stroke-linecap="butt" />
			<line stroke="{$color}" dy="-{$lw-footway}" stroke-width="{$lw-trail-highlight}" stroke-linecap="butt" />
		</rule>
	</rule>
	<rule e="way" k="highway" v="steps">
		<rule e="way" k="*" v="*" zoom-max="{$zm-steps - 1}">		
			<line stroke="{$color}" stroke-width="{$lw-trail-highlight-low}" stroke-linecap="butt" />
		</rule>
		<rule e="way" k="*" v="*" zoom-min="{$zm-steps}" zoom-max="{$zm-deep - 1}">		
			<line stroke="{$color}" dy="{$lw-steps}" stroke-width="{$lw-trail-highlight}" stroke-linecap="butt" />
			<line stroke="{$color}" dy="-{$lw-steps}" stroke-width="{$lw-trail-highlight}" stroke-linecap="butt" />
		</rule>
		<rule e="way" k="*" v="*" zoom-min="{$zm-deep}">		
			<line stroke="{$color}" dy="{$lw-steps}" stroke-width="{$lw-trail-highlight-deep}" stroke-linecap="butt" />
			<line stroke="{$color}" dy="-{$lw-steps}" stroke-width="{$lw-trail-highlight-deep}" stroke-linecap="butt" />
		</rule>
	</rule>
	<rule e="way" k="highway" v="track">
		<rule e="way" k="surface" v="paved">  
			<rule e="way" k="*" v="*" zoom-max="{$zm-unclassified - 1}">		
				<line stroke="{$color}" stroke-width="{$lw-trail-highlight-low}" stroke-linecap="butt" />
			</rule>
			<rule e="way" k="*" v="*" zoom-min="{$zm-unclassified}">
				<line stroke="{$color}" stroke-width="{$lw-unclassified + 2* $lw-trail-highlight}" stroke-linecap="butt" />												
			</rule>							
		</rule>
		<rule e="way" k="surface" v="~|compacted|unpaved">  
			<rule e="way" k="*" v="*" zoom-max="{$zm-track - 1}">		
				<line stroke="{$color}" stroke-width="{$lw-trail-highlight-low}" stroke-linecap="butt" />
			</rule>
			<rule e="way" k="*" v="*" zoom-min="{$zm-track}" zoom-max="{$zm-deep - 1}">					
				<line stroke="{$color}" dy="{$lw-track}" stroke-width="{$lw-trail-highlight}" stroke-linecap="butt" />
				<line stroke="{$color}" dy="-{$lw-track}" stroke-width="{$lw-trail-highlight}" stroke-linecap="butt" />
			</rule>	
			<rule e="way" k="*" v="*" zoom-min="{$zm-deep}">		
				<line stroke="{$color}" dy="{$lw-track}" stroke-width="{$lw-trail-highlight-deep}" stroke-linecap="butt" />
				<line stroke="{$color}" dy="-{$lw-track}" stroke-width="{$lw-trail-highlight-deep}" stroke-linecap="butt" />
			</rule>
		</rule>
	</rule>
	<rule e="way" k="highway" v="service|living_street|residential|unclassified">
		<rule e="way" k="surface" v="compacted|unpaved">  
			<rule e="way" k="*" v="*" zoom-max="{$zm-track - 1}">		
				<line stroke="{$color}" stroke-width="{$lw-trail-highlight-low}" stroke-linecap="butt" />
			</rule>
			<rule e="way" k="*" v="*" zoom-min="{$zm-track}">		
				<line stroke="{$color}" dy="{$lw-track}" stroke-width="{$lw-trail-highlight}" stroke-linecap="butt" />
				<line stroke="{$color}" dy="-{$lw-track}" stroke-width="{$lw-trail-highlight}" stroke-linecap="butt" />
			</rule>				
		</rule>
	</rule>
	<rule e="way" k="highway" v="pedestrian">
		<rule e="way" k="*" v="*" zoom-max="{$zm-pedestrian - 1}">		
			<line stroke="{$color}" stroke-width="{$lw-trail-highlight-low}" stroke-linecap="butt" />
		</rule>
		<rule e="way" k="*" v="*" zoom-min="{$zm-pedestrian}">	
			<line stroke="{$color}" stroke-width="{$lw-pedestrian + 2* $lw-trail-highlight}" stroke-linecap="butt" />							
		</rule>				
	</rule>
	<rule e="way" k="highway" v="service">
		<rule e="way" k="surface" v="~|paved">  
			<rule e="way" k="*" v="*" zoom-max="{$zm-service - 1}">		
				<line stroke="{$color}" stroke-width="{$lw-trail-highlight-low}" stroke-linecap="butt" />
			</rule>
			<rule e="way" k="*" v="*" zoom-min="{$zm-service}">	
				<line stroke="{$color}" stroke-width="{$lw-service + 2* $lw-trail-highlight}" stroke-linecap="butt" />				
			</rule>				
		</rule>
	</rule>
	<rule e="way" k="highway" v="living_street|residential">
		<rule e="way" k="surface" v="~|paved">  
			<rule e="way" k="*" v="*" zoom-max="{$zm-residential - 1}">		
				<line stroke="{$color}" stroke-width="{$lw-trail-highlight-low}" stroke-linecap="butt" />
			</rule>
			<rule e="way" k="*" v="*" zoom-min="{$zm-residential}">	
				<line stroke="{$color}" stroke-width="{$lw-residential + 2* $lw-trail-highlight}" stroke-linecap="butt" />	
			</rule>				
		</rule>
	</rule>
	<rule e="way" k="highway" v="unclassified">
		<rule e="way" k="surface" v="~|paved">  
			<rule e="way" k="*" v="*" zoom-max="{$zm-unclassified - 1}">		
				<line stroke="{$color}" stroke-width="{$lw-trail-highlight-low}" stroke-linecap="butt" />
			</rule>
			<rule e="way" k="*" v="*" zoom-min="{$zm-unclassified}">	
				<line stroke="{$color}" stroke-width="{$lw-unclassified + 2* $lw-trail-highlight}" stroke-linecap="butt" />		
			</rule>				
		</rule>
	</rule>
	<rule e="way" k="highway" v="tertiary|tertiary_link">
		<rule e="way" k="*" v="*" zoom-max="{$zm-tertiary - 1}">		
			<line stroke="{$color}" stroke-width="{$lw-trail-highlight-low}" stroke-linecap="butt" />
		</rule>
		<rule e="way" k="*" v="*" zoom-min="{$zm-tertiary}">
			<line stroke="{$color}" stroke-width="{$lw-tertiary + 2* $lw-trail-highlight}" stroke-linecap="butt" />
		</rule>
	</rule>
	<rule e="way" k="highway" v="secondary|secondary_link" >
		<rule e="way" k="*" v="*" zoom-max="{$zm-secondary - 1}">		
			<line stroke="{$color}" stroke-width="{$lw-trail-highlight-low}" stroke-linecap="butt" />
		</rule>
		<rule e="way" k="*" v="*" zoom-min="{$zm-secondary}">	
			<line stroke="{$color}" stroke-width="{$lw-secondary + 2* $lw-trail-highlight}" stroke-linecap="butt" />							
		</rule>
	</rule>
	<rule e="way" k="highway" v="primary|primary_link" >
		<rule e="way" k="*" v="*" zoom-max="{$zm-primary - 1}">		
			<line stroke="{$color}" stroke-width="{$lw-trail-highlight-low}" stroke-linecap="butt" />
		</rule>
		<rule e="way" k="*" v="*" zoom-min="{$zm-primary}">		
			<line stroke="{$color}" stroke-width="{$lw-primary + 2* $lw-trail-highlight}" stroke-linecap="butt" />							
		</rule>
	</rule>
</xsl:template>

</xsl:stylesheet>