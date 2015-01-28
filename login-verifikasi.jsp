<%@ page import="java.sql.*,java.util.*,java.text.*,java.text.SimpleDateFormat" %>
<%@ page import="java.sql.*" %>
<%@include file="koneksi.jsp" %>
<%
String username = (String)session.getAttribute("sessionusername");
rs = st.executeQuery("SELECT * from tbuser where username='"+username+"'");
while (rs.next()) {

String level=rs.getString("level");
if(level.equals("admin"))
    {
    response.sendRedirect("index-admin.jsp?link=admin");
    }
        else if(level.equals("user"))
        {
        response.sendRedirect("index-user.jsp?link=user");
        }
{
%>
<%
}
}
%>