<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:gf="http://www.good_food.com">

	<!-- Template for matching the root element -->
	<xsl:template match="/">
		<html>
			<head>
				<title>Food Recipes</title>
			</head>
			<body>
				<h1>Food Recipes</h1>
				<h1>Quantity: <xsl:value-of select="count(//gf:food)"/></h1>
				<xsl:apply-templates select="//gf:food"/>
			</body>
		</html>
	</xsl:template>

	<!-- Template for matching the food element -->
	<xsl:template match="gf:food">
		<div>
			<h2>
				<xsl:value-of select="gf:name"/>
			</h2>
			<p>
				Overall Score: <xsl:value-of select="gf:overall_score"/>
			</p>
			<h3>Description:</h3>
			<ul>
				<xsl:apply-templates select="gf:description"/>
			</ul>
		</div>
	</xsl:template>

</xsl:stylesheet>
