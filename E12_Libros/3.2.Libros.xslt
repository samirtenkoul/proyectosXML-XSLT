<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<body>
				<table border="1">
					<tr>
						<th>TITULO</th>
						<th>CAPITULO</th>
						<th>PARRAFO</th>
					</tr>
					<xsl:for-each select="libros/libro">
						<tr>
							<td><xsl:value-of select="titulo"/></td>
							<td><xsl:value-of select="capitulo"/></td>
							<td><xsl:value-of select="parrafo"/></td>
						</tr>	
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>