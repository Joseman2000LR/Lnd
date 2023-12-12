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
            <table border="1" width="70%" align="left">
                    <tr>
                    <th colspan="3" bgcolor="blue" align="left"><xsl:value-of select="@nombre"/></th>
                    </tr>
                    <tr>
                        <td bgcolor="pink">
                            Cial:
                        </td>
                        <td bgcolor="pink">
                             Nombre:
                        </td>
                        <td bgcolor="pink">
                            Apellidos:
                        </td>
                    </tr>
                    <tr>
                        <td bgcolor="gren">
                            <xsl:value-of select="@Cial" />
                        </td>
                        <td>
                            <xsl:value-of select="alumno/nombre" />
                        </td>
                        <td>
                            <xsl:value-of select="alumno/apellidos" />
                        </td>
                    </tr>
                 </table>
            </boby>
    </xsl:template>
</xsl:stylesheet>