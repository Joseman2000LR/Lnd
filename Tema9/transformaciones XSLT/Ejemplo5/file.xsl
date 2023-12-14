<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" />
    <xsl:template match="/">
        <catalog>
            <xsl:for-each select="CATALOG/PLANT">
                <xsl:element name="{COMMON}">
                    <botanical>
                        <xsl:value-of select="BOTANICAL" />
                    </botanical>
                <zone>
                        <xsl:value-of select="ZONE" />
                    </zone>
                <price>
                        <xsl:value-of select="PRICE" />
                    </price>
                </xsl:element>
            </xsl:for-each>
        </catalog>
    </xsl:template>
</xsl:stylesheet>