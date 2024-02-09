# XML_Database_Modeling

CONTRIBUTORS: elizaveta.danilina@edu.dsti.institute, aymen.dhaouadi@edu.dsti.institute, henok.agbodjogbe@edu.dsti.institute


This is the modeling of an XML database for the information system of a recipe box company. It includes the management of the recipes and menus proposed, the ingredients, the customers orders and reviews, and the delivery people. The description of the recipes and ingredients integrates various aspects: gastronomy, health, budget, etc.

The XML Schema that represents the modeling is in recipe_box_model.xsd

The xml file contains a database based on the xsd file. It contains examples of filling recipes, customers and reviews.

This file is called XMLDatabase.xml

The files with the extension .xsl contain different scripts that answer the question of visualizing the created part of the data. The names of these files - XSLFile.xsl

Moreover, nearby are the transformed files that were created by transforming the XMLDatabase.xml file through different xsl files. The xsl file number matches the number of the converted html file (for example, output1.html is the XMLDatabase.xml transformation with XSLFile1.xsl and etc.)

XSLFile1.xsl describes the main page of the recipe box company. This page will show all the recipes offered by the company and their overal score.

XSLFile2.xsl describes a separate page where the selected recipe will be shown with its detailed description, number of orders and reviews.
