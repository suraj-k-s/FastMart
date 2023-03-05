
<%@include file="ReorderLevel.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Utensil Homepage</title>
    </head>
    <body>
        <h1>Welcome Grocery Shop <%=session.getAttribute("sname")%></h1>
        <ul>
            <li><a href="../Profile.jsp">My profile</a></li>
            <li><a href="../EditProfile.jsp">Edit profile</a></li>
            <li> <a href="../ChangePassword.jsp">Change Password</a></li>
            <li><a href="../Grocery/Grocery.jsp">Add Grocery</a></li>
            <li><a href="../Grocery/GroceryList.jsp">Grocery List</a></li>
        </ul>
    </body>
</html>