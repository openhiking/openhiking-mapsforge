<?xml-stylesheet type="text/xsl"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

<xsl:variable name="lc-bridge">#333333</xsl:variable>
<xsl:variable name="lc-bridge-bg">#EEEEEE</xsl:variable>
<xsl:variable name="lw-bridge-border">1.9</xsl:variable>
<xsl:variable name="lw-bridge-base">1.1</xsl:variable>

<xsl:template name="lines-bridges">



<rule e="way" k="highway" v="*">
    <rule e="way" k="bridge" v="yes|true|viaduct|aqueduct|suspension|culvert|swing">
        <rule e="way" k="area" v="~|no">
        <rule e="way" k="tunnel" v="~|false|no">
            <rule e="way" k="highway" v="path|bridleway">
                <xsl:call-template name="bridge-rendering-14">
                    <xsl:with-param name="zm-highway" select="$zm-path" />
                    <xsl:with-param name="lw-l1" select="$lw-path" />
                    <xsl:with-param name="lw-l2" select="$lw-path2" />
                    <xsl:with-param name="lw-l3" select="$lw-path3" />
                    <xsl:with-param name="lw-l4" select="$lw-path4" />
                </xsl:call-template>	
            </rule>

            <rule e="way" k="highway" v="footway">
                <xsl:call-template name="bridge-rendering">
                    <xsl:with-param name="zm-highway" select="$zm-footway" />
                    <xsl:with-param name="lw-l1" select="$lw-footway" />
                </xsl:call-template>
            </rule>

           
            <rule e="way" k="highway" v="track">
                <rule e="way" k="tracktype" v="grade1|grade2">
                    <xsl:call-template name="bridge-rendering-12">
                        <xsl:with-param name="zm-highway" select="$zm-macadam" />
                        <xsl:with-param name="lw-l1" select="$lw-macadam" />
                        <xsl:with-param name="lw-l2" select="$lw-macadam2" />
                    </xsl:call-template>
                </rule>

                <rule e="way" k="tracktype" v="grade3|grade4|grade5|~">		
                    <xsl:call-template name="bridge-rendering-13">
                        <xsl:with-param name="zm-highway" select="$zm-track" />
                        <xsl:with-param name="lw-l1" select="$lw-track" />
                        <xsl:with-param name="lw-l2" select="$lw-track2" />
                        <xsl:with-param name="lw-l3" select="$lw-track3" />
                        <xsl:with-param name="lw-l4" select="$lw-track3" />
                    </xsl:call-template>
                </rule>
            </rule>

            <rule e="way" k="highway" v="pedestrian">
                <xsl:call-template name="bridge-rendering">
                    <xsl:with-param name="zm-highway" select="$zm-pedestrian" />
                    <xsl:with-param name="lw-l1" select="$lw-pedestrian" />
                </xsl:call-template>
            </rule>

            <rule e="way" k="highway" v="cycleway">
                <xsl:call-template name="bridge-rendering">
                    <xsl:with-param name="zm-highway" select="$zm-cycleway" />
                    <xsl:with-param name="lw-l1" select="$lw-cycleway" />
                </xsl:call-template>
            </rule>

            <rule e="way" k="highway" v="service">
                <xsl:call-template name="bridge-rendering-12">
                    <xsl:with-param name="zm-highway" select="$zm-service" />
                    <xsl:with-param name="lw-l1" select="$lw-service" />
                    <xsl:with-param name="lw-l2" select="$lw-service2" />
                </xsl:call-template>
            </rule>

            <rule e="way" k="highway" v="residential">
                <xsl:call-template name="bridge-rendering-13">
                    <xsl:with-param name="zm-highway" select="$zm-residential" />
                    <xsl:with-param name="lw-l1" select="$lw-residential" />
                    <xsl:with-param name="lw-l2" select="$lw-residential2" />
                    <xsl:with-param name="lw-l3" select="$lw-residential3" />
                </xsl:call-template>
            </rule>

            <rule e="way" k="highway" v="living_street">
                <xsl:call-template name="bridge-rendering">
                    <xsl:with-param name="zm-highway" select="$zm-residential" />
                    <xsl:with-param name="lw-l1" select="$lw-living_street" />
                </xsl:call-template>
            </rule>
            <rule e="way" k="highway" v="unclassified">
                <xsl:call-template name="bridge-rendering-13">
                    <xsl:with-param name="zm-highway" select="$zm-unclassified" />
                    <xsl:with-param name="lw-l1" select="$lw-unclassified" />
                    <xsl:with-param name="lw-l2" select="$lw-unclassified2" />
                    <xsl:with-param name="lw-l3" select="$lw-unclassified3" />
                </xsl:call-template>
            </rule>

           <rule e="way" k="highway" v="tertiary|tertiary_link">
                <xsl:call-template name="bridge-rendering">
                    <xsl:with-param name="zm-highway" select="$zm-tertiary" />
                    <xsl:with-param name="lw-l1" select="$lw-tertiary" />
                </xsl:call-template>
            </rule>

          <rule e="way" k="highway" v="secondary|secondary_link">
                <xsl:call-template name="bridge-rendering">
                    <xsl:with-param name="zm-highway" select="$zm-secondary" />
                    <xsl:with-param name="lw-l1" select="$lw-secondary" />
                </xsl:call-template>
            </rule>

          <rule e="way" k="highway" v="primary|primary_link">
                <xsl:call-template name="bridge-rendering">
                    <xsl:with-param name="zm-highway" select="$zm-primary" />
                    <xsl:with-param name="lw-l1" select="$lw-primary" />
                </xsl:call-template>
            </rule>

          <rule e="way" k="highway" v="trunk|trunk_link">
                <xsl:call-template name="bridge-rendering">
                    <xsl:with-param name="zm-highway" select="$zm-trunk" />
                    <xsl:with-param name="lw-l1" select="$lw-trunk" />
                </xsl:call-template>
            </rule>

          <rule e="way" k="highway" v="motorway|motorway_link">
                <xsl:call-template name="bridge-rendering">
                    <xsl:with-param name="zm-highway" select="$zm-motorway" />
                    <xsl:with-param name="lw-l1" select="$lw-motorway" />
                </xsl:call-template>
            </rule>


        <!-- 
        <rule e="way" k="highway" v="footway|platform" zoom-min="{$zm-footway}">
            <line stroke="{$lc-bridge}" stroke-width="{$lw-footway + $lw-bridge-border}" stroke-linecap="butt"  /> 
            <line stroke="{$lc-bridge-bg}" stroke-width="{$lw-footway + $lw-bridge-base}" stroke-linecap="butt" />            
        </rule>

        <rule e="way" k="highway" v="path" zoom-min="{$zm-path}">
            <line stroke="{$lc-bridge}" stroke-width="{$lw-path + $lw-bridge-border}" stroke-linecap="butt"  /> 
            <line stroke="{$lc-bridge-bg}" stroke-width="{$lw-path + $lw-bridge-base}" stroke-linecap="butt" />          
        </rule>
        <rule e="way" k="highway" v="bridleway" zoom-min="{$zm-bridleway}">
            <line stroke="{$lc-bridge}" stroke-width="{$lw-bridleway + $lw-bridge-border}" stroke-linecap="butt"  /> 
            <line stroke="{$lc-bridge-bg}" stroke-width="{$lw-bridleway + $lw-bridge-base}" stroke-linecap="butt" /> 
        </rule>

        <rule e="way" k="highway" v="steps" zoom-min="{$zm-steps}">
            <line stroke="{$lc-bridge}" stroke-width="{$lw-steps + $lw-bridge-border}" stroke-linecap="butt"  /> 
            <line stroke="{$lc-bridge-bg}" stroke-width="{$lw-steps + $lw-bridge-base}" stroke-linecap="butt" /> 
        </rule>
        <rule e="way" k="highway" v="pedestrian" zoom-min="{$zm-pedestrian}">
            <line stroke="{$lc-bridge}" stroke-width="{$lw-pedestrian + $lw-bridge-border}" stroke-linecap="butt"  /> 
            <line stroke="{$lc-bridge-bg}" stroke-width="{$lw-pedestrian + $lw-bridge-base}" stroke-linecap="butt" /> 
        </rule>
        <rule e="way" k="highway" v="cycleway" zoom-min="{$zm-cycleway}">
            <line stroke="{$lc-bridge}" stroke-width="{$lw-cycleway + $lw-bridge-border}" stroke-linecap="butt"  /> 
            <line stroke="{$lc-bridge-bg}" stroke-width="{$lw-cycleway + $lw-bridge-base}" stroke-linecap="butt" /> 
        </rule>

        <rule e="way" k="highway" v="track" >
            <rule e="way" k="tracktype" v="grade1" zoom-min="{$zm-macadam}"> 
                <line stroke="{$lc-bridge}" stroke-width="{$lw-macadam + $lw-bridge-border}" stroke-linecap="butt"  /> 
                <line stroke="{$lc-bridge-bg}" stroke-width="{$lw-macadam + $lw-bridge-base}" stroke-linecap="butt" /> 
            </rule>
            <rule e="way" k="tracktype" v="~|grade2|grade3|grade4|grade5" zoom-min="{$zm-track}"> 
                <line stroke="{$lc-bridge}" stroke-width="{$lw-track + $lw-bridge-border}" stroke-linecap="butt"  /> 
                <line stroke="{$lc-bridge-bg}" stroke-width="{$lw-track + $lw-bridge-base}" stroke-linecap="butt" /> 
            </rule>
        </rule>

        <rule e="way" k="highway" v="raceway" zoom-min="{$zm-raceway}">
            <line stroke="{$lc-bridge}" stroke-width="{$lw-raceway + $lw-bridge-border}" stroke-linecap="butt"  /> 
            <line stroke="{$lc-bridge-bg}" stroke-width="{$lw-raceway + $lw-bridge-base}" stroke-linecap="butt" /> 
        </rule>
        <rule e="way" k="highway" v="service" >
            <line stroke="{$lc-bridge}" stroke-width="{$lw-service + $lw-bridge-border}" stroke-linecap="butt"  /> 
            <line stroke="{$lc-bridge-bg}" stroke-width="{$lw-service + $lw-bridge-base}" stroke-linecap="butt" /> 
        </rule>

        <rule e="way" k="highway" v="living_street"  zoom-min="{$zm-living}">
            <line stroke="{$lc-bridge}" stroke-width="{$lw-living_street + $lw-bridge-border}" stroke-linecap="butt"  /> 
            <line stroke="{$lc-bridge-bg}" stroke-width="{$lw-living_street + $lw-bridge-base}" stroke-linecap="butt" />   
        </rule>
        <rule e="way" k="highway" v="residential" zoom-min="{$zm-residential}">
            <line stroke="{$lc-bridge}" stroke-width="{$lw-residential + $lw-bridge-border}" stroke-linecap="butt"  /> 
            <line stroke="{$lc-bridge-bg}" stroke-width="{$lw-residential + $lw-bridge-base}" stroke-linecap="butt" />        
        </rule>
        <rule e="way" k="highway" v="unclassified" >
            <line stroke="{$lc-bridge}" stroke-width="{$lw-unclassified + $lw-bridge-border}" stroke-linecap="butt"  /> 
            <line stroke="{$lc-bridge-bg}" stroke-width="{$lw-unclassified + $lw-bridge-base}" stroke-linecap="butt" />   
        </rule>
  
        <rule e="way" k="highway" v="tertiary|tertiary_link" zoom-min="{$zm-tertiary}">
            <line stroke="{$lc-bridge}" stroke-width="{$lw-tertiary + $lw-bridge-border}" stroke-linecap="butt"  /> 
            <line stroke="{$lc-bridge-bg}" stroke-width="{$lw-tertiary + $lw-bridge-base}" stroke-linecap="butt" /> 
        </rule>
        <rule e="way" k="highway" v="secondary|secondary_link" zoom-min="{$zm-secondary}">
            <line stroke="{$lc-bridge}" stroke-width="{$lw-secondary + $lw-bridge-border}" stroke-linecap="butt"  /> 
            <line stroke="{$lc-bridge-bg}" stroke-width="{$lw-secondary + $lw-bridge-base}" stroke-linecap="butt" /> 
        </rule>
        <rule e="way" k="highway" v="primary|primary_link" zoom-min="{$zm-primary}">
            <line stroke="{$lc-bridge}" stroke-width="{$lw-primary + $lw-bridge-border}" stroke-linecap="butt"  />
            <line stroke="{$lc-bridge-bg}" stroke-width="{$lw-primary + $lw-bridge-base}" stroke-linecap="butt"  /> 
        </rule>
        <rule e="way" k="highway" v="trunk_link" zoom-min="{$zm-trunk_link}">
            <line stroke="{$lc-bridge}" stroke-width="{$lw-trunk_link +  $lw-bridge-border}" stroke-linecap="butt"  />
            <line stroke="{$lc-bridge-bg}" stroke-width="{$lw-trunk_link + $lw-bridge-base}" stroke-linecap="butt"  />
        </rule>
        <rule e="way" k="highway" v="trunk" zoom-min="{$zm-trunk}">
            <line stroke="{$lc-bridge}" stroke-width="{$lw-trunk +  $lw-bridge-border}" stroke-linecap="butt"  />
            <line stroke="{$lc-bridge-bg}" stroke-width="{$lw-trunk + $lw-bridge-base}" stroke-linecap="butt"  />
        </rule>
        <rule e="way" k="highway" v="motorway_link" zoom-min="{$zm-motorway_link}">
            <line stroke="{$lc-bridge}" stroke-width="{$lw-motorway_link +  $lw-bridge-border}" stroke-linecap="butt"  />
            <line stroke="{$lc-bridge-bg}" stroke-width="{$lw-motorway_link + $lw-bridge-base}" stroke-linecap="butt"  />
        </rule>
        <rule e="way" k="highway" v="motorway" zoom-min="{$zm-motorway}">
            <line stroke="{$lc-bridge}" stroke-width="{$lw-motorway +  $lw-bridge-border}" stroke-linecap="butt"  />
            <line stroke="{$lc-bridge-bg}" stroke-width="{$lw-motorway +$lw-bridge-base}" stroke-linecap="butt"  />
        </rule>
    -->
        </rule> 
        </rule> 
    </rule>
</rule>


<rule e="way" k="railway" v="*">
    <rule e="way" k="bridge" v="yes|true|viaduct|aqueduct|suspension|culvert|swing">
        <rule e="way" k="tunnel" v="~|false|no">
            <rule e="way" k="railway" v="rail|light_rail">
                <line stroke="{$lc-bridge}" stroke-width="{$lw-rail + $lw-bridge-border}" stroke-linecap="butt"  />
                <line stroke="{$lc-bridge-bg}" stroke-width="{$lw-rail + $lw-bridge-base}" stroke-linecap="butt"  />
            </rule>
            <rule e="way" k="railway" v="narrow_gauge|funicular|tram">
                <line stroke="{$lc-bridge}" stroke-width="{$lw-rail-narrow + $lw-bridge-border}" stroke-linecap="butt"  />
                <line stroke="{$lc-bridge-bg}" stroke-width="{$lw-rail-narrow + $lw-bridge-base}" stroke-linecap="butt"  />
            </rule>
            <rule e="way" k="railway" v="disused">
                <rule e="way" k="disused" v="rail|light_rail">          
                    <line stroke="{$lc-bridge}" stroke-width="{$lw-rail + $lw-bridge-border}" stroke-linecap="butt"  />
                    <line stroke="{$lc-bridge-bg}" stroke-width="{$lw-rail + $lw-bridge-base}" stroke-linecap="butt"  />
                </rule>
                <rule e="way" k="disused" v="narrow_gauge|funicular|tram">            
                    <line stroke="{$lc-bridge}" stroke-width="{$lw-rail-narrow + $lw-bridge-border}" stroke-linecap="butt"  />
                    <line stroke="{$lc-bridge-bg}" stroke-width="{$lw-rail-narrow + $lw-bridge-base}" stroke-linecap="butt"  />
                </rule>
            </rule>
        </rule>
    </rule>
</rule>

<rule e="way" k="disused:railway" v="*">
    <rule e="way" k="railway" v="~">
        <rule e="way" k="bridge" v="yes|true|viaduct|aqueduct|suspension|culvert|swing">
            <rule e="way" k="tunnel" v="~|false|no">
                <rule e="way" k="disused:railway" v="rail|light_rail">
                    <line stroke="{$lc-bridge}" stroke-width="{$lw-rail + $lw-bridge-border}" stroke-linecap="butt"  />
                    <line stroke="{$lc-bridge-bg}" stroke-width="{$lw-rail + $lw-bridge-base}" stroke-linecap="butt"  />
                </rule>
                <rule e="way" k="disused:railway" v="narrow_gauge|funicular|tram">
                    <line stroke="{$lc-bridge}" stroke-width="{$lw-rail-narrow + $lw-bridge-border}" stroke-linecap="butt"  />
                    <line stroke="{$lc-bridge-bg}" stroke-width="{$lw-rail-narrow + $lw-bridge-base}" stroke-linecap="butt"  />
                </rule>
            </rule>
        </rule>
    </rule> 
</rule>

</xsl:template>

<xsl:template name="bridge-rendering">
<xsl:param name="zm-highway" />
<xsl:param name="lw-l1" />
	<rule e="way" k="*" v="*" zoom-min="{$zm-highway}" >		
        <line stroke="{$lc-bridge}" stroke-width="{$lw-l1 + $lw-bridge-border}" stroke-linecap="butt"  /> 
        <line stroke="{$lc-bridge-bg}" stroke-width="{$lw-l1 + $lw-bridge-base}" stroke-linecap="butt" /> 
	</rule>
</xsl:template>

<xsl:template name="bridge-rendering-12">
<xsl:param name="zm-highway" />
<xsl:param name="lw-l1" />
<xsl:param name="lw-l2" />
	<rule e="way" k="*" v="*" zoom-min="{$zm-highway}" zoom-max="{$zm-level2 - 1}">		
        <line stroke="{$lc-bridge}" stroke-width="{$lw-l1 + $lw-bridge-border}" stroke-linecap="butt"  /> 
        <line stroke="{$lc-bridge-bg}" stroke-width="{$lw-l1 + $lw-bridge-base}" stroke-linecap="butt" /> 
	</rule>
	<rule e="way" k="*" v="*" zoom-min="{$zm-level2}" >		
        <line stroke="{$lc-bridge}" stroke-width="{$lw-l2 + $lw-bridge-border}" stroke-linecap="butt"  /> 
        <line stroke="{$lc-bridge-bg}" stroke-width="{$lw-l2 + $lw-bridge-base}" stroke-linecap="butt" /> 
	</rule>		 
</xsl:template>

<xsl:template name="bridge-rendering-13">
<xsl:param name="zm-highway" />
<xsl:param name="lw-l1" />
<xsl:param name="lw-l2" />
<xsl:param name="lw-l3" />
	<rule e="way" k="*" v="*" zoom-min="{$zm-highway}" zoom-max="{$zm-level2 - 1}">		
        <line stroke="{$lc-bridge}" stroke-width="{$lw-l1 + $lw-bridge-border}" stroke-linecap="butt"  /> 
        <line stroke="{$lc-bridge-bg}" stroke-width="{$lw-l1 + $lw-bridge-base}" stroke-linecap="butt" /> 
	</rule>
	<rule e="way" k="*" v="*" zoom-min="{$zm-level2}"  zoom-max="{$zm-level3 - 1}" >		
        <line stroke="{$lc-bridge}" stroke-width="{$lw-l2 + $lw-bridge-border}" stroke-linecap="butt"  /> 
        <line stroke="{$lc-bridge-bg}" stroke-width="{$lw-l2 + $lw-bridge-base}" stroke-linecap="butt" /> 
	</rule>		 
	<rule e="way" k="*" v="*" zoom-min="{$zm-level3}">
        <line stroke="{$lc-bridge}" stroke-width="{$lw-l3 + $lw-bridge-border}" stroke-linecap="butt"  /> 
        <line stroke="{$lc-bridge-bg}" stroke-width="{$lw-l3 + $lw-bridge-base}" stroke-linecap="butt" /> 
	</rule>
</xsl:template>

<xsl:template name="bridge-rendering-24">
<xsl:param name="zm-highway" />
<xsl:param name="lw-l2" />
<xsl:param name="lw-l3" />
<xsl:param name="lw-l4" />
	<rule e="way" k="*" v="*" zoom-min="{$zm-highway}" zoom-max="{$zm-level3 - 1}">		
        <line stroke="{$lc-bridge}" stroke-width="{$lw-l2 + $lw-bridge-border}" stroke-linecap="butt"  /> 
        <line stroke="{$lc-bridge-bg}" stroke-width="{$lw-l2 + $lw-bridge-base}" stroke-linecap="butt" /> 
	</rule>
	<rule e="way" k="*" v="*" zoom-min="{$zm-level3}" zoom-max="{$zm-level4 - 1}" >
        <line stroke="{$lc-bridge}" stroke-width="{$lw-l3 + $lw-bridge-border}" stroke-linecap="butt"  /> 
        <line stroke="{$lc-bridge-bg}" stroke-width="{$lw-l3 + $lw-bridge-base}" stroke-linecap="butt" /> 
	</rule>
	<rule e="way" k="*" v="*" zoom-min="{$zm-level4}">		
        <line stroke="{$lc-bridge}" stroke-width="{$lw-l4 + $lw-bridge-border}" stroke-linecap="butt"  /> 
        <line stroke="{$lc-bridge-bg}" stroke-width="{$lw-l4 + $lw-bridge-base}" stroke-linecap="butt" /> 
	</rule>		 
</xsl:template>

<xsl:template name="bridge-rendering-14">
<xsl:param name="zm-highway" />
<xsl:param name="lw-l1" />
<xsl:param name="lw-l2" />
<xsl:param name="lw-l3" />
<xsl:param name="lw-l4" />
	<rule e="way" k="*" v="*" zoom-min="{$zm-highway}" zoom-max="{$zm-level2 - 1}">		
        <line stroke="{$lc-bridge}" stroke-width="{$lw-l1 + $lw-bridge-border}" stroke-linecap="butt"  /> 
        <line stroke="{$lc-bridge-bg}" stroke-width="{$lw-l1 + $lw-bridge-base}" stroke-linecap="butt" /> 
	</rule>
	<rule e="way" k="*" v="*" zoom-min="{$zm-level2}" zoom-max="{$zm-level3 - 1}" >	
        <line stroke="{$lc-bridge}" stroke-width="{$lw-l2 + $lw-bridge-border}" stroke-linecap="butt"  /> 
        <line stroke="{$lc-bridge-bg}" stroke-width="{$lw-l2 + $lw-bridge-base}" stroke-linecap="butt" /> 
	</rule>
	<rule e="way" k="*" v="*" zoom-min="{$zm-level3}" zoom-max="{$zm-level4 - 1}" >
        <line stroke="{$lc-bridge}" stroke-width="{$lw-l3 + $lw-bridge-border}" stroke-linecap="butt"  /> 
        <line stroke="{$lc-bridge-bg}" stroke-width="{$lw-l3 + $lw-bridge-base}" stroke-linecap="butt" /> 
	</rule>
	<rule e="way" k="*" v="*" zoom-min="{$zm-level4}">		
        <line stroke="{$lc-bridge}" stroke-width="{$lw-l4 + $lw-bridge-border}" stroke-linecap="butt"  /> 
        <line stroke="{$lc-bridge-bg}" stroke-width="{$lw-l4 + $lw-bridge-base}" stroke-linecap="butt" /> 
	</rule>		 
</xsl:template>


</xsl:stylesheet>