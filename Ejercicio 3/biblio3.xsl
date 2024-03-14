<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"/>

    <xsl:template match="/bib">
        <p>Nombre y apellidos: Pablo Macías  Salguero</p>
        <table border="1">
            <tr>
                <th>Precio del libro</th>
                <th>Título del libro</th>
                <th>Año de publicación</th>
            </tr>
            <xsl:for-each select="libro">
                <xsl:sort select="precio" data-type="text"/>
                <tr>
                    <td>
                        <xsl:value-of select="precio"/>
                    </td>
                    <td>
                        <xsl:choose>
                            <xsl:when test="precio &gt; 100">
                                <span style="background-color:red;"><xsl:value-of select="titulo"/></span>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:value-of select="titulo"/>
                            </xsl:otherwise>
                        </xsl:choose>
                    </td>
                    <td>
                        <i><xsl:value-of select="@año"/></i>
                    </td>
                </tr>
            </xsl:for-each>
        </table>
    </xsl:template>
</xsl:stylesheet>
