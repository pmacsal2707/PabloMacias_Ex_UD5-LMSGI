<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"/>
    <xsl:template match="/">
        <p>Nombre y apellidos: Pablo Macías  Salguero</p>
        <h1><p>IES Nuestra Sra. de los Remedios</p></h1>
        <table border="1">
            <tr>
                <th>Nombre</th>
                <th>Año</th>
            </tr>
            <xsl:for-each select="ies/ciclos/ciclo">
                <xsl:sort select="nombre"/>
                <tr>
                    <td>
                        <xsl:value-of select="nombre"/>
                    </td>
                    <td>
                        <xsl:value-of select="decretoTitulo/@año"/>
                    </td>
                </tr>
            </xsl:for-each>
        </table>
    </xsl:template>
</xsl:stylesheet>
