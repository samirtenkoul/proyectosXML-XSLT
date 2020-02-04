<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="libros/libro">
		<html>
			<body>
				<b>Titulo: <xsl:value-of select="titulo"/></b>
				<br></br>
				Capitulo: <xsl:value-of select="capitulo"/>
				<br></br>
				Parrafo: <xsl:value-of select="parrafo"/>
				<br></br>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>