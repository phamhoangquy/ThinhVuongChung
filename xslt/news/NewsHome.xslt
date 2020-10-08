<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
	<xsl:template match="/">
		<xsl:apply-templates select="/ZoneList/Zone[1]" mode="Zone1"></xsl:apply-templates>
		<xsl:apply-templates select="/ZoneList/Zone[2]" mode="Zone2"></xsl:apply-templates>
		<xsl:apply-templates select="/ZoneList/Zone[3]" mode="Zone3"></xsl:apply-templates>
		<xsl:apply-templates select="/ZoneList/Zone[4]" mode="Zone4"></xsl:apply-templates>
		<xsl:apply-templates select="/ZoneList/Zone[5]" mode="Zone5"></xsl:apply-templates>
		<xsl:apply-templates select="/ZoneList/Zone[6]" mode="Zone6"></xsl:apply-templates>
		
	</xsl:template>
	<xsl:template match="Zone" mode="Zone1">
		<section class="block_we">
			<xsl:attribute name="setBackground">
				<xsl:value-of select="ImageUrl" disable-output-escaping="yes"></xsl:value-of>
			</xsl:attribute>
			<div class="container">
				<div class="row">
					<div class="col-lg-10">
						<div class="block-title">
							<h2><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></h2>
						</div>
						<div class="text-we">
							<xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of>
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
								<xsl:text disable-output-escaping="yes">Về chúng tôi</xsl:text> 
								<span class="ri-arrow-right-circle-line">
								</span>
							</a>
						</div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="Zone" mode="Zone2">
		<section class="block_we-2">
			<div class="container-custom">
				<div class="container">
					<div class="block-title">
						<h2><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></h2>
					</div>
					<div class="text-we-2">
						<xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of>
					</div>
				</div>
				<div class="row">
					<xsl:apply-templates select="News[1]" mode="Zone2-News1"></xsl:apply-templates>
					<xsl:apply-templates select="News" mode="Zone2-News2"></xsl:apply-templates>
					
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="News" mode="Zone2-News1">
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
				<div class="content-we-2">
					<div class="title-we-2">
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
					<div class="title-zone-we-2">
						<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News" mode="Zone2-News2">
		<xsl:if test="position()&gt;1 and position()&lt;4">
			<div class="col-12 col-md-3 col-lg-3">
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
					<div class="content-we-2">
						<div class="title-we-2">
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
					</div>
				</div>
			</div>
		</xsl:if>
	</xsl:template>
	<xsl:template match="Zone" mode="Zone3">
		<section class="block_choose-us">
			<xsl:attribute name="setBackground">
				<xsl:value-of select="ImageUrl" disable-output-escaping="yes"></xsl:value-of>
			</xsl:attribute>
			<div class="container">
				<div class="row">
					<div class="col-12 col-md-3 col-lg-4"></div>
					<div class="col-12 col-md-9 col-lg-8">
						<div class="why-choose-us">
							<div class="card_img">
								<div class="img">
									<img class=" ">
										<xsl:attribute name="src">
											<xsl:value-of select="SecondImageUrl"></xsl:value-of>
										</xsl:attribute>
										<xsl:attribute name="alt">
											<xsl:value-of select="Title"></xsl:value-of>
										</xsl:attribute>
									</img>
								</div>
							</div>
							<div class="block-title">
								<h2><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></h2>
								<div class="text-choose">
									<xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of>
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
										<xsl:text disable-output-escaping="yes">khám phá thêm</xsl:text>
										
										<span class="ri-arrow-right-circle-line"></span>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="Zone" mode="Zone4">
		<section class="block_especially-us">
			<xsl:attribute name="setBackground">
				<xsl:value-of select="ImageUrl" disable-output-escaping="yes"></xsl:value-of>
			</xsl:attribute>
			<div class="container">
				<div class="block-title">
					<h2><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></h2>
				</div>
				<div class="text-especially">
					<xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of>
				</div>
				<div class="row">
					<xsl:apply-templates select="News" mode="Zone4-News"></xsl:apply-templates>
					
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="News" mode="Zone4-News">
		<div class="col-6 col-md-6 col-lg-3">
			<div class="card-img percent-25">
				<div class="img dot">
					<img class=" ">
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
					</img>
				</div>
				<div class="content-especially">
					<div class="title-especially">
						<h3><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></h3><xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="Zone" mode="Zone5">
		<section class="block_active-us">
			<div class="container">
				<div class="row">
					<div class="col-lg-10 big-img">
						<div class="block-title-active">
							<div class="block-title">
								<h2><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></h2>
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
						<xsl:apply-templates select="News[1]" mode="Zone5-News1"></xsl:apply-templates>
						
					</div>
				</div>
				<div class="row">
					<xsl:apply-templates select="News" mode="Zone5-News2"></xsl:apply-templates>
					
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="News" mode="Zone5-News1">
		<div class="card_img_big">
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
		<div class="big-content-active">
			<div class="content-active">
				<div class="title-active">
					<h3><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></h3>
				</div>
				<div class="date">
					<time><xsl:value-of select="CreatedDD" disable-output-escaping="yes"></xsl:value-of>.<xsl:value-of select="CreatedMM" disable-output-escaping="yes"></xsl:value-of>.<xsl:value-of select="CreatedYYYY" disable-output-escaping="yes"></xsl:value-of></time>
				</div>
			</div>
			<div class="btn-view">
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
					<xsl:text disable-output-escaping="yes">Xem thêm</xsl:text>
					<span class="ri-arrow-right-circle-line"></span>
				</a>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News" mode="Zone5-News2">
		<xsl:if test="position()&gt;1 and position()&lt;4">
			<div class="col-12 col-md-6 col-lg-5 small-img">
				<div class="card_img_small">
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
				<div class="small-content-active">
					<div class="content-active">
						<div class="title-active">
							<h3><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></h3><xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
						</div>
						<div class="date">
							<time><xsl:value-of select="CreatedDD" disable-output-escaping="yes"></xsl:value-of>.<xsl:value-of select="CreatedMM" disable-output-escaping="yes"></xsl:value-of>.<xsl:value-of select="CreatedYYYY" disable-output-escaping="yes"></xsl:value-of></time>
						</div>
					</div>
					<div class="btn-view">
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
							<xsl:text disable-output-escaping="yes">Xem thêm</xsl:text>
							<span class="ri-arrow-right-circle-line"></span>
						</a>
					</div>
				</div>
			</div>
		</xsl:if>
	</xsl:template>
	<xsl:template match="Zone" mode="Zone6">
		<section class="block_project">
			<xsl:attribute name="setBackground">
				<xsl:value-of select="ImageUrl" disable-output-escaping="yes"></xsl:value-of>
			</xsl:attribute>
			<div class="container">
				<div class="block-title">
					<h2><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></h2>
				</div>
				<div class="text-project">
					<xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of>
				</div>
				<div class="home-project-swiper-wrapper">
					<div class="nav-arrow-prev"><em class="ri-arrow-left-circle-line"></em></div>
					<div class="nav-arrow-next"><em class="ri-arrow-right-circle-line"></em></div>
					<div class="swiper-container slide-project-home">
						<div class="swiper-wrapper">
							<xsl:apply-templates select="Zone" mode="Zone6-Zone"></xsl:apply-templates>
							
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
	<xsl:template match="Zone" mode="Zone6-Zone">
		<div class="swiper-slide">
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
