<%@page import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Grocery List</title>
    </head>
    <body>
         <%
                if(request.getParameter("del")!=null)
                {
                    String str2="delete from tbl_grocery where grcry_id='"+request.getParameter("del")+"'";
                    con.executeCommand(str2);
                }
                %>
        <table border="1" align='center'>
            <tr>
                <th>Sl.No</th>
                <th>Category</th>
                <th>Subcategory</th>
                <th>Rate</th>
                <th>Unit</th>
                <th>Image</th>
                <th>Return</th>
                <th>ReorderLevel</th>
                <th>Action</th>
            </tr>
            <%
                int i = 0;
                String sel = "select * from tbl_grocery g inner join tbl_grocerysubcategory gsc on gsc.grcrysubctgry_id=g.grcry_subctgry_id inner join tbl_grocerycategory gc on gc.grcryctgry_id=gsc.grcryctgry_id where sh_id='"+session.getAttribute("sid")+"'";
                ResultSet rs = con.selectCommand(sel);
                while (rs.next()) {
                    i++;
            %>
            <tr>
                <td><%=i%></td>
                <td><%=rs.getString("grcryctgry_nme")%></td>
                <td><%=rs.getString("grcrysubctgry_nme")%></td>
                <td><%=rs.getString("grcry_rate")%></td>
                <td><%=rs.getString("grcry_unit")%></td>
                <td><img src="../../Assets/Files/GroceryImage/<%=rs.getString("grcry_img")%>" width="120" height="120"></td>
                <td><%=rs.getString("grcry_rtn")%></td>
                <td><%=rs.getString("grcry_rlvl")%></td>
                <td>
                    <a href="GroceryList.jsp?del=<%=rs.getString("grcry_id")%>">Delete</a>
                    <a href="GroceryGallery.jsp?id=<%=rs.getString("grcry_id")%>">Add Gallery</a>
                    <a href="GroceryStock.jsp?id=<%=rs.getString("grcry_id")%>">Add Stock</a>
                </td>
            </tr>
            <%
                }
            %>
        </table>
    </body>
</html>
