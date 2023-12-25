<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" />
    <xsl:template match="/">
        <noticias> <!--nuestro nuevo elemento raíz es la etiqueta ciales -->
            <xsl:apply-templates select="/Category/Feed/item" />
        </noticias>
    </xsl:template>
    <xsl:template match="item">
        
            <xsl:element name="notica">
                <noticia>
                <xsl:attribute name="autor" /> <xsl:attribute name="fecha" /><xsl:value-of
                    select="title" /></noticia>
            </xsl:element>
        
    </xsl:template>
</xsl:stylesheet>