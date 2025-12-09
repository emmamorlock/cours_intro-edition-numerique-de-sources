<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
  exclude-result-prefixes="#all"
  xpath-default-namespace="http://www.tei-c.org/ns/1.0"
  xmlns="http://www.w3.org/1999/xhtml"
  version="2.0">
 
  
  <xsl:output method="xhtml" encoding="UTF-8" indent="yes"/>
  
  <!-- The root template creates the frame for the document
       then calls apply-templates to process the TEI content. -->
  <xsl:template match="/">
    <html xmlns="http://www.w3.org/1999/xhtml">
      <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title></title>
      </head>
      <body>
        <xsl:apply-templates/>
      </body>
    </html>
  </xsl:template>
  
  <!--  On supprime le TEIHeader -->
  <xsl:template match="teiHeader"/>
  
  <!-- On supprime d'autres éléments  -->
  <xsl:template match="front|back"/>
  
  <!-- On crée une division pour toutes les sections principales du texte -->
  <xsl:template match="text|body|div">
    <div>
      <xsl:apply-templates/>
    </div>
  </xsl:template>
  
  <!-- On crée un élément de niveau de titre 2 pour l'élément head -->
  
  <xsl:template match="head">
    <h2><xsl:apply-templates/></h2>
  </xsl:template>
  
  <!-- Pour les strophes, on crée une autre div avec des marges-->
  <xsl:template match="lg">
    <div style="margin:10px;">
      <xsl:apply-templates/>
    </div>
    <hr/>
  </xsl:template>
  
  <!-- pour chaque vers, on reproduit la ligne et on ajout un saut de ligne  -->
  
  <xsl:template match="l">
    <xsl:apply-templates/><br/>
  </xsl:template>
  
  
</xsl:stylesheet>
