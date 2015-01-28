<html>
<%@ page language="java" import="java.sql.*" %>
<%
ResultSet myResultSet=null;
String username=request.getParameter("username");
String nama=request.getParameter("nama");
String alamat=request.getParameter("alamat");
String email=request.getParameter("email");
String password=request.getParameter("password");
String tgllahir=request.getParameter("tgllahir");
String jeniskelamin=request.getParameter("jeniskelamin");
String lokasi=request.getParameter("lokasi");
Class.forName("org.gjt.mm.mysql.Driver");
Connection myConn = DriverManager.getConnection("jdbc:mysql://localhost:3306/atk-store", "root", "");
Statement stmt=myConn.createStatement();
String kueri="insert into tbuser SET username='"+username+"', nama='"+nama+"', alamat='"+alamat+"', email='"+email+"', password='"+password+"', tgllahir='"+tgllahir+"', jeniskelamin='"+jeniskelamin+"', lokasi='"+lokasi+"', level='user'";
int edittabel=stmt.executeUpdate(kueri);
response.sendRedirect("index.jsp?link=dosen");
%>
</html>