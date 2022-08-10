﻿<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
				xmlns:msxsl="urn:schemas-microsoft-com:xslt"
				xmlns:websoft="http://www.websoft.ru"
				version="1.0">
<!--
'*	media_001_flash#.xsl
'*	Copyright (c) Websoft, 2006.  All rights reserved.
-->
<xsl:output method="xml" encoding="utf-8" omit-xml-declaration="yes"/>
<xsl:param name="imagesFolder"></xsl:param>
<xsl:param name="objectID"></xsl:param>
<!--		 Template: Root    -->
<xsl:template match="/"><xsl:apply-templates select="params"/></xsl:template>
<!-- Template: Params -->
<xsl:template match="params">
	<table width="100%" height="100%" border="0" cellpadding="10" cellspacing="0">
		<tr>
			<td width="100%" align="center" valign="middle" bgcolor="EEEEEE">
				<img width="72" height="54" vspace="5">
					<xsl:attribute name="src">
						<xsl:value-of select="$imagesFolder"/>media_001_flash.gif
					</xsl:attribute>
				</img>
				<div style="font-family: Verdana, Arial, sans-serif; font-size:10px;text-align:center; padding-top:12px">
					<xsl:if test="ffile='yes'"><xsl:value-of select="hidden.label.file" /> &#160; <xsl:value-of select="flash_uri" /></xsl:if>
					<xsl:if test="fURL='yes'"><xsl:value-of select="hidden.label.url" /> &#160; <xsl:value-of select="flash_url" /></xsl:if>
					<xsl:if test="fcode='yes'"><xsl:value-of select="hidden.label.code" /> &#160; <xsl:value-of select="flash_code" /></xsl:if>
				</div>
			</td>
		</tr>
	</table>
</xsl:template>
</xsl:stylesheet>
