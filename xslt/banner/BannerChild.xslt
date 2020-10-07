<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
	<xsl:template match="/">
		<section class="banner-about"> 
			<div class="container-fuild"> 
				<xsl:apply-templates select="/BannerList/Banner[1]"></xsl:apply-templates>
				
			</div>
		</section>
	</xsl:template>
	<xsl:template match="Banner">
		<div class="card-img"> 
			<div class="img">
				<img class=" " src="/Data/Sites/1/media/banner-contact.png">
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
				</img>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>
