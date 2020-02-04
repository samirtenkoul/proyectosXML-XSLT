<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<body>
				<h2>CICLOS FORMATIVOS</h2>
				<table border="1">
					<tr>
						<th>Nombre</th>
						<th>Apellido</th>
						<th>DNI</th>
						<th>Nota</th>
						<th>Fecha Nacimiento</th>
					</tr>
					<xsl:for-each select="ciclosformativos/alumnos/alumno">
					<tr>
						<td><xsl:value-of select="nombre"/></td>
						<td><xsl:value-of select="apellido"/></td>
						<td><xsl:value-of select="dni"/></td>
						<td><xsl:value-of select="nota"/></td>
						<td><xsl:value-of select="fechanacimiento"/></td>
					</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>