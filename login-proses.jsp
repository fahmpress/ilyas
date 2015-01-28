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
        session.setAttribute("sessionlevel",rs.getString("level"));
        response.sendRedirect("login-verifikasi.jsp");
        }else{
        response.sendRedirect("index.jsp?login=gagal");
        }
    }
%>
