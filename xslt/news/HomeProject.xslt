<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>

	<xsl:template match="/">
		<section class="block_project">
			<!-- <xsl:attribute name="setBackground">
				<xsl:value-of select="ImageUrl" disable-output-escaping="yes"></xsl:value-of>
			</xsl:attribute> -->
			<div class="container">
				<div class="block-title" data-aos="fade-left">
					<h2><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></h2>
				</div>
				<div class="text-project" data-aos="fade-left">
					<xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of>
				</div>
				<div class="home-project-swiper-wrapper">
					<div class="nav-arrow-prev"><em class="ri-arrow-left-circle-line"></em></div>
					<div class="nav-arrow-next"><em class="ri-arrow-right-circle-line"></em></div>
					<div class="swiper-container slide-project-home">
						<div class="swiper-wrapper">
							<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
						</div>
						<div class="btn-view-more">
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
								<xsl:text disable-output-escaping="yes">Xem tất cả</xsl:text>
							</a>
						</div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="News">
		<div class="swiper-slide" data-aos="fade-up">
			<div class="card-body">
				<div class="img">
					<img class=" ">
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
					</img>
				</div>
				<div class="caption-project-slide">
					<div class="text"><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></div>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>