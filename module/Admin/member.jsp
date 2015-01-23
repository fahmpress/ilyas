<%@ page import="java.sql.*,java.util.*,java.text.*,java.text.SimpleDateFormat" %>
<%@ page import="java.sql.*" %>

<%
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/atk-store", "root", "");
Statement st = con.createStatement();
%>
<div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover">
                                    <thead>
                                        <tr>
                                        <th><center>KODE USER</center></th>
                                        <th><center>USER NAME</center></th>
                                        <th><center>NAMA</center></th>
                                        <th><center>ALAMAT</center></th>
                                        <th><center>EMAIL</center></th>
                                        <th><center>PASSWORD</center></th>
                                        <th><center>TANGGAL LAHIR</center></th>
                                        <th><center>JENIS KELAMIN</center></th>
                                      
                                        </tr>
                                        <tr>
                                        <%
                                        ResultSet rs = st.executeQuery("SELECT * from tbuser");
                                        while (rs.next()) {
                                        out.println("<tr>");
                                        out.println("<td><center>" + rs.getString ("kodeuser") + "</center></td>");
                                        out.println("<td><center>" + rs.getString ("username") + "</center></td>");
                                        out.println("<td><center>" + rs.getString ("nama") + "</center></td>");
                                        out.println("<td><center>" + rs.getString ("alamat") + "</center></td>");
                                        out.println("<td><center>" + rs.getString ("email") + "</center></td>");
                                        out.println("<td><center>" + rs.getString ("password") + "</center></td>");
                                        out.println("<td><center>" + rs.getString ("tgllahir") + "</center></td>");
                                        out.println("<td><center>" + rs.getString ("jeniskelamin") + "</center></td>");
                                      
                                        }
                                        rs.close();
                                        %>
                                        </tr>
                                    </thead>
                                </table>
                            </div>
			</div>
                    </div>
		</div>
        </div>