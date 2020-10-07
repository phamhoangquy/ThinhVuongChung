<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
	<xsl:template match="/">
		<section class="news_detail">
			<div class="container">
				<div class="row">
					<div class="col-lg-9">
						<div class="card-title">
							<h1><xsl:value-of select="/NewsDetail/Title" disable-output-escaping="yes"></xsl:value-of><xsl:value-of select="/NewsDetail/EditLink" disable-output-escaping="yes"></xsl:value-of></h1>
							<div class="bottom-wrapper-news-detail">
								<time><xsl:value-of select="/NewsDetail/CreatedDate" disable-output-escaping="yes"></xsl:value-of></time>
								<div class="social-network-share">
									<div class="icon"><a href="#"><em class="fab fa-facebook-f"></em></a><a href="#"><em class="fab fa-twitter"></em></a></div>
								</div>
							</div>
						</div>
						<div class="content_news_detail">
							<xsl:value-of select="/NewsDetail/FullContent" disable-output-escaping="yes"></xsl:value-of>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="right-news">
							<div class="card-title-right">
								<h2>Tin tức khác</h2>
							</div>
							<xsl:apply-templates select="/NewsDetail/NewsOther"></xsl:apply-templates>
							
						</div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="NewsOther">
		<div class="card_body">
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
			<div class="content_news_detail_right">
				<div class="date">
					<time><xsl:value-of select="CreatedDate" disable-output-escaping="yes"></xsl:value-of></time>
				</div>
				<div class="title_news_right"><a class="lcl lcl-2" href="">
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
				</a></div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>
