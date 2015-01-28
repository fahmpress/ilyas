<%
    String akses = (String)session.getAttribute("sessionakses");
    String menu = request.getParameter("link");
    
    if(akses.equals("admin")){
        if(menu.equals("adm")){
            %>
            <%@include file="module/admin/admin.jsp" %> 
            <%
        }
        else if(menu.equals("test")){
            %>
            <%@include file="module/mhs/mhs.jsp" %> 
            <%
        }
    }
    
    if(akses.equals("kajur")){
        if(menu.equals("kajur")){
            %>
            <%@include file="module/kajur/kajur.jsp" %> 
            <%
            }
    
        else if(menu.equals("test")){
            %>
            <%@include file="module/mhs/mhs.jsp" %> 
            <%
            }
    }
    
    if(akses.equals("mahasiswa")){
        if(menu.equals("mhs")){
            %>
            <%@include file="module/mhs/mhs.jsp" %> 
            <%
            }
    
        else if(menu.equals("test")){
            %>
            <%@include file="module/mhs/mhs.jsp" %> 
            <%
            }
    }
%>
