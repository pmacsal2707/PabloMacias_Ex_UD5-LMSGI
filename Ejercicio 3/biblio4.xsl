<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"/>
    <xsl:template match="/bib">
        <p>Nombre y apellidos: Pablo Macías  Salguero</p>
        <table border="1">
            <tr>
                <th>Título</th>
                <th>Autor/es</th>
                <th>Esitor/es</th>
            </tr>
            <xsl:for-each select="libro">
                <xsl:sort select="titulo"/>
                <tr>
                    <td>
                        <xsl:choose>
                            <xsl:when test="precio &gt; 100">
                                <span style="color:red;"><xsl:value-of select="titulo"/> (Caro)</span>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:value-of select="titulo"/>
                            </xsl:otherwise>
                        </xsl:choose>
                    </td>
                    <td>
                        <xsl:for-each select="autor">
                            <xsl:value-of select="concat(nombe, ' ', apellido)"/>
                        </xsl:for-each>
                    </td>
                    <td>
                        <xsl:for-each select="editor">
                            <xsl:value-of select="concat(nombre, ' ', apellido, ' ', afiliacion, ' ')"/>
                        </xsl:for-each>
                    </td>
                </tr>
            </xsl:for-each>
        </table>
    </xsl:template>
</xsl:stylesheet>
