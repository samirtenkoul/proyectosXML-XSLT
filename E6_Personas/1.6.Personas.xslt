<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<body>
				<h2>PERSONAS</h2>
				<table border="1">
					<tr bgcolor="blue">
						<th>Nombre</th>
						<th>Apellido</th>
						<th>Sexo</th>
					</tr>
						<xsl:for-each select="personal/persona">
						<xsl:sort select="apellido"/>	
						<tr>
							<td><xsl:value-of select="nombre"/></td>
							<td><xsl:value-of select="apellido"/></td>
							<td><xsl:value-of select="@sexo"/></td>
						</tr>				
					</xsl:for-each>
				</table>
				<br></br>
				<table border="1">
					<tr bgcolor="yellow">
						<th>Nombre</th>
						<th>Apellido</th>
					</tr>
						<xsl:for-each select="personal/profesor">
						<xsl:sort select="apellido"/>	
						<tr>
							<td><xsl:value-of select="nombre"/></td>
							<td><xsl:value-of select="modulos"/></td>
						</tr>				
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>