<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<body>
				<!--Apartado 1-->
				<table border="1">
					<tr bgcolor="red">
						<th>NUMERO DE PREGUNTA</th>
						<th>ENUNCIADO</th>
						<th>RESPUESTA CORRECTA</th>
						<th>RESPUESTA INCORRECTA 1</th>
						<th>RESPUESTA INCORRECTA 2</th>
						<th>RESPUESTA INCORRECTA 3</th>
					</tr>
					<xsl:for-each select="examen/question">
						<tr>
							<td><xsl:value-of select="@id"/></td>
							<td><xsl:value-of select="enunciado"/></td>
							<td><xsl:value-of select="choices/correcta"/></td>
							<xsl:for-each select="choices/incorrecta">
								<td><xsl:value-of select="nombre"/></td>
							</xsl:for-each>
						</tr>
					</xsl:for-each>
				</table>
				<br></br>
				<!--Apartado 2-->
				<table border="1">
					<tr bgcolor="red">
						<th>NUMERO DE PREGUNTA</th>
						<th>ENUNCIADO</th>
						<th>RESPUESTA CORRECTA</th>
						<th>RESPUESTA INCORRECTA 1</th>
						<th>AUTOR DE LA RESPUESTA INCORRECTA 1</th>
						<th>RESPUESTA INCORRECTA 2</th>
						<th>AUTOR DE LA RESPUESTA INCORRECTA 2</th>
						<th>RESPUESTA INCORRECTA 3</th>
						<th>AUTOR DE LA RESPUESTA INCORRECTA 3</th>
					</tr>
					<xsl:for-each select="examen/question">
						<tr>
							<td><xsl:value-of select="@id"/></td>
							<td><xsl:value-of select="enunciado"/></td>
							<td><xsl:value-of select="choices/correcta"/></td>
							<xsl:for-each select="choices/incorrecta">
								<td bgcolor="blue"><xsl:value-of select="nombre"/></td>
								<td bgcolor="yellow"><xsl:value-of select="autor"/></td>
							</xsl:for-each>
						</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>	
	</xsl:template>
</xsl:stylesheet>