<%@page import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%

    String selG = "	select * from tbl_grocery g inner join tbl_grocerysubcategory gsc on gsc.grcrysubctgry_id=g.grcry_subctgry_id inner join tbl_grocerycategory gc on gc.grcryctgry_id=gsc.grcryctgry_id where sh_id = '" + session.getAttribute("sid") + "' ";
    ResultSet rsG = con.selectCommand(selG);
    while (rsG.next()) {
        
        
        
        String selB = "select COALESCE(sum(cart_qty),0) as qty from tbl_cart where grcry_id = '" + rsG.getString("grcry_id") + "'";
        ResultSet rsB = con.selectCommand(selB);
        rsB.next();
        
        
        String selS = "select COALESCE(sum(grocerystock_quantity),0) as tot from tbl_grocerystock where grcry_id = '" + rsG.getString("grcry_id") + "'";
        ResultSet rsS = con.selectCommand(selS);
        rsS.next();
        
        
        int rlvl = Integer.parseInt(rsG.getString("grcry_rlvl"));
        int qty = Integer.parseInt(rsB.getString("qty"));
        int tot = Integer.parseInt(rsS.getString("tot"));
        
        
        int level = tot - qty;
        System.out.println("level"+level);
        System.out.println("refill"+rlvl);
        
        if(rlvl<level)
        {
         out.println("<script>alert('Refill "+rsG.getString("grcrysubctgry_nme")+"("+rsG.getString("grcryctgry_nme")+") stock..')</script>");
        }
        
        
        
        
        

    }


%>