<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
    Nombre y apellidos: Pablo Macías Salguero
        <ul>
            <xsl:apply-templates select="/bib/book"/>
        </ul>
    </xsl:template>
    <xsl:template match="/bib/book">
        <li>
            <xsl:value-of select="title"/> - "<xsl:value-of select="publisher"/>" (<xsl:value-of select="year"/>)
        </li>
    </xsl:template>
</xsl:stylesheet>
