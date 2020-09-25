<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" 
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:mo="http://schemas.mindomo.com/application/version-3.6"
                exclude-result-prefixes="mo">
  <xsl:output indent="yes"/>
  
  <xsl:template match="text()"/>
  
  <xsl:template match="mo:map">
    <opml version="2.0">
      <head>
        <title><xsl:value-of select="mo:name"/></title>
      </head>
      <body>
        <xsl:apply-templates select="mo:topics/mo:topic/mo:subTopics"/>
      </body>
    </opml>
  </xsl:template>
  
  <xsl:template match="mo:topic[not(@deleted)]">
    <outline>
      <xsl:attribute name="text">
        <xsl:value-of select="mo:text" />
      </xsl:attribute>
      <xsl:apply-templates select="mo:subTopics/mo:topic"/>
    </outline>
  </xsl:template>
  
</xsl:stylesheet>