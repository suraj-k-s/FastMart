<%@page import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dress List</title>
    </head>
    <body>
         <%
                if(request.getParameter("del")!=null)
                {
                    String str2="delete from tbl_utensil where utsl_id='"+request.getParameter("del")+"'";
                    con.executeCommand(str2);
                }
                %>
        <table border="1" align='center'>
            <tr>
                <th>Sl.No</th>
                <th>Category</th>
                <th>Material</th>
                <th>Brand</th>
                <th>Size</th>
                <th>Name</th>
                <th>Price</th>
                <th>Image</th>
                <th>Return</th>
                <th>Action</th>
            </tr>
            <%
                int i = 0;
                String sel = "select * from tbl_utensil u inner join tbl_utensilbrand ub on u.utslbrnd_id=ub.utslbrnd_id where sh_id='"+session.getAttribute("sid")+"'";
                ResultSet rs = con.selectCommand(sel);
                while (rs.next()) {
                    i++;
            %>
            <tr>
                <td><%=i%></td>
                <td><%=rs.getString("utsl_ctgry")%></td>
                <td><%=rs.getString("utslbrnd_nme")%></td>
                <td><%=rs.getString("utsl_mtrl")%></td>
                <td><%=rs.getString("utsl_size")%></td>
                <td><%=rs.getString("utsl_nme")%></td>
                <td><%=rs.getString("utsl_pr")%></td>
                <td><img src="../Assets/Files/UtensilImage/<%=rs.getString("utsl_img")%>" width="120" height="120"></td>
                <td><%=rs.getString("utsl_rtn")%></td>
                <td>
                    <a href="UtensilList.jsp?del=<%=rs.getString("utsl_id")%>">Delete</a>
                    <a href="UtensilGallery.jsp?id=<%=rs.getString("utsl_id")%>">Add Gallery</a>
                    <a href="UtensilStock.jsp?id=<%=rs.getString("utsl_id")%>">Add Stock</a>
                </td>
            </tr>
            <%
                }
            %>
        </table>
    </body>
</html>