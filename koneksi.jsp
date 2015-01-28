<%@page language="java" import="java.sql.*" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    Class.forName("com.mysql.jdbc.Driver");
    String url = "jdbc:mysql://localhost:3306/atk-store",
    u = "root", p = "";
    Connection conn = DriverManager.getConnection(url, u, p);
    Statement st = conn.createStatement();

    ResultSet rs = null;
    ResultSet rsp = null;
    ResultSet rst = null;
%>

