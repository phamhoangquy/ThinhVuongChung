<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
	<xsl:template match="/">
		<section class="block_develope">
			<div class="container">
				<xsl:apply-templates select="/ZoneList/Zone[1]/News" mode="Zone1-News"></xsl:apply-templates>
				
			</div>
		</section>
		<section class="block_develope-2">
			<div class="container">
				<div class="head-title">
					<h1><xsl:value-of select="/ZoneList/Zone[2]/Title" disable-output-escaping="yes"></xsl:value-of></h1>
				</div>
				<div class="row">
					<xsl:apply-templates select="/ZoneList/Zone[2]/News" mode="Zone2-News"></xsl:apply-templates>
				</div>
			</div>
		</section>
		<section class="block_develope-slide">
			<div class="container">
				<div class="head-title">
					<h1><xsl:value-of select="/ZoneList/Zone[3]/Title" disable-output-escaping="yes"></xsl:value-of></h1>
				</div>
				<div class="row">
					<div class="col-lg-6"></div>
					<div class="col-lg-6">
						<div class="development-swiper-wrapper">
							<div class="nav-arrow-prev"><em class="ri-arrow-left-circle-line"></em></div>
							<div class="nav-arrow-next"><em class="ri-arrow-right-circle-line"></em></div>
						</div>
						<div class="swiper-container">
							<div class="swiper-wrapper">
								<xsl:apply-templates select="/ZoneList/Zone[3]/News" mode="Zone3-News"></xsl:apply-templates>
								
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="News" mode="Zone1-News">
		<div class="row">
			<div class="col-12 col-md-6 col-lg-6">
				<div class="card_img">
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
				</div>
			</div>
			<div class="col-12 col-md-6 col-lg-6">
				<div class="develope">
					<div class="title-develope">
						<h2><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of><xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of></h2>
					</div>
					<div class="text-develope">
						<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
					</div>
					<div class="btn-view-more">
						<a href="">
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="target">
								<xsl:value-of select="Target"></xsl:value-of>
							</xsl:attribute>
							<xsl:text disable-output-escaping="yes">Xem thêm</xsl:text>
							<span class="ri-arrow-right-circle-line"></span>
						</a>
					</div>
				</div>
			</div>
		</div>	
	</xsl:template>
	<xsl:template match="News" mode="Zone2-News">
		<div class="col-12 col-md-6 col-lg-4">
			<div class="card_img">
				<div class="img">
					<a>
						<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
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
			</div>
			<div class="content-deve">
				<div class="title-deve">
					<h3>
						<a>
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
							<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
						</a>
					</h3>
				</div>
				<div class="item-develope">
					<div class="date">
						<time><xsl:value-of select="CreatedDD" disable-output-escaping="yes"></xsl:value-of>.<xsl:value-of select="CreatedMM" disable-output-escaping="yes"></xsl:value-of>.<xsl:value-of select="CreatedYYYY" disable-output-escaping="yes"></xsl:value-of></time>
					</div>
					<div class="btn-view">
						<a class="">
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="target">
								<xsl:value-of select="Target"></xsl:value-of>
							</xsl:attribute>
							<xsl:text disable-output-escaping="yes">Xem thêm</xsl:text>
							<span class="ri-arrow-right-circle-line"></span>
						</a>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News" mode="Zone3-News">
		<div class="swiper-slide">
			<div class="wrapper">
				<div class="card_img"> 
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
				</div>
			</div>
			<div class="caption"> 
				<p><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of><xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of></p>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>
