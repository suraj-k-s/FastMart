<%@page import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <title>Grocery</title>
    </head>
    <body>
       <form method="post" enctype="multipart/form-data" action="../../Assets/UploadAction/GroceryUploadAction.jsp">
           <table border="1" cellpadding="10" style="border-collapse: collapse;" align="center">
               <tr>
                   <td>Category:</td>
                    <td><select size="1" name="sel_category" onchange="getCat(this.value)" >
                            <option value="">---Select---</option>
                            <%
                                String sel = "select * from tbl_grocerycategory";
                                ResultSet rs = con.selectCommand(sel);
                                while (rs.next()) {
                            %>

                            <option value="<%=rs.getString("grcryctgry_id")%>"><%=rs.getString("grcryctgry_nme")%></option>

                            <%
                                }

                            %>
                        </select>
                    </td>
               </tr>
               <tr>
                   <td>SubCategory:</td>
                    <td><select size="1" name="sel_subcategory" id="sel_subcategory" >
                            <option value="">---Select---</option>
                            <%
                                String sel1 = "select * from tbl_grocerysubcategory";
                                ResultSet rs1 = con.selectCommand(sel1);
                                while (rs1.next()) {
                            %>

                            <option value="<%=rs1.getString("grcrysubctgry_id")%>"><%=rs1.getString("grcrysubctgry_nme")%></option>

                            <%
                                }

                            %>
                        </select></td>
               </tr>
               <tr>
                   <td>Rate</td>
                   <td><input type="number" name="txt_rate" id="txt_rate" min="1" required=""></td>
               </tr>
               <tr>
                   <td>Unit</td>
                    <td>
                        <select size="1" name="unit" id="unit">
                            <option value="">---Select---</option>
                            <option value="100 gm">100 gm</option>
                            <option value="250 gm">250 gm</option>
                            <option value="500 gm">500 gm</option>
                            <option value="750 gm">750 gm</option>
                            <option value="800 gm">800 gm</option>
                            <option value="1 kg">1 kg</option>
                            <option value="1.5 kg">1.5 kg</option>
                            <option value="2 kg">2 kg</option>
                            <option value="3 kg">3 kg</option>
                            <option value="3.5 kg">3.5 kg</option>
                            <option value="4 kg">4 kg</option>
                            <option value="5 kg">5 kg</option>
                            <option value="6 kg">6 kg</option>
                            <option value="7 kg">7 kg</option>
                            <option value="8 kg">8 kg</option>
                            <option value="9 kg">9 kg</option>
                            <option value="10 kg">10 kg</option>
                            <option value="15 kg">15 kg</option>
                            <option value="20 kg">20 kg</option>
                            <option value="25 kg">25 kg</option>
                            <option value="0.5 L">0.5 L</option>
                            <option value="1 L">1 L</option>
                            <option value="1.5 L">1.5 L</option>
                            <option value="2 L">2 L</option>
                            <option value="2.5 L">2.5 L</option>
                            <option value="3 L">3 L</option>
                            <option value="4 L">4 L</option>
                            <option value="5 L">5 L</option>
                            <option value="6 L">6 L</option>
                            <option value="7 L">7 L</option>
                            <option value="8 L">8 L</option>
                            <option value="9 L">9 L</option>
                            <option value="10 L">10 L</option>
                        </select>
                   </td>
               </tr>
               <tr>
                   <td>Image</td>
                   <td><input type="file" name="txt_image" required=""></td>
               </tr>
               <tr>
                   <td>Return</td>
                   <td><input type="number" name="txt_return" id="txt_return"  min="0"  required=""> (in Days)</td>
               </tr>
               <tr>
                   <td>ReorderLevel</td>
                   <td><input type="number" name="txt_orderlevel" id="txt_orderlevel" required=""></td>
               </tr>
               <tr>
                    <td align="center" colspan="2"><input type="submit" name="btn_save" id="btn_save" value="Save"> <input type="reset" name="btn_cancel" id="btn_cancel" value="Cancel"></td>
               </tr>    
           </table>
       </form>
                        <script src="../../Jq/jquery.js"></script>
                        <script>
                        function getCat(gid)
                        {
                           
                        $.ajax({
                        url: "../../AjaxPages/AjaxGrocery.jsp?did="+gid,
                         success: function(result){
                        $("#sel_subcategory").html(result);
                         }
                        });
                        }
                        </script>              
    </body>
</html>