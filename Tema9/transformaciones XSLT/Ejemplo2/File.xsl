<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" />
    <xsl:template match="/">
        <message>
            <xsl:attribute name="to">
                <xsl:value-of select="note/to" />
            </xsl:attribute>
        <xsl:attribute
                name="from">
                <xsl:value-of select="note/from" />
            </xsl:attribute>
        <xsl:attribute
                name="name">
                <xsl:value-of select="note/heading" />
            </xsl:attribute>
        <xsl:value-of
                select="note/body" />
        </message>
    </xsl:template>
</xsl:stylesheet>