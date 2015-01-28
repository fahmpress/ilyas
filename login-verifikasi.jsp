<%@ page import="java.sql.*,java.util.*,java.text.*,java.text.SimpleDateFormat" %>
<%@ page import="java.sql.*" %>
<%@include file="koneksi.jsp" %>
<%
String username = (String)session.getAttribute("sessionusername");
rs = st.executeQuery("SELECT * from tbuser where username='"+username+"'");
while (rs.next()) {

String akses=rs.getString("akses");
if(akses.equals("admin")){

response.sendRedirect("index-admin.jsp?lik=admin");
}
{
%>
<%
}
}
%>