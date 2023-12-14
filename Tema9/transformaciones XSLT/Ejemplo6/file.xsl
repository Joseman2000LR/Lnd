<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" />
    <xsl:template match="/">
        <xsl:element name="catalog">
            <xsl:for-each select="catalog/cd">
                <xsl:element name="cd">
                    <xsl:attribute name="artist">
                        <xsl:value-of select="year" />
                    </xsl:attribute>
                <xsl:value-of
                        select="title" />
                </xsl:element>
            </xsl:for-each>
        </xsl:element>
    </xsl:template>
</xsl:stylesheet>