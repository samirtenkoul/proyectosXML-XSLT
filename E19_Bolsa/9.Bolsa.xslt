<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/Bolsa">
		<html>
			<body>
				<p style="color:blue; font-size:16pt"><b>La bolsa el <xsl:value-of select="@dia"/> a las <xsl:value-of select="@hora"/></b></p>
				<table border="1">
					<tr bgcolor="lightblue">
						<th>Símbolo</th>
						<th>Nombre</th>
						<th>Precio</th>
					</tr>
					<xsl:for-each select="Empresa">
						<xsl:sort select="Precio" order="descending"/>
						<tr bgcolor="lightyellow">
							<td><xsl:value-of select="Simbolo"/></td>
							<xsl:choose>	
								<xsl:when test="@indice='general'">
									<td><xsl:value-of select="Nombre"/>(*)</td>
								</xsl:when>	
								<xsl:otherwise>
									<td><xsl:value-of select="Nombre"/></td>
								</xsl:otherwise>
							</xsl:choose>
							<td>
								<xsl:choose>
									<xsl:when test="Precio &lt;'25'">
										<p style="color:red"><xsl:value-of select="Precio"/></p>
									</xsl:when>
									<xsl:when test="Precio &gt;'75'">
										<p style="color:blue"><xsl:value-of select="Precio"/></p>
									</xsl:when>
									<xsl:otherwise>
										<xsl:value-of select="Precio"/>
									</xsl:otherwise>
								</xsl:choose>
							</td>
						</tr>
					</xsl:for-each>
				</table>
				<p style="color:red;font-size:14pt">(*)Estas empresas son del indice general</p>
			</body>
		</html>	
	</xsl:template>
</xsl:stylesheet>