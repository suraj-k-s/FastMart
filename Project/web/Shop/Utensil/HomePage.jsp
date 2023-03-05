<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Utensil Homepage</title>
    </head>
    <body>
        <h1>Welcome Utensil Shop <%=session.getAttribute("sname")%></h1>
        <ul>
            <li><a href="../Profile.jsp">My profile</a></li>
            <li><a href="../EditProfile.jsp">Edit profile</a></li>
            <li> <a href="../ChangePassword.jsp">Change Password</a></li>
            <li><a href="../Utensil/Utensil.jsp">Add Utensil</a></li>
            <li><a href="../Utensil/UtensilList.jsp">Utensil List</a></li>
        </ul>
    </body>
</html>
