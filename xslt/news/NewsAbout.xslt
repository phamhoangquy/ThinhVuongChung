<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
	<xsl:template match="/">
		<section class="block_about" id="section-about-1">
			<div class="container">
				<div class="head-menu">
					<ul class="link-to-about-section">
						<xsl:apply-templates select="/ZoneList/Zone" mode="Zone-Nav"></xsl:apply-templates>
					</ul>
				</div>
				<xsl:apply-templates select="/ZoneList/Zone[1]/News[1]" mode="Zone1-News1"></xsl:apply-templates>
				
			</div>
			<div class="block_about_icon">
				<div class="container">
					<div class="row">
						<xsl:apply-templates select="/ZoneList/Zone[1]/News" mode="Zone1-News2"></xsl:apply-templates>
					</div>
				</div>
			</div>
		</section>
		<section class="about3_history" id="about3_history">
			<div class="container">
				
				<div class="card_history">
					<h3><xsl:value-of select="/ZoneList/Zone[2]/Title" disable-output-escaping="yes"></xsl:value-of></h3>
				</div>
				<div class="swiper-container gallery-thumbs">
					<div class="swiper-wrapper">
						<xsl:apply-templates select="/ZoneList/Zone[2]/News" mode="Zone2-News-Title"></xsl:apply-templates>
						
						
					</div>
				</div>
				<div class="swiper-container gallery-top">
					<div class="swiper-wrapper">
						<xsl:apply-templates select="/ZoneList/Zone[2]/News" mode="Zone2-News-Content"></xsl:apply-templates>
						
					</div>
				</div>
			</div>
		</section>
		<section class="block_about-2" id="section-about-2">
			<div class="container">
				<div class="row">
					<div class="col-12 col-md-6 col-lg-6">
						<div class="about-2">
							<div class="head-title">
								<h2><xsl:value-of select="/ZoneList/Zone[3]/Title" disable-output-escaping="yes"></xsl:value-of></h2>
							</div>
							<div class="content-about-2">
								<ul>
									<xsl:apply-templates select="/ZoneList/Zone[3]/News" mode="Zone3-News"></xsl:apply-templates>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-12 col-md-6 col-lg-6">
						<div class="card_img">
							<xsl:apply-templates select="/ZoneList/Zone[3]" mode="Zone3"></xsl:apply-templates>
							
						</div>
					</div>
				</div>
			</div>
		</section>
		<section class="block_about-3" id="section-about-3">
			<div class="container">
				<div class="head-title">
					<h2><xsl:value-of select="/ZoneList/Zone[4]/Title" disable-output-escaping="yes"></xsl:value-of></h2>
				</div>
				<div class="row">
					<xsl:apply-templates select="/ZoneList/Zone[4]/News" mode="Zone4-News"></xsl:apply-templates>
					
				</div>
			</div>
		</section>
		<section class="block_about-4" id="section-about-4">
			<div class="container">
				<div class="head-title">
					<h2><xsl:value-of select="/ZoneList/Zone[5]/Title" disable-output-escaping="yes"></xsl:value-of></h2>
				</div>
				<div class="row">
					<div class="col-lg-10">
						<xsl:apply-templates select="/ZoneList/Zone[5]" mode="Zone5"></xsl:apply-templates>
						
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="Zone" mode="Zone-Nav">
		<li> 
			<a>
				<xsl:attribute name="href">
					<xsl:text disable-output-escaping="yes">#section-about-</xsl:text>
					<xsl:value-of select="position()"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="title">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				<!-- <xsl:attribute name="target">
					<xsl:value-of select="Target"></xsl:value-of>
				</xsl:attribute> -->
				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
			</a>
		</li>
	</xsl:template>
	<xsl:template match="News" mode="Zone1-News1">
		<div class="row">
			<div class="col-lg-6">
				<div class="head-title">
					<h1><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of><xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of></h1>
				</div>
				<div class="content-about">
					<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
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
			<div class="col-lg-6">
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
		</div>
	</xsl:template>
	<xsl:template match="News" mode="Zone1-News2">
		<xsl:if test="position()&gt;1">
			<div class="col-6 col-md-3 col-lg-3">
				<div class="card_img_icon">
					<div class="ing">
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
				<div class="content-about-icon">
					<p><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of><xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of></p>
				</div>
			</div>
			
		</xsl:if>
	</xsl:template>
	<xsl:template match="News" mode="Zone2-News-Title">
		<div class="swiper-slide">
			<div class="item-about-history">
				<div class="swiper-slide-container"><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of><xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of></div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News" mode="Zone2-News-Content">
		<div class="swiper-slide">
			<div class="item-about-history">
				<div class="history_img">
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
					<div class="content_history">
						<h3 class="title-history"><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of><xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of></h3>
						<div class="brief-content">
							<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
						</div>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="Zone" mode="Zone3">
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
	</xsl:template>
	<xsl:template match="News" mode="Zone3-News">
		<li><strong><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of><xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of></strong>
			<p><xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of></p>
		</li>
	</xsl:template>
	<xsl:template match="News" mode="Zone4-News">
		<div class="col-6 col-md-3 col-lg-3">
			<div class="about-3">
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
				<div class="content-about-3">
					<div class="title-about-3">
						<h3><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of><xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of></h3>
					</div>
					<div class="title-zone-about-3">
						<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="Zone" mode="Zone5">
		<div class="card_img_sodo">
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
	</xsl:template>
</xsl:stylesheet>
