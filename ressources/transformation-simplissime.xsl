<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  exclude-result-prefixes="#all"
  xpath-default-namespace="http://www.tei-c.org/ns/1.0"
  version="2.0">

<!-- 
    Une feuille de style XSLT simplissime 
    (d'après la feuille de style 'simple-stats.xsl' du cours Dariah Teach Digital Scholarly Editions: Manuscripts, Texts and TEI 
    https://teach.dariah.eu/course/view.php?id=32 )
-->
  
<!-- Format de sortie : plein texte -->
  <xsl:output method="text" encoding="UTF-8"/>
  
<!-- 
    Une seule règle de transformation 
-->
  <xsl:template match="/">
    <!--  Ecrit un titre dans le fichier suivi d'un saut de ligne  -->
    <xsl:text>TRANSFORMATION XSLT
    
    </xsl:text>
    <!-- Dénombrer les mots (balises w) en utilisant XPath   -->
    
    <xsl:text>Nombre de mots (balise w) : </xsl:text>
    <xsl:value-of select="count(//w)"/>
  </xsl:template>
  
</xsl:stylesheet>