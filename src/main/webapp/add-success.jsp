<%@ page import="com.example.thi_wcd.entity.Phone" %><%
   Phone phone =(Phone) request.getAttribute("phone");
%>
<!DOCTYPE html>
<html>
<title>W3.CSS</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<body>

<div class="w3-container">

    <div class="w3-panel w3-green">
        <h2 class="w3-opacity">Add success</h2>
    </div>
    <div>Phone Name: <%= phone.getName()%></div>
    <div>Brand: <%= phone.getBrand()%></div>
    <div>Price: <%= phone.getPrice()%></div>
    <div>Description: <%= phone.getDescription()%></div>
</div>
</body>
</html>
