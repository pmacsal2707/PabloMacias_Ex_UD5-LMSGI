<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="text"/>
    <xsl:template match="/">
                    Nombre y apellidos: Pablo Macías Salguero
                    <xsl:text>&#xA;</xsl:text>
            <xsl:for-each select="ies/ciclos/ciclo"> 
                    "<xsl:value-of select="nombre"/>"
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>