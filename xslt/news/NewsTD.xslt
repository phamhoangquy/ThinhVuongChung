<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
	<xsl:template match="/">
		<section class="hr_3">
			<div class="container">
				<div class="head-title">
					<h2><xsl:value-of select="/NewsList/ModuleTitle" disable-output-escaping="yes"></xsl:value-of></h2>
				</div>
				<div class="row">
					<div class="col-lg-12">
						<div class="card-body">
							<table class="table table-striped">
								<thead>
									<tr>
										<th scope="col">STT</th>
										<th scope="col">Vị trí tuyển dụng </th>
										<th scope="col">Số lượng</th>
										<th scope="col">Khu vực</th>
										<th scope="col">Thời hạn</th>
									</tr>
								</thead>
								<tbody>
									<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
									
									
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="News">
		<tr>
			<td>
				<xsl:value-of select="position()" disable-output-escaping="yes"></xsl:value-of>
			</td>
			<td> 
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
			</td>
			<td><xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of></td>
			<td><xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of></td>
			<td><xsl:value-of select="EndDate" disable-output-escaping="yes"></xsl:value-of></td>
		</tr>
	</xsl:template>
</xsl:stylesheet>
