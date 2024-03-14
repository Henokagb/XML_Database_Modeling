<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:gf="http://www.good_food.com">
    <xsl:output method="text"/>
    
    <xsl:template match="/">
        <xsl:text>{"top_rated_recipes":[&#10;</xsl:text>
        <xsl:apply-templates select="//gf:food">
            <xsl:sort select="gf:overall_score" data-type="number" order="descending"/>
        </xsl:apply-templates>
        <xsl:text>]}</xsl:text>
    </xsl:template>
    
    <xsl:template match="gf:food">
        <xsl:text>&#9;{"recipe_name":"</xsl:text>
        <xsl:value-of select="gf:name"/>
        <xsl:text>","average_rating":</xsl:text>
        <xsl:value-of select="gf:overall_score"/>
        <xsl:text>,"reviews":[</xsl:text>
        <xsl:apply-templates select="//gf:reviews[@FoodID = current()/@food_id]/gf:customer_review">
            <xsl:sort select="../gf:given_score" order="descending"/>
        </xsl:apply-templates>
        <xsl:text>]}</xsl:text>
        <xsl:if test="position() != last()">
            <xsl:text>,&#10;</xsl:text>
        </xsl:if>
    </xsl:template>
    
    <xsl:template match="gf:customer_review">
        <xsl:if test="position() > 1">
            <xsl:text>,</xsl:text>
        </xsl:if>
        <xsl:text>{"customer_name":"</xsl:text>
        <xsl:value-of select="gf:customer_email"/>
        <xsl:text>","review_comment":"</xsl:text>
        <xsl:value-of select="normalize-space(gf:comment)"/>
        <xsl:text>"}</xsl:text>
    </xsl:template>
</xsl:stylesheet>
