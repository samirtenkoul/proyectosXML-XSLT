<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<body>
				<!--Todas las tiendas-->
				<h2>TODAS LAS TIENDAS</h2>
				<table border="1">
					<tr bgcolor="yellow">
						<th>NOMBRE</th>
						<th>DIRECCION</th>
						<th>PRECIOS</th>
					</tr>
					<xsl:for-each select="Tiendas/tienda">
						<tr>
							<td><xsl:value-of select="Nombre"/></td>
							<td><xsl:value-of select="direccion"/></td>
							<td><xsl:value-of select="precios"/></td>
						</tr>
					</xsl:for-each>
				</table>
				<!--MOSTRANDO SOLO LAS DOS PRIMERAS TIENDAS-->
				<h2>MOSTRANDO SOLO LAS DOS PRIMERAS TIENDAS</h2>
				<table border="1">
					<tr bgcolor="green">
						<th>NOMBRE</th>
						<th>DIRECCION</th>
						<th>PRECIOS</th>
					</tr>
					<xsl:for-each select="Tiendas/tienda">
						<xsl:if test ="position()&lt;3">
							<tr>
								<td><xsl:value-of select="Nombre"/></td>
								<td><xsl:value-of select="direccion"/></td>
								<td><xsl:value-of select="precios"/></td>
							</tr>
						</xsl:if>
					</xsl:for-each>
				</table>
				<!--MOSTRANDO SOLO LAS TRES ULTIMAS TIENDAS-->
				<h2>MOSTRANDO SOLO LAS TRES ULTIMAS TIENDAS</h2>
				<table border="1">
					<tr bgcolor="blue">
						<th>NOMBRE</th>
						<th>DIRECCION</th>
						<th>PRECIOS</th>
					</tr>
					<xsl:for-each select="Tiendas/tienda">
						<xsl:if test ="position()&gt;2">
							<tr>
								<td><xsl:value-of select="Nombre"/></td>
								<td><xsl:value-of select="direccion"/></td>
								<td><xsl:value-of select="precios"/></td>
							</tr>
						</xsl:if>
					</xsl:for-each>
				</table>
				<!--TIENDAS EN POSICIONES IMPARES-->
				<h2>TIENDAS EN POSICIONES IMPARES</h2>
				<table border="1">
					<tr bgcolor="red">
						<th>NOMBRE</th>
						<th>DIRECCION</th>
						<th>PRECIOS</th>
					</tr>
					<xsl:for-each select="Tiendas/tienda">
						<xsl:if test ="position()mod 2 != 0">
							<tr>
								<td><xsl:value-of select="Nombre"/></td>
								<td><xsl:value-of select="direccion"/></td>
								<td><xsl:value-of select="precios"/></td>
							</tr>
						</xsl:if>
					</xsl:for-each>
				</table>
				<!--TIENDAS EN POSICIONES PARES-->
				<h2>TIENDAS EN POSICIONES PARES</h2>
				<table border="1">
					<tr bgcolor="yellow">
						<th>NOMBRE</th>
						<th>DIRECCION</th>
						<th>PRECIOS</th>
					</tr>
					<xsl:for-each select="Tiendas/tienda">
						<xsl:if test ="position()mod 2 = 0">
							<tr>
								<td><xsl:value-of select="Nombre"/></td>
								<td><xsl:value-of select="direccion"/></td>
								<td><xsl:value-of select="precios"/></td>
							</tr>
						</xsl:if>
					</xsl:for-each>
				</table>
				<!--TIENDAS QUE TIENEN EN SU NOMBRE LA SUBCADENA "in"-->
				<h2>TIENDAS QUE TIENEN EN SU NOMBRE LA SUBCADENA "in"</h2>
				<table border="1">
					<tr bgcolor="yellow">
						<th>NOMBRE</th>
						<th>DIRECCION</th>
						<th>PRECIOS</th>
					</tr>
					<xsl:for-each select="Tiendas/tienda">
						<xsl:if test = "contains (Nombre,'in')">
							<tr>
								<td><xsl:value-of select="Nombre"/></td>
								<td><xsl:value-of select="direccion"/></td>
								<td><xsl:value-of select="precios"/></td>
							</tr>
						</xsl:if>
					</xsl:for-each>
				</table>
				<!--NUMERO DE CARACTERES DE LOS DATOS DE LA TIENDA-->
				<h2>NUMERO DE CARACTERES DE LOS DATOS DE LA TIENDA</h2>
				<table border="1">
					<tr bgcolor="yellow">
						<th>NOMBRE</th>
						<th>DIRECCION</th>
						<th>PRECIOS</th>
					</tr>
					<xsl:for-each select="Tiendas/tienda">
						<tr>
							<td><xsl:value-of select="string-length(Nombre)"/></td>
							<td><xsl:value-of select="string-length(direccion)"/></td>
							<td><xsl:value-of select="string-length(precios)"/></td>
						</tr>
					</xsl:for-each>
				</table>
				<br></br>
				<b>Numero total de tiendas de ropa: <xsl:value-of select="count (Tiendas/tienda)"/></b>
				<br></br>
				<!--NUMERO DE CARACTERES DE LOS DATOS DE LA TIENDA-->
				<h2>NUMERO DE CARACTERES DE LOS DATOS DE LA TIENDA</h2>
				<table border="1">
					<tr bgcolor="yellow">
						<th>NOMBRE</th>
						<th>DIRECCION</th>
						<th>PRECIOS</th>
					</tr>
					<xsl:for-each select="Tiendas/tienda">
						<tr>
							<td><xsl:value-of select="concat('Las posiciones de la 2 a la 4 son :',substring(Nombre,2,4))"/></td>
							<td><xsl:value-of select="concat('Las posiciones de la 2 a la 4 son :',substring(direccion,2,4))"/></td>
							<td><xsl:value-of select="concat('Las posiciones de la 2 a la 4 son :',substring(precios,2,4))"/></td>
						</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>