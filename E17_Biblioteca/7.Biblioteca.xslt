<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<body>
				<!--Apartado 1-->
				<table border="1">
					<tr>
						<th>NOMBRE</th>
						<th>CAPITULO</th>
						<th>PARRAFO</th>
					</tr>
					<xsl:for-each select="biblioteca/libro">
						<tr>
							<td><xsl:value-of select="nombre"/></td>
							<td><xsl:value-of select="capitulo"/></td>
							<td><xsl:value-of select="parrafo"/></td>
						</tr>
					</xsl:for-each>
				</table>
				<br></br>
				<!--Apartado 2-->
				<table border="1">
					<tr>
						<th>NOMBRE</th>
						<th>CAPITULO</th>
						<th>PARRAFO</th>
					</tr>
					<xsl:for-each select="biblioteca/libro">
						<xsl:if test="capitulo = 'Capitulo1'">
						<tr>
							<td><xsl:value-of select="nombre"/></td>
							<td><xsl:value-of select="capitulo"/></td>
							<td><xsl:value-of select="parrafo"/></td>
						</tr>
						</xsl:if>
					</xsl:for-each>
				</table>
			</body>
		</html>	
	</xsl:template>
</xsl:stylesheet>