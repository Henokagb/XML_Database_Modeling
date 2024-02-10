<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:gf="http://www.good_food.com">

<!-- This template matches the root of the XML document -->
<xsl:template match="/">
    <html>
        <body>
            <!-- Title for the list of orders -->
            <h2>List of Orders</h2>
            <ul>
                <!-- Iterate through each 'customers_orders' element -->
                <xsl:for-each select="gf:database/gf:customers_orders">
                    <li>
                        <!-- Display customer information -->
                        <p>Customer email: <xsl:value-of select="gf:customer_email"/></p>
                        <p>Customer Phone number: <xsl:value-of select="gf:customer_phone"/></p>
                        <p>Customer First name: <xsl:value-of select="gf:customer_fname"/></p>
                        <p>Customer Last name: <xsl:value-of select="gf:customer_lname"/></p>
                        <p>Customer address: <xsl:value-of select="gf:customer_adress"/></p>
                        <p>Order date: <xsl:value-of select="gf:order_date"/></p>
                        <p>Order details:</p>
                        <ul>
                            <!-- Iterate through each 'order' element -->
                            <xsl:for-each select="gf:order">
                                <li>
                                    <!-- Display food ID and number ordered -->
                                    <p>Food ID: <xsl:value-of select="gf:food_id"/></p>
                                    <p>Number ordered: <xsl:value-of select="@number"/></p>
                                    <!-- Display food name using a variable and XPath -->
                                    <p>Food Name: 
                                        <xsl:variable name="foodId" select="gf:food_id"/>
                                        <xsl:value-of select="//gf:food[@food_id = $foodId]/gf:name"/>
                                    </p>
                                </li>
                            </xsl:for-each>
                        </ul>
                        <!-- Display additional precisions, if any -->
                        <p>Additional Precisions: <xsl:value-of select="gf:additional_precisions"/></p>
                    </li>
                </xsl:for-each>
            </ul>
        </body>
    </html>
</xsl:template>

</xsl:stylesheet>
