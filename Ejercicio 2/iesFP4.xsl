<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"/>
    <xsl:template match="/">
        Nombre y apellidos: Pablo Macías  Salguero
        <xsl:text>&#xA;</xsl:text>
        <ol>
            <xsl:for-each select="ies/ciclos/ciclo">
            <xsl:sort select="nombre"/>
                <li>"<xsl:value-of select="nombre"/>" (<xsl:value-of select="grado"/>)</li>
            </xsl:for-each>
        </ol>
    </xsl:template>
</xsl:stylesheet>
