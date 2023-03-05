<%-- 
    Document   : HomePage
    Created on : 24 Sep, 2021, 3:50:41 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Deliveryboy Homepage</title>
    </head>
    <body>
        <h1>Welcome <%=session.getAttribute("dname")%></h1>
        <a href="./DeliveryBoyProfile.jsp">My Profile</a>
         <a href="./EditProfile.jsp">Edit Profile</a>
         <a href="./ChangePassword.jsp">Change Password</a>
         <a href="./ViewOrders.jsp">Order</a>
    </body>
</html>
