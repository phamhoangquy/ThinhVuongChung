<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
	<xsl:template match="/">
		<section class="hr-detail">
			<div class="container">
				<div class="row">
					<div class="col-lg-9">
						<div class="card_title_hr_detail">
							<h1><xsl:value-of select="/NewsDetail/Title" disable-output-escaping="yes"></xsl:value-of><xsl:value-of select="/NewsDetail/EditLink" disable-output-escaping="yes"></xsl:value-of></h1>
							<div class="bottom-wrapper-news-detail">
								<time><xsl:value-of select="/NewsDetail/CreatedDate" disable-output-escaping="yes"></xsl:value-of></time>
								<div class="social-network-share">
									<div class="icon"><a href="#"><em class="fab fa-facebook-f"></em></a><a href="#"><em class="fab fa-twitter"></em></a></div>
								</div>
							</div>
						</div>
						<div class="card_body_hr_detail">
							<table class="table table-striped">
								<tbody>
									<xsl:apply-templates select="/NewsDetail/NewsAttributes"></xsl:apply-templates>
									
								</tbody>
							</table>
						</div>
						<div class="hr_list_content">
							<xsl:value-of select="/NewsDetail/FullContent" disable-output-escaping="yes"></xsl:value-of>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="form_apply_hr_detail">
							<div class="apply-form">
								<div class="btn button-apply">
									<a href='javascript:void(0)' >Ứng tuyển ngay</a>
								</div>
								<div class="btn button-download">
									<a class=" " download="">
										<xsl:attribute name="href">
											<xsl:value-of select="FileUrl"></xsl:value-of>
										</xsl:attribute>
										<xsl:attribute name="title">
											<xsl:value-of select="Title"></xsl:value-of>
										</xsl:attribute>
										<xsl:attribute name="target">
											<xsl:value-of select="Target"></xsl:value-of>
										</xsl:attribute>
										<xsl:text disable-output-escaping="yes">Tải form ứng tuyển</xsl:text> 
									</a>
								</div>
							</div>
							<div class="form-apply" id="form-apply" style="display: none">
								<iframe>
									<xsl:attribute name="src">
										<xsl:value-of select="/NewsDetail/ApplyUrl"></xsl:value-of>
									</xsl:attribute>
								</iframe>
							</div>
						</div>
						<div class="right-hr-detail">
							<div class="card-title-right">
								<h3>Vị trí khác</h3>
							</div>
							<div class="content_hr_detail_right">
								<div class="hr_detail_right_list">
									<ul>
										<xsl:apply-templates select="/NewsDetail/NewsOther"></xsl:apply-templates>
										
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="NewsAttributes">
		<tr>
			<th scope="row"><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></th>
			<td><xsl:value-of select="Content" disable-output-escaping="yes"></xsl:value-of></td>
		</tr>
	</xsl:template>
	<xsl:template match="NewsOther">
		<li>
			<div class="title_hr_detail_right">
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
			<div class="date">
				<time><xsl:value-of select="CreatedDate" disable-output-escaping="yes"></xsl:value-of></time>
			</div>
		</li>
	</xsl:template>
</xsl:stylesheet>
