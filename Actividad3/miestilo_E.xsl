<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="text"/>
<xsl:template match="/">
    <xsl:for-each select="root/record">
    <xsl:sort select="date/@when" order="descending" data-type="text"/>
    <xsl:if test="date/year='1790">
        <xsl:value-of select="if"/>, <xsl:value-of select="title"/><xsl:value-of select="date"/>
    </xsl:if>
    </xsl:for-each>
</xsl:template>
</xsl:stylesheet>