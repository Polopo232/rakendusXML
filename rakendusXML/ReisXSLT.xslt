<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="/">

		<h2>Üksikasjalik nimekiri</h2>

		<xsl:for-each select="reisid/reis/suund">

			<h1><xsl:value-of select="@id"/></h1>

			<ul>
				<li style="background-color:yellow;"><xsl:value-of select="concat('Nimetus: ',Nimetus)"/></li>
				<li style="background-color:yellow;"><xsl:value-of select="concat('Riik: ',Riik)"/></li>
				<li style="background-color:yellow;"><xsl:value-of select="concat('Pikkus: ',Pikkus)"/></li>
			</ul>
		</xsl:for-each>
		
		
    </xsl:template>
</xsl:stylesheet>
