<%@include file="koneksi.jsp" %>

<%
    String act=request.getParameter("act");
    String username=request.getParameter("username");
    String password=request.getParameter("password");
    if(act.equals("login")){
        rs = st.executeQuery("SELECT * from tbuser where username='"+username+"' and password='"+password+"'");
        if (rs.next ())
        {
        session.setAttribute("sessionusername",rs.getString("username"));
        session.setAttribute("sessionpassword",rs.getString("password"));
        session.setAttribute("sessionakses",rs.getString("akses"));
        response.sendRedirect("index-admin.jsp");
        }else{
        response.sendRedirect("login-salah.jsp");
        }
    }
%>
