<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" />
    <xsl:template match="/">
        <!-- Todo lo que no lleve el prefijo xsl será copiado en la salida-->
        <html>
            <head>
                <title>Alumnos del instituto</title>
            </head>
            <body>
                <h1>LISTA DE ALUMNOS:</h1>
                <ul>
                    <xsl:apply-templates select="/instituto/curso[@nombre='2º ASIR']"/>
                </ul>
            </body>
        </html>
    </xsl:template>
    <xsl:template
        match="alumno">
        <li> Nombre: <b>
                <xsl:value-of select="./nombre" />
            </b>
                <br />Apellidos: <xsl:value-of
                select="./apellidos" />
                <br />CIAL: <xsl:value-of select="@cial" />
                <hr
                noshade="noshade" />
        </li>
    </xsl:template>
</xsl:stylesheet>