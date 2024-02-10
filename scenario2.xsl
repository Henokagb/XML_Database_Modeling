<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:gf="http://www.good_food.com">

	<!-- Template for matching the root element -->
	<xsl:template match="/">
		<html>
			<head>
				<title>Food Recipe</title>
			</head>
			<body>
				<h1>Food Recipe</h1>
				<xsl:apply-templates select="//gf:food"/>
				<h3>Reviews:</h3>
				<xsl:apply-templates select="//gf:reviews"/>
			</body>
		</html>
	</xsl:template>

	<!-- Template for matching the food element -->
	<xsl:template match="gf:food">
		<xsl:if test="@food_id = 'ID1'">
			<div>
				<h2>
					<xsl:value-of select="gf:name"/>
				</h2>
				<p>
					Overall Score: <xsl:value-of select="gf:overall_score"/>
				</p>
				<h3>Ingredients:</h3>
				<ul>
					<xsl:apply-templates select="gf:ingredients/gf:ingredient_name"/>
				</ul>
				<h3>
					Number of Customer Orders: <xsl:value-of select="count(//gf:customers_orders/gf:order)"/>
				</h3>

			</div>
		</xsl:if>
	</xsl:template>

	<!-- Template for matching the ingredient_name element -->
	<xsl:template match="gf:ingredient_name">
		<li>
			<xsl:value-of select="."/>
		</li>
	</xsl:template>

	<!-- Template for matching the reviews element -->
	<xsl:template match="gf:reviews">
		<xsl:if test="@FoodID = 'ID1'">
			<div>
				<ul>
					<xsl:apply-templates select="gf:customer_review"/>
				</ul>
			</div>
		</xsl:if>
	</xsl:template>

	<!-- Template for matching the customer_review element -->
	<xsl:template match="gf:customer_review">
		<li>
			<p>
				Customer Email: <xsl:value-of select="gf:customer_email"/>
			</p>
			<p>
				Given Score: <xsl:value-of select="gf:given_score"/>
			</p>
			<p>
				Comment: <xsl:value-of select="gf:comment"/>
			</p>
		</li>
	</xsl:template>

</xsl:stylesheet>
