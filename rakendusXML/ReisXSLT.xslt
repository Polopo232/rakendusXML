<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" encoding="utf-8" indent="yes"/>
	<xsl:template match="/">
		<style>
			table {
			width: 100%;
			border-collapse: collapse;
			border: 1px solid black;
			font-family: Arial, sans-serif;
			margin-bottom: 30px;
			}

			th, td {
			border: 1px solid black;
			padding: 8px 12px;
			text-align: left;
			}

			th {
			background-color: beige;
			}

			tr:nth-child(even) {
			background-color: #f2f2f2;
			}
			tr:nth-child(odd) {
			background-color: #ffffff;
			}
		</style>

		<h2>Kõik reisid</h2>
		<table>
			<tr>
				<th>Riik</th>
				<th>Kestvus</th>
				<th>Transport</th>
				<th>Majutus</th>
				<th>Ekskursioonid</th>
				<th>Muud kulud</th>
				<th>Kogumaksumus</th>
				<th>Hinnang</th>
			</tr>
			<xsl:for-each select="reisid/reis">
				<tr>
					<td>
						<xsl:value-of select="suund/riik"/>
					</td>
					<td>
						<xsl:value-of select="suund/kestvus"/>
					</td>
					<td>
						<xsl:value-of select="transport"/>
					</td>
					<td>
						<xsl:value-of select="concat(majutus, ' €')"/>
					</td>
					<td>
						<xsl:value-of select="concat(ekskursioonid, ' €')"/>
					</td>
					<td>
						<xsl:value-of select="concat(muudKulud, ' €')"/>
					</td>
					<td>
						<xsl:value-of select="concat(number(majutus) + number(ekskursioonid) + number(muudKulud), ' €')"/>
					</td>
					<td>
						<xsl:value-of select="concat(hinnang, ' ⭐')"/>
					</td>
				</tr>
			</xsl:for-each>
		</table>

		<h2>Üksikasjalik nimekiri</h2>
		<xsl:for-each select="reisid/reis[transport='lennureis']">
			<xsl:sort select="hinnang" order="descending"/>
			<h1>
				<xsl:value-of select="suund/@id"/>
				<xsl:if test="suund/kestvus &gt; 7">
					<span class="long-trip" style="color: red; font-weight: bold; margin-left: 10px;"> (Pikk reis)</span>
				</xsl:if>
			</h1>
			<ul>
				<li style="background-color:yellow;">
					<xsl:value-of select="concat('Riik: ', suund/riik)"/>
				</li>
				<li style="background-color:yellow;">
					<xsl:value-of select="concat('Pikkus: ', suund/kestvus)"/>
				</li>
				<li>
					<xsl:value-of select="concat('Transport: ', transport)"/>
				</li>
				<li>
					<xsl:value-of select="concat('Hinnang: ', hinnang, ' ⭐')"/>
				</li>
				<li>
					<strong>
						<xsl:value-of select="concat('Kogumaksumus: ', number(majutus) + number(ekskursioonid) + number(muudKulud), ' €')"/>
					</strong>
				</li>
			</ul>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>