<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
	<xsl:template match="/">
		<div class="row">
			<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
			
		</div>
	</xsl:template>
	<xsl:template match="News">
		<div class="col-12 col-md-6 col-lg-4">
			<div class="item-media">
				<div class="card_img">
					<div class="img">
						<a>
							<xsl:attribute name="data-fancybox">
								<xsl:text>gallery-</xsl:text>
								<xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="href">
								<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<img>
								<xsl:attribute name="src">
									<xsl:value-of select="ImageUrl"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="alt">
									<xsl:value-of select="Title"></xsl:value-of>
								</xsl:attribute>
							</img>
						</a>
					</div>
					<xsl:if test="floor(ShowOption div 1) mod 2 = 1">
						<div class="text_media">
							<div class="text">new</div>
						</div>
					</xsl:if>
				</div>
				<div class="content-media">
					<div class="date">
						<time><xsl:value-of select="CreatedDate" disable-output-escaping="yes"></xsl:value-of></time>
					</div>
					<div class="card_title_media">
						<a class=" ">
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="target">
								<xsl:value-of select="Target"></xsl:value-of>
							</xsl:attribute>
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						</a>
						<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
					</div>
					<div class="card_title_zone_media">
						<p><xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of></p>
					</div>
					<div class="icon"><em class="material-icons">arrow_right_alt</em></div>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>
