<%
    String li=request.getParameter("link");
     if(li.equals("home")){
        %>
        <%@include file="/module/Admin/home.jsp" %> 
        <%
        }     
     else if(li.equals("member")){
            %>
            <%@include file="/module/Admin/member.jsp" %> 
            <%
           }
     else if(li.equals("barang")){
            %>
            <%@include file="/module/Admin/barang.jsp" %> 
            <%
           }
     else if(li.equals("kurir")){
            %>
            <%@include file="/module/Admin/kurir.jsp" %> 
            <%
           }
    else if(li.equals("lokasi")){
            %>
            <%@include file="/module/Admin/lokasi.jsp" %> 
            <%
           }
     else if(li.equals("pengiriman")){
            %>
            <%@include file="/module/Admin/pengiriman.jsp" %> 
            <%
           }
     else if(li.equals("toko")){
            %>
            <%@include file="/module/Admin/toko.jsp" %> 
            <%
           }
     else if(li.equals("transaksi")){
            %>
            <%@include file="/module/Admin/transaksi.jsp" %> 
            <%
           }
      else{
           out.println("");
           }

           %>
