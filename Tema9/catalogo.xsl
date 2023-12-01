<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/"> 
    <html>
        <head>

        </head>
        <body>
            <h2>Mis cds</h2>
            <table >
                <tr><th>Artita</th><th>Titulo</th></tr>
                <xsl:for-each select="//cd">
                <tr>
                    <td>
                        <xsl:value-of select="titulo" />
                        </td>
                    <td>
                        <xsl:value-of select="artista" />
                    </td>
                </tr>
                </xsl:for-each>
            </table>
        </body>
    </html>
    </xsl:template>
</xsl:transform>