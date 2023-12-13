<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" />
    <xsl:template match="/">
        <catalog>
            <xsl:for-each select="catalog/book">
                <book id="{@id}">
                    <details author="{author}" date_of_publish="{publish_date}">
                        <title>
                            <xsl:value-of select="title" />
                        </title>
                        <genre>
                            <xsl:value-of select="genre" />
                        </genre>
                        <price>
                            <xsl:value-of select="price" />
                        </price>
                        <description>
                            <xsl:value-of select="description" />
                        </description>
                    </details>
                </book>
            </xsl:for-each>
        </catalog>
    </xsl:template>
</xsl:stylesheet>