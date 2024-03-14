<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"/>

    <xsl:template match="/bib">
        <p>Nombre y apellidos: Pablo Macías  Salguero</p>
        <ol>
            <xsl:for-each select="libro">
                <xsl:choose>
                    <xsl:when test="precio &lt; 100">
                        <li><xsl:value-of select="titulo"/></li>
                    </xsl:when>
                </xsl:choose>
            </xsl:for-each>
        </ol>
    </xsl:template>
</xsl:stylesheet>
