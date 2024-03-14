<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:gf="http://www.good_food.com" version="1.0">
<xsl:template match="/">
<rss version="2.0">
<channel>
<title>Good Food Recipes</title>
<link>http://www.goodfood.com/recipes</link>
<description>Latest recipes from Good Food</description>
<language>en-us</language>
<xsl:for-each select="//gf:food">
<item>
<title>
<xsl:value-of select="gf:name"/>
</title>
<link>http://www.goodfood.com/recipes/{@food_id}</link>
<description>
<xsl:value-of select="gf:description"/>
</description>
<guid isPermaLink="false">
<xsl:value-of select="@food_id"/>
</guid>
</item>
</xsl:for-each>
</channel>
</rss>
</xsl:template>
</xsl:stylesheet>