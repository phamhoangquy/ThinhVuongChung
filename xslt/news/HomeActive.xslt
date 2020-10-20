<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
	<xsl:template match="/">
		<section class="block_active-us">
			<div class="container">
				<div class="row">
					<div class="col-lg-10 big-img">
						<div class="block-title-active" data-aos="fade-right">
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
						<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
					</div>
				</div>
				<div class="row">
					<xsl:apply-templates select="/NewsList/News" mode="NewsActive"></xsl:apply-templates>
				</div>
			</div>
		</section>

	</xsl:template>
	<xsl:template match="News">
		<xsl:if test="position()=1">
			<div class="card_img_big" data-aos="fade-up">
				<div class="img zoom-in">
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
			<div class="big-content-active">
				<div class="content-active">
					<div class="title-active">
						<h3><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></h3>
					</div>
					<div class="date">
						<time><xsl:value-of select="CreatedDD" disable-output-escaping="yes"></xsl:value-of>.<xsl:value-of select="CreatedMM" disable-output-escaping="yes"></xsl:value-of><xsl:value-of select="CreatedYYYY" disable-output-escaping="yes"></xsl:value-of></time>
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
		</xsl:if>
	</xsl:template>
	<xsl:template match="News" mode="NewsActive">
		<xsl:if test="position()&gt;1 and position()&lt;4">
			<div class="col-12 col-md-6 col-lg-5 small-img">
				<div class="card_img_small" data-aos="fade-up">
					<div class="img zoom-in">
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
</xsl:stylesheet>
