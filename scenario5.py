import xml.etree.ElementTree as ET

# Load the XML file
tree = ET.parse('XMLDatabase.xml')
root = tree.getroot()

# Define the namespace
namespace = {'gf': 'http://www.good_food.com'}

# Create the HTML content
html_content = """
<!DOCTYPE html>
<html>
<head>
  <title>Customer Details</title>
  <style>
    table {
      font-family: Arial, sans-serif;
      border-collapse: collapse;
      width: 100%;
    }
    th, td {
      border: 1px solid #dddddd;
      text-align: left;
      padding: 8px;
    }
    th {
      background-color: #f2f2f2;
    }
  </style>
</head>
<body>
  <h2>Customer Details</h2>
  <table>
    <tr>
      <th>Email</th>
      <th>Phone</th>
      <th>First Name</th>
      <th>Last Name</th>
      <th>Address</th>
    </tr>
"""

# Find all customer elements
customers = root.findall('.//gf:customers_orders', namespace)

# Iterate through each customer and add them to the HTML content
for customer in customers:
    email = customer.find('gf:customer_email', namespace).text
    phone = customer.find('gf:customer_phone', namespace).text
    fname = customer.find('gf:customer_fname', namespace).text
    lname = customer.find('gf:customer_lname', namespace).text
    address = customer.find('gf:customer_adress', namespace).text

    html_content += f"""
    <tr>
      <td>{email}</td>
      <td>{phone}</td>
      <td>{fname}</td>
      <td>{lname}</td>
      <td>{address}</td>
    </tr>
    """

# Close the HTML content
html_content += """
  </table>
</body>
</html>
"""

# Write the HTML content to a file
with open('output5.html', 'w') as file:
    file.write(html_content)
