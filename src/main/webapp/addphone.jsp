<%@ page import="java.util.HashMap" %>
<%@ page import="com.example.thi_wcd.entity.Phone" %>
<%
    Phone phone = (Phone) request.getAttribute("phone");
    if (phone == null) {
        phone = new Phone();
    }
    HashMap<String, String> errors = (HashMap<String, String>) request.getAttribute("errors");
    if (errors == null) {
        errors = new HashMap<>();
    }
%>
<!DOCTYPE html>
<html>
<title>W3.CSS</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<body>
<form action="/create-phone" method="post" class="w3-container w3-card-4 w3-light-grey w3-text-blue w3-margin">
    <h2 class="w3-center">Register form</h2>

    <div class="w3-row w3-section">
        <div class="w3-col" style="width:50px"><i class="w3-xxlarge fa fa-user"></i></div>
        <div class="w3-rest">
            <input class="w3-input w3-border" name="name" type="text" placeholder="Phone name"
                   value="<%=phone.getName()%>">
            <%
                if (errors.containsKey("name")) {
            %>
            <span class="w3-text-red">* <%=errors.get("name")%></span>
            <%}%>
        </div>
    </div>

    <div class="w3-row w3-section">
        <div class="w3-col" style="width:50px"><i class="w3-xxlarge fa fa-envelope-o"></i></div>
        <div class="w3-rest">
            <select class="w3-select" name="option">
                <option value="" disabled selected>Choose your brand</option>
                <option value="Apple">Apple</option>
                <option value="Samsung">Samsung</option>
                <option value="Nokia">Nokia</option>
                <option value="Others">Others</option>
            </select>
        </div>
    </div>
    <div class="w3-row w3-section">
        <div class="w3-col" style="width:50px"><i class="w3-xxlarge fa fa-envelope-o"></i></div>
        <div class="w3-rest">
            <input class="w3-input w3-border" name="price" type="text" placeholder="Price"
                   value="<%=phone.getPrice()%>">
            <%
                if (errors.containsKey("price")) {
            %>
            <span class="w3-text-red">* <%=errors.get("price")%></span>
            <%}%>
        </div>
    </div>
    <div class="w3-row w3-section">
        <div class="w3-col" style="width:50px"><i class="w3-xxlarge fa fa-envelope-o"></i></div>
        <div class="w3-rest">
            <textarea class="w3-input w3-border" name="description" placeholder="Description">
            </textarea>
            <%
                if (errors.containsKey("description")) {
            %>
            <span class="w3-text-red">* <%=errors.get("description")%></span>
            <%}%>
        </div>
    </div>
    <p class="w3-center">
        <button type="submit" class="w3-button w3-section w3-blue w3-ripple"> Save</button>
        <button type="reset" class="w3-button w3-section w3-blue w3-ripple"> Reset</button>
    </p>
</form>

</body>
</html>
