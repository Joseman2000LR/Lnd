<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" />
    <xsl:template match="/">
        <html><!--nuestro nuevo elemento raíz es la etiqueta ciales -->
            <head>
                <title>Ejercicio12</title>
            </head>
            <xsl:apply-templates select="/instituto/curso" />
        </html>
    </xsl:template>
    <xsl:template match="curso">
        <boby>
            <ol >
                <li type="a"><xsl:value-of select="@nombre"/></li>
                <li type="1">
                    <xsl:value-of select="alumno/nombre" />
                </li>
            </ol>
        </boby>
    </xsl:template>
</xsl:stylesheet>