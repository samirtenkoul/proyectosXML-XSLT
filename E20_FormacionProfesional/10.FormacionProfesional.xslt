<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<body>
				<h1>Ciclos</h1>
				<xsl:for-each select="formacionProfesional/ciclos/ciclo">
					<xsl:value-of select="Nombre"/>
					<xsl:value-of select="familiaProfesional"/>
					<xsl:value-of select="duracion"/>
					<xsl:value-of select="grado"/>
				</xsl:for-each>
			</body>
		</html>	
	</xsl:template>
</xsl:stylesheet>