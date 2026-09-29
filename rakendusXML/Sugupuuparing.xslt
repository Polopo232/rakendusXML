<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="html" indent="yes"/>

	<xsl:template match="/">
		<strong>Kõik sugupuu nimed</strong>
		<ul>
			<xsl:for-each select="//inimene">
				<li>
					<xsl:value-of select="nimi"/>
					<xsl:value-of select="@synd"/>
					<xsl:value-of select="concat(nimi, 'sünniaasta: ', @synd)"/>
					. Vanus
					<xsl:value-of select="2026-@synd"/> Aastat vana
				</li>
			</xsl:for-each>
		</ul>
		<ol>
			<li>
				Täht kõikidest nimedest:
				<xsl:for-each select="//inimene">
					<xsl:value-of select="substring(nimi, 1, 1)"/>
				</xsl:for-each>
			</li>

			<li>
				Näita nimed ja tähtede kogused:
				<xsl:for-each select="//inimene">
					<xsl:value-of select="concat(nimi, ': ', string-length(nimi), ' tähte')"/>
				</xsl:for-each>
			</li>
		</ol>

		<table style="width:100%">
			<tr>
				<th>Nimi</th>
				<th>Aasta</th>
				<th>Vanus</th>
				<th>Täht</th>
				<th>Vimane täht</th>
			</tr>
			
			<xsl:for-each select="//inimene">
			<tr>
				<td>
					<xsl:value-of select="nimi"/>
				</td>
				<td>
					<xsl:value-of select="@synd"/>
				</td>
				<td>
					<xsl:value-of select="2026-@synd"/>
				</td>
				<td>
					<xsl:value-of select="substring(nimi, 1, 1)"/>
				</td>
				<td>
					<xsl:value-of select="substring(nimi, string-length(nimi), 1)"/>
				</td>
				
			</tr>
			</xsl:for-each>
		</table>
	</xsl:template>

</xsl:stylesheet>