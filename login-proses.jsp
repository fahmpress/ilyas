<%@ page import="java.sql.*,java.util.*,java.text.*,java.text.SimpleDateFormat" %>
<%@ page import="java.sql.*" %>
<%
String username=request.getParameter("user");
session.putValue("user",username);
String password=request.getParameter("pass");
session.putValue("pass",password);
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/atk-store", "root", "");
Statement st = con.createStatement();

ResultSet rs = st.executeQuery("SELECT * from tbadmin where username='"+username+"' and password='"+password+"'");
if (rs.next ())
{
session.setAttribute("sessionusername",rs.getString("username"));
session.setAttribute("sessionpassword",rs.getString("password"));
session.setAttribute("sessionnama",rs.getString("nama"));
response.sendRedirect("index-admin.jsp?link=home");
}else{
%>
<jsp:forward page="login-salah.jsp"/>
<%
}
%>
