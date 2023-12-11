<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" />
    <xsl:template match="/">
        <noticias> <!--nuestro nuevo elemento raíz es la etiqueta ciales -->
            <xsl:apply-templates select="/Category/Feed/item"/>
        </noticias>
    </xsl:template>
    <xsl:template match="item">
            <item>
                <xsl:value-of select="title" />
            </item>
    </xsl:template>
</xsl:stylesheet>