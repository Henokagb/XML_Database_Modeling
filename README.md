# XML_Database_Modeling

CONTRIBUTORS: elizaveta.danilina@edu.dsti.institute, aymen.dhaouadi@edu.dsti.institute, henok.agbodjogbe@edu.dsti.institute

Project:
-------
This is the modeling of an XML database for the information system of a recipe box company. It includes the management of the recipes and menus proposed, the ingredients, the customers orders and reviews, and the delivery people. The description of the recipes and ingredients integrates various aspects: gastronomy, health, budget, etc.

Structure
---------

*DATABASE PART

    -The XML Schema that represents the modeling is in recipe_box_model.xsd.
    -The XMLDatabase.xml file contains a database based on the xsd file. It contains examples of filling recipes, customers and reviews.

*TRANSFORMATION PART

    -The files with the extension .xsl, .py contain different scenarios requiring the visualization of part of this data. The names of these files - scenario.xsl / scenario.py

    Moreover, nearby are the transformed files that were created by transforming the XMLDatabase.xml file through different xsl files. The xsl file number matches the number of the converted html file (for example, output1.html is the XMLDatabase.xml transformation with XSLFile1.xsl and etc.)

*COMMAND

    To get the output of an xls file, you can use the command xlstproc like this:
    
    xsltproc [xsl transformation file] [xml database file] > [output file]
    
    example: xsltproc scenario5.xsl XMLDatabase.xml > output6.html

*SCENARIOS DESCRIPTION

    scenario1.xsl describes the main page of the recipe box company. This page will show all the recipes offered by the company and their overal score.

    scenario2.xsl describes a separate page where the selected recipe will be shown with its detailed description, number of orders and reviews.

    scenario3.xsl involves showing a list of all orders placed by customers.

    scenario4.xls describes a list of food reviews with the corresponding customer information.

    scenario5.py describe the list all the customers along with their details.

    sceanrio6.xsl describes RSS Feed Generation fo New Recipe Updates.

    scenario7.xml generates a top rated recipes list with reviews

