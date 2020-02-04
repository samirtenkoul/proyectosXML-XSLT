<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<body>
				<!--Apartado 1-->
				<table border="0" >
					<tr>
						<xsl:for-each select ="ciudades/ciudad">
							<th bgcolor="yellow" style="color:red">
								<xsl:value-of select="nombre"/>
								<xsl:value-of select="habitantes"/>
							</th>
						</xsl:for-each>
					</tr>
				</table>
				<br></br>
				<br></br>
				<!--Apartado 2-->
				<table border="0">
					<tr bgcolor="yellow">
						<th><font size="6">CIUDADES DE ESPAÑA</font></th>
					</tr>
				</table>	
				<table border="0">	
					<xsl:for-each select ="ciudades/ciudad">
						<tr bgcolor="yellow">
							<th>
								<xsl:value-of select="nombre"/>
							</th>
						</tr>
						<tr></tr>
						<tr></tr>
						<tr></tr>
						<tr></tr>
					</xsl:for-each>
				</table>
				<!--Apartado 3-->
				<table border="1">
					<h4 style="color:#7093DB">CIUDADES DE ESPAÑA</h4>
					<tr bgcolor="#abdd89">
						<th>Ciudades</th>
						<th>Habitantes</th>
					</tr>
					<xsl:for-each select ="ciudades/ciudad">
						<tr>
							<td><xsl:value-of select="nombre"/></td>
							<td><xsl:value-of select="habitantes"/></td>
						</tr>
					</xsl:for-each>
				</table>
				<!--Apartado 4-->
				<table border="1">
					<h4 style="color:#7093DB">CIUDADES DE ESPAÑA</h4>
					<tr bgcolor="#abdd89">
						<th>Ciudades</th>
						<th>Habitantes</th>
					</tr>
					<xsl:for-each select ="ciudades/ciudad">
						<xsl:choose>
							<xsl:when test="habitantes &lt;'60000'">
								<tr bgcolor="#ff0000">
									<td><xsl:value-of select="nombre"/></td>
									<td><xsl:value-of select="habitantes"/></td>
								</tr>
							</xsl:when>	
							<xsl:when test="habitantes &gt;'60000'">
								<tr bgcolor="#00ff00">
									<td><xsl:value-of select="nombre"/></td>
									<td><xsl:value-of select="habitantes"/></td>
								</tr>
							</xsl:when>
						</xsl:choose>	
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>