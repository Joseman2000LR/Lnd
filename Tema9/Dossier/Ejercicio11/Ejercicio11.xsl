<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" />
    <xsl:template match="/">
        <html><!--nuestro nuevo elemento raíz es la etiqueta ciales -->
            <head>
            <title>Ejercicio11</title>
            </head>
            <xsl:apply-templates select="/instituto/curso/alumno" />
        </html>
    </xsl:template>
    <xsl:template match="alumno">
            <boby>
                <p>Lista nombre y apellidos </p>
                <table border="1" width="70%">
                    <tr>
                        <td>
                            <xsl:value-of select="nombre" /></td>
                        <td>
                            <xsl:value-of select="apellidos"/>
                        </td>
                    </tr>
                 </table>
            <p>Lista de ciales y curso </p>
            <table border="1" width="70%">
                <tr>
                    <td>
                        <xsl:value-of select="./curso[@nombre]"/>
                    </td>
                    <td>
                        <xsl:value-of select="@cial"/>
                    </td>
                </tr>
            </table>
            </boby>
        
        
    </xsl:template>
</xsl:stylesheet>