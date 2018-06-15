<?xml version="1.0" encoding="utf-8"?><xsl:stylesheet version="2.0"	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"    xmlns="http://www.w3.org/1999/xhtml">	<!-- cc-by-nc-4.0 Matthias Müller-Prove https://mprove.de -->	<xsl:template match="collection">	    <html>			<head>				<meta http-equiv="content-type" content="text/html;charset=utf-8" />				<title>Leibniz Maps @mprove</title>				<meta name="viewport" content="width=device-width,initial-scale=1.0" />				<meta property="og:site_name" content="mprove.de" />				<meta property="og:type" content="website" />				<meta property="og:image" content="http://mprove.de/chronoscope/leibnizmaps/_media/HK0423.jpg" />				<meta name="twitter:card" content="summary_large_image" />				<meta name="twitter:site" content="mprove.de" />				<meta name="twitter:creator" content="@mprove" />				<meta name="twitter:title" content="Leibniz Maps @mprove" />				<meta name="twitter:description" content=" mprove innovation + interaction design" />				<meta name="twitter:image" content="http://mprove.de/chronoscope/leibnizmaps/_media/HK0423.jpg" />				<link href="/_style/ui.css" rel="stylesheet" media="screen" />				<link href="/_style/ui_h1meta.css" rel="stylesheet" type="text/css" media="all" />				<link href="/_style/headerspace.css" rel="stylesheet" media="screen" />				<link href="../../../../../chronoscope/_style/chronoFrame.css" rel="stylesheet" type="text/css" media="all" />				<link href="../_style/leibnizmaps_v25.css" rel="stylesheet" media="screen" />				<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js" name="jq211"></script>				<script type="text/javascript" src="/_libs.inv/mprove.js" name="mprove_js"></script>				<script type="text/javascript" src="../_script/leibnizmaps.js" name="leibnizmaps_js"></script><!--MIT LicenseCopyright (c) 2018 Matthias Müller-Prove http://mprove.de :: http://mprove.de/leibnizmapsPermission is hereby granted, free of charge, to any person obtaining a copyof this software and associated documentation files (the "Software"), to dealin the Software without restriction, including without limitation the rightsto use, copy, modify, merge, publish, distribute, sublicense, and/or sellcopies of the Software, and to permit persons to whom the Software isfurnished to do so, subject to the following conditions:The above copyright notice and this permission notice shall be included in allcopies or substantial portions of the Software.THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS ORIMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THEAUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHERLIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THESOFTWARE.-->			</head>			<body>				<iframe id="chronoFrame" src="https://mprove.de/chronohh?u=2&amp;o=1&amp;w=1&amp;q=51.33254,12.36823&amp;t=22&amp;s=0&amp;z=2.5&amp;d=1" frameborder="0" width="100%" height="500vh"></iframe>				<div class="chronoSub" id="top">					<nav id="menubar">						<input type="search" id="inputFilter" onkeyup="filterTable()" onsearch="filterTable()" placeholder="Kartenfilter" />						<span id="spanNumberRows">1127</span> Karten gefunden von insgesamt 1127 Karten bei <a href="../index.html">Leibniz Maps</a>					</nav>					<div class="article">						<div class="header">							<h1>Leibniz Maps</h1>							<p><a href="../index.html">XML-MetaDaten des Leibniz-Instituts für Länderkunde e.V. unter CC0</a> :: <a href="/index.html">mprove design 2018</a></p>						</div>						<p>Nutzen Sie unten die Filter-Funktion oder die Such-Funktionen des Browsers, um die Landkarten zu entdecken. <br />						Die heutige Lage der Karten kann oben im <em>Chronoscope World</em> angezeigt werden. <br />						Die Zoom-Funktion für die Karte (&#128506;)zeigt immer auf den selben Tab. Man kann den Tab also auch auf einen 2. Monitor verschieben, um dort die hochaufgelösten Scans anzuzeigen. Alt-Click auf den Karten-Button öffnet immer einen neuen Tab.</p>						<table id="leibniztable" class="stripes1">						<tr>							<th>ID</th>							<th>Region</th>							<th>Titel &amp; Quelle</th>							<th>Beschreibung</th>							<th>Lage &amp; Karte</th>						</tr>							<xsl:variable name="chMin">'</xsl:variable>						<xsl:variable name="chSec">"</xsl:variable>						<xsl:variable name="chSlash">/</xsl:variable>						<xsl:for-each select="record"><!--						<xsl:sort select="datafield[@tag='852']/subfield[@code='m']" order="asscending"/>		-->	<!-- by ID -->							<!-- sort by decade -->							<xsl:sort select="substring(translate(datafield[@tag='260'],' ?][',''), (string-length(translate(datafield[@tag='260'],' ?][','')) - 4), 3)"/>														<!-- TR -->							<xsl:element name="tr">								<xsl:attribute name="id">									<xsl:value-of select="translate(datafield[@tag='852']/subfield[@code='m'],' /','')"/>		<!-- ID : remove space and slash -->								</xsl:attribute>								<!-- TR content -->								<!-- ID with anchor --><!--							<td><xsl:value-of select="datafield[@tag='852']/subfield[@code='m']"/></td>		-->								<td><xsl:element name="a">										<xsl:attribute name="href">#<xsl:value-of select="translate(datafield[@tag='852']/subfield[@code='m'],' /','')"/>		<!-- link: remove space and slash -->										</xsl:attribute>#<xsl:value-of select="datafield[@tag='852']/subfield[@code='m']"/>									</xsl:element>								</td>									<!-- Region -->								<td><xsl:value-of select="datafield[@tag='651']"/> - <xsl:value-of select="datafield[@tag='651'][2]"/> - <xsl:value-of select="datafield[@tag='651'][3]"/><!-- <br /><xsl:value-of select="substring(translate(datafield[@tag='260'],' ?][',''), (string-length(translate(datafield[@tag='260'],' ?][','')) - 4), 4)" />--><!--									<br />									<xsl:call-template name="getYearSearch">				                        <xsl:with-param name="input" select="datafield[@tag='260']"/>				                    </xsl:call-template>-->								</td>									<!-- Title + Link to online catalogue -->								<td>									<xsl:if test="datafield[@tag='520']">										<strong><xsl:value-of select="datafield[@tag='520']"/></strong>										<br />									</xsl:if>									<xsl:value-of select="datafield[@tag='245']"/>									<br />									<xsl:element name="a">										<xsl:attribute name="href">											<xsl:value-of select="datafield[@tag='856']/subfield[@code='a']"/>										</xsl:attribute>										<xsl:attribute name="target">											<xsl:text>_blank</xsl:text>										</xsl:attribute>										<xsl:value-of select="datafield[@tag='260']"/>									</xsl:element>								</td>									<!-- Description 520, 500 -->								<td>									<xsl:value-of select="datafield[@tag='500']"/>								</td>									<!-- Quelle --><!--							<td><xsl:value-of select="datafield[@tag='260']"/></td>  -->									<!-- Coordinaten -->	<!--						<td><xsl:value-of select="datafield[@tag='225']/subfield[@code='c']"/></td>		-->								<td>									<div class="buttons">										<!-- Chronoscope Button -->										<xsl:if test="datafield[@tag='225']/subfield[@code='c']">											<xsl:variable name="mapID" select="translate(datafield[@tag='852']/subfield[@code='m'],$chSlash,'-')"/> <!-- '/' -> '-' -->																						<xsl:variable name="strBox" select="translate(datafield[@tag='225']/subfield[@code='c'],$chMin,'_')"/>											<xsl:variable name="strCleanBox" select="translate($strBox,$chSec,'_')"/>												<!-- https://stackoverflow.com/questions/3165556/xslt-conditions-variable-scope -->											<xsl:variable name="d500"><xsl:value-of select="datafield[@tag='500']"/></xsl:variable>											<xsl:variable name="strRot">												<xsl:choose>													<xsl:when test="contains($d500,'NNE oben')">/22.5</xsl:when>													<xsl:when test="contains($d500,'NO oben')">/45</xsl:when>													<xsl:when test="contains($d500,'NE oben')">/45</xsl:when>													<xsl:when test="contains($d500,'SE oben')">/135</xsl:when>													<xsl:when test="contains($d500,'SO oben')">/135</xsl:when>													<xsl:when test="contains($d500,'O oben')">/90</xsl:when>													<xsl:when test="contains($d500,'E oben')">/90</xsl:when>													<xsl:when test="contains($d500,'S oben')">/180</xsl:when>													<xsl:when test="contains($d500,'SW oben')">/225</xsl:when>													<xsl:when test="contains($d500,'WNW oben')">/292.5</xsl:when>													<xsl:when test="contains($d500,'NNW oben')">/337.5</xsl:when>													<xsl:when test="contains($d500,'NW oben')">/315</xsl:when>													<xsl:when test="contains($d500,'W oben')">/270</xsl:when>												</xsl:choose>											</xsl:variable>																						<xsl:variable name="onClickCodeNoParamsHead">document.getElementById('chronoFrame').contentWindow.postMessage('?bb=</xsl:variable>											<xsl:variable name="onClickParams" select="concat($mapID, '/', $strCleanBox, $strRot)"/>											<xsl:variable name="onClickCodeNoParamsTail">','https://mprove.de/');</xsl:variable>											<xsl:variable name="onClickCode" select="concat($onClickCodeNoParamsHead, $onClickParams, $onClickCodeNoParamsTail)"/>												<xsl:element name="a">												<xsl:attribute name="class">btn</xsl:attribute>												<xsl:attribute name="href">javascript:void(0);</xsl:attribute>												<xsl:attribute name="onclick">													<xsl:value-of select="$onClickCode"/>												</xsl:attribute>												<xsl:attribute name="bbox">													<xsl:value-of select="$onClickParams"/>												</xsl:attribute>												<xsl:attribute name="title">													<xsl:text>Vorschau und Lage im Chronoscope anzeigen</xsl:text>												</xsl:attribute>												Ansicht											</xsl:element>										</xsl:if>											<!-- Map Button -->										<xsl:if test="datafield[@tag='856'][2]/subfield[@code='a']">											<xsl:element name="a">												<xsl:attribute name="class">btn</xsl:attribute>												<xsl:attribute name="href">													<xsl:value-of select="datafield[@tag='856'][2]/subfield[@code='a']"/>												</xsl:attribute>												<xsl:attribute name="target">													<xsl:text>scan</xsl:text>												</xsl:attribute>												<xsl:attribute name="title">													<xsl:text>Karte in höchster Auflösung anzeigen (10MB)</xsl:text>												</xsl:attribute>												&#128506;											</xsl:element>										</xsl:if>									</div>									<!-- Coordinates text -->									<span class="sans11">										<xsl:if test="datafield[@tag='225']/subfield[@code='c']">																					<br /><xsl:value-of select="datafield[@tag='225']/subfield[@code='c']"/>										</xsl:if>									</span>								</td><!--								<td><xsl:call-template name="getYearSearch"><xsl:with-param name="input" select="datafield[@tag='260']"/></xsl:call-template></td>-->								</xsl:element> <!-- TR -->											</xsl:for-each>												<tr>							<th>ID</th>							<th>Region</th>							<th>Titel &amp; Quelle</th>							<th>Beschreibung</th>							<th>Lage &amp; Karte</th>						</tr>					    </table>						<p><br /></p>					</div>				</div>		    </body>	    </html>	</xsl:template>    <xsl:template name="getYear">        <xsl:param name="input"/>        <xsl:variable name="len" select="string-length($input)"/><!-- <xsl:value-of select="substring($input, ($len - 5))"/> -->		<xsl:choose>			<xsl:when test="substring($input, ($len - 5),1) = ']'">				<xsl:value-of select="substring($input, ($len - 9), 4)"/>			</xsl:when>			<xsl:when test="substring($input, ($len - 5),1) &gt;= '0' and substring($input, ($len - 5),1) &lt;= '9'">				<xsl:value-of select="substring($input, ($len - 8), 4)"/>			</xsl:when>			<xsl:otherwise />		</xsl:choose>	</xsl:template>    <xsl:template name="getYearMatch">        <xsl:param name="input"/>        <xsl:variable name="regexYear">([0-9]{{4}})</xsl:variable>		<xsl:value-of select="index-of-match-first($input, $regexYear)"/>	</xsl:template>    <xsl:template name="getYearSearch">        <xsl:param name="input"/>		<xsl:value-of select="substring(translate($input,' ?][',''), (string-length(translate($input,' ?][','')) - 4), 4)"/>	</xsl:template></xsl:stylesheet>								