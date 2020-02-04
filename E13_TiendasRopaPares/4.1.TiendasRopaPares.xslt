<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<body>
				<h2>MOSTRANDO SOLO LAS TIENDAS CON PRECIOS PARES</h2>
				<table border="1">
					<tr bgcolor="blue">
						<th>NOMBRE</th>
						<th>DIRECCION</th>
						<th>PRECIOS</th>
					</tr>
					<xsl:for-each select="Tiendas/tienda">
						<xsl:if test ="precios mod 2 = 0">
							<tr>
								<td><xsl:value-of select="Nombre"/></td>
								<td><xsl:value-of select="direccion"/></td>
								<td><xsl:value-of select="precios"/></td>
							</tr>
						</xsl:if>
					</xsl:for-each>
				</table>
				<h2>MOSTRANDO SOLO LAS TIENDAS CON PRECIOS IMPARES</h2>
				<table border="1">
					<tr bgcolor="blue">
						<th>NOMBRE</th>
						<th>DIRECCION</th>
						<th>PRECIOS</th>
					</tr>
					<xsl:for-each select="Tiendas/tienda">
						<xsl:if test ="precios mod 2 != 0">
							<tr>
								<td><xsl:value-of select="Nombre"/></td>
								<td><xsl:value-of select="direccion"/></td>
								<td><xsl:value-of select="precios"/></td>
							</tr>
						</xsl:if>
					</xsl:for-each>
				</table>	
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>