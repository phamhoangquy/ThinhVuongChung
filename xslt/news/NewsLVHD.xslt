<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
	<xsl:template match="/">
		<section class="block_lvhd">
			<div class="container">
				<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
				
			</div>
		</section>
		<div class="overlay"></div>
	</xsl:template>
	<xsl:template match="News">
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
			<div class="col-12 col-md-6 col-lg-6 fl">
				<div class="lvhd">
					<div class="title-lvhd">
						<h2><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of><xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of></h2>
					</div>
					<div class="text-lvhd">
						<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
					</div>
					<div class="readmore">
						<a data-fancybox="" >
							<xsl:attribute name="data-src">
								<xsl:text disable-output-escaping="yes">#modal-lvhd-</xsl:text>
								<xsl:value-of select="position()" disable-output-escaping="yes"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="href">
								<xsl:text disable-output-escaping="yes">javascript:;</xsl:text>
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
				<div class="modal container">
					<xsl:attribute name="id">
						<xsl:text disable-output-escaping="yes">modal-lvhd-</xsl:text>
						<xsl:value-of select="position()" disable-output-escaping="yes"></xsl:value-of>
					</xsl:attribute>
					<div class="col-xl-12">
						<!-- <div class="close-btn ri-close-line"></div> -->
						<div class="row">
							<div class="col-xl-6 col-sm-6">
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
							<div class="col-xl-6 col-sm-6 fl">
								<div class="lvhd">
									<div class="title-modal">
										<h2> <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of><xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of></h2>
									</div>
									<div class="text-modal">
										<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
	</xsl:template>
</xsl:stylesheet>
