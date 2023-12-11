<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" />
    <xsl:template match="/">
        <html> <!--nuestro nuevo elemento raíz es la etiqueta ciales -->
            <xsl:apply-templates select="/Category/Feed/item" />
        </html>
    </xsl:template>
    <xsl:template match="item">
        
            <head><title>Ejercici010</title>
            </head>
            <boby>
                <table border="1" width="70%">
                    <tr>
                        <td><xsl:value-of select="title"/></td>
                    </tr>
                 </table>
                 <br/>
            </boby>
        
        
    </xsl:template>
</xsl:stylesheet>