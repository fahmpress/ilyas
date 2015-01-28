<%@include file="koneksi.jsp" %>

<%
    String act=request.getParameter("act");
    String username=request.getParameter("user");
    String password=request.getParameter("pass");
    if(act.equals("login")){
        rs = st.executeQuery("SELECT * from tbuser where username='"+username+"' and password='"+password+"'");
        if (rs.next ())
        {
        session.setAttribute("sessionusername",rs.getString("username"));
        session.setAttribute("sessionpassword",rs.getString("password"));
        session.setAttribute("sessionakses",rs.getString("akses"));
        response.sendRedirect("loginverifikasi.jsp");
        }else{
        response.sendRedirect("index.jsp?login=gagal");
        }
    }
%>
