<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" />
    <xsl:template match="/">
        <cartas> <!--nuestro nuevo elemento raíz es la etiqueta raiz -->
            <xsl:apply-templates
                select="/instituto/curso/alumno[apellidos[contains(text(),'Pèrez']]" />
        select="/instituto/curso/alumno[apellidos[contains(text(),'Pèrez']]" /> </cartas>
    </xsl:template>
    <xsl:template match="alumno">
      <invitacion>
        <destinatario><xsl:value-of select="nombre"/> <xsl:text>-</xsl:text>
        <xsl:value-of select="apellidos" />
        </destinatario>
        <evento><xsl:text>Congreso de los perez</xsl:text></evento>
        <curso><xsl:value-of select="./@nombre"></xsl:value-of></curso>
    </invitacion>
    </xsl:template>
</xsl:stylesheet>
