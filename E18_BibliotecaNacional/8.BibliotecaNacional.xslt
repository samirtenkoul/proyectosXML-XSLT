<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="biblioteca">
		<html>
			<body>
				<!--Apartado 1-->
				<h1>Las obras de Mario Vargas Llosa</h1>
					<xsl:for-each select="libro">
						<xsl:sort select="titulo"/>
							<xsl:if test="autor='Mario Vargas Llosa'">
								<xsl:value-of select="titulo"/>
								<br></br>
								<br></br>
							</xsl:if>	
					</xsl:for-each>
				<br></br>
				<!--Apartado 2-->
				<h1>Los libros españoles en negrita son:</h1>
				<xsl:for-each select="libro/titulo">
					<xsl:if test="@idioma ='es'">
						<b><xsl:value-of select="."/></b>
						<br></br>
						<br></br>
					</xsl:if>	
				</xsl:for-each>
			</body>
		</html>	
	</xsl:template>
</xsl:stylesheet>