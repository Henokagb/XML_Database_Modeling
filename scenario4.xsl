<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:gf="http://www.good_food.com">

<!-- This template matches the root of the XML document -->
<xsl:template match="/">
    <html>
        <body>
            <!-- Title for the list of food reviews -->
            <h2>List of food reviews with the corresponding customer information</h2>
            <ul>
                <!-- Iterate through each 'customer_review' element within 'reviews' -->
                <xsl:for-each select="gf:database/gf:reviews/gf:customer_review">
                    <li>
                        <!-- Display customer email -->
                        <p>Customer email: <xsl:value-of select="gf:customer_email"/></p>
                        <!-- Retrieve the FoodID attribute from the parent element and use it to fetch the food name -->
                        <p>Reviewed Food: 
                            <xsl:variable name="foodId" select="../@FoodID"/>
                            <xsl:value-of select="//gf:food[@food_id = $foodId]/gf:name"/>
                        </p>
                        <!-- Display the comment provided by the customer -->
                        <p>Comment: <xsl:value-of select="gf:comment"/></p>
                        <!-- Display the score given by the customer -->
                        <p>Given score: <xsl:value-of select="gf:given_score"/></p>
                    </li>
                </xsl:for-each>
            </ul>
        </body>
    </html>
</xsl:template>

</xsl:stylesheet>
