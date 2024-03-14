<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"/>
    <xsl:template match="/">
        <p>Nombre y apellidos: Pablo Macías  Salguero</p>
        <ol>
            <xsl:for-each select="bib/libro/autor">
            <xsl:sort select="apellido"/>
                <li><xsl:value-of select="apellido"/>, <xsl:value-of select="nombre"/></li>
            </xsl:for-each>
        </ol>
    </xsl:template>
</xsl:stylesheet>
