<%-- 
    Document   : HomePage
    Created on : 24 Sep, 2021, 3:25:34 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer HomePage</title>
    </head>
    <body>
        <h1>Welcome <%=session.getAttribute("cname")%></h1>
        <ul>
            <li><a href="./CustomerProfile.jsp">My Profile</a></li>
            <li><a href="./EditProfile.jsp">Edit Profile</a></li>
            <li><a href="./ChangePassword.jsp">Change Password</a></li>
            <li><a href="SearchDress.jsp">Dress Search</a></li>
            <li><a href="SearchFootwear.jsp">Footwear Search</a></li>
            <li><a href="SearchGadget.jsp">Gadget Search</a></li>
            <li><a href="SearchUtensil.jsp">Utensil Search</a></li>
            <li><a href="SearchGrocery.jsp">Grocery Search</a></li>
            <li><a href="SearchShop.jsp">Search Shop</a></li>
            <li><a href="MyCart.jsp">Cart</a></li>
            <li><a href="ViewBookings.jsp">View Bookings</a></li>
        </ul>        
    </body>
</html>
