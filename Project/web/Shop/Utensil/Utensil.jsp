<%@page import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Utensil</title>
    </head>
    <body>
        <form method="post" enctype="multipart/form-data" action="../../Assets/UploadAction/UtensilUploadAction.jsp">
            <table border="1" cellpadding="10" style="border-collapse: collapse;" align="center">
                <tr>
                    <td>Category:</td>
                    <td>
                        <select size="1" name="utensilcategory" onchange="getSize(this.value)">
                            <option value="">---Select---</option>
                            <option value="Cooker">Cooker</option>
                            <option value="Peeler">Peeler</option>
                            <option value="Spatula">Spatula</option>
                            <option value="Knife">Knife</option>
                            <option value="Spoon">Spoon</option>
                            <option value="Grater">Grater</option>
                            <option value="Fork">Fork</option>
                            <option value="Whisk">Whisk</option>
                            <option value="Frying Pan">Frying Pan</option>
                            <option value="Sieve">Sieve</option>
                            <option value="Plate">Plate</option>
                            <option value="Kettle">Kettle</option>
                            <option value="Mixer Blender">Blender</option>
                            <option value="Glass">Glass</option>
                            <option value="Cup">Cup</option>
                            <option value="Saucepan"> Sauce Pan</option>
                            <option value="Vessel">Vessel</option>
                            <option value="Container">Container</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Material</td>
                    <td>
                        <select size="1" name="material">
                            <option value="">---Select---</option>
                            <option value="Aluminium">Aluminium</option>
                            <option value="Fiber">Fiber</option>
                            <option value="Plastic">Plastic</option>
                            <option value="Stainless Steel">Stainless Steel</option>
                            <option value="Wood">Wood</option>
                            <option value="Glass">Glass</option>
                            <option value="Ceramic">Ceramic</option>
                            <option value="Cast Iron">Cast Iron</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Brand</td>
                    <td><select size="1" name="sel_brand" required="">
                            <option>---Select---</option>
                            <%
                                String sel = "select * from tbl_utensilbrand";
                                ResultSet rs = con.selectCommand(sel);
                                while (rs.next()) {
                            %>

                            <option value="<%=rs.getString("utslbrnd_id")%>"><%=rs.getString("utslbrnd_nme")%></option>

                            <%
                                }

                            %>
                        </select></td>
                </tr>
                <tr id="utensil_size">
                    <td>Size</td>
                    <td>
                        <select size="1" name="size" id="size">
                            <option value="">---Select---</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Name</td>
                    <td><input type="text" name="txt_utensilname" id="txt_utensilname"></td>
                </tr>
                <tr>
                    <td>Price</td>
                    <td><input type="number" name="txt_utensilprice" id="txt_utensilprice"></td>
                </tr>
                <tr>
                    <td>Image</td>
                    <td><input type="file" name="txt_utensilimage"></td>
                </tr>
                <tr>
                    <td>Return</td>
                    <td><input type="number" name="txt_return" id="txt_return">(in days)</td>
                </tr>
                <tr align="center">
                    <td colspan="2"><input type="submit" name="btn_save" id="btn_save" value="Save"> <input type="reset" name="btn_cancel" id="btn_cancel" value="Cancel"></td>
                </tr>
            </table>
        </form>

        <script src="../../Assets/Jq/jquery.js"></script>
        <script>


                            function getSize(category)
                            {

                                if (category == "Peeler")
                                {
                                    document.getElementById("utensil_size").style.display = 'none';
                                }
                                else if (category == "Grater")

                                {
                                    document.getElementById("utensil_size").style.display = 'none';
                                }
                                else if (category == "Fork")
                                {
                                    document.getElementById("utensil_size").style.display = 'none';
                                }
                                else if (category == "Spatula")
                                {
                                    document.getElementById("utensil_size").style.display = 'none';
                                }
                                else if (category == "Mixer Blender")
                                {
                                    document.getElementById("utensil_size").style.display = 'none';
                                }
                                else if (category == "Cooker")
                                {
                                    document.getElementById("utensil_size").style.display = '';
                                }
                                 else if (category == "Spoon")
                                {
                                    document.getElementById("utensil_size").style.display = '';
                                }
                                 else if (category == "Knife")
                                {
                                    document.getElementById("utensil_size").style.display = '';
                                }
                                 else if (category == "Frying Pan")
                                {
                                    document.getElementById("utensil_size").style.display = '';
                                }
                                 else if (category == "Sieve")
                                {
                                    document.getElementById("utensil_size").style.display = '';
                                }
                                 else if (category == "Plate")
                                {
                                    document.getElementById("utensil_size").style.display = '';
                                }
                                 else if (category == "Kettle")
                                {
                                    document.getElementById("utensil_size").style.display = '';
                                }
                                 else if (category == "Glass")
                                {
                                    document.getElementById("utensil_size").style.display = '';
                                }
                                 else if (category == "Cup")
                                {
                                    document.getElementById("utensil_size").style.display = '';
                                }
                                 else if (category == "Saucepan")
                                {
                                    document.getElementById("utensil_size").style.display = '';
                                }
                                 else if (category == "Vessel")
                                {
                                    document.getElementById("utensil_size").style.display = '';
                                }
                                 else if (category == "Container")
                                {
                                    document.getElementById("utensil_size").style.display = '';
                                }
                                 else if (category == "Whisk")
                                {
                                    document.getElementById("utensil_size").style.display = '';
                                }
                                $.ajax({
                                    url: "../../Assets/AjaxPages/AjaxSize.jsp?cat=" + category,
                                    success: function(result) {

                                        $("#size").html(result);
                                    }
                                });
                            }
        </script>
    </body>
</html>

