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
                                        <th><center>KODE TOKO</center></th>
                                        <th><center>NAMA TOKO</center></th>
                                        <th><center>NAMA USER</center></th>
                                        <th><center>LOKASI</center></th>
                                        <th><center>DESKRIPSI</center></th>
                                        </tr>
                                        <tr>
                                        <%
                                        ResultSet rs = st.executeQuery("SELECT * FROM tbtoko,tbuser,tblokasi WHERE tbtoko.kodeuser=tbuser.kodeuser and tbtoko.kodelokasi=tblokasi.kodelokasi");
                                        while (rs.next()) {
                                        out.println("<tr>");
                                        out.println("<td><center>" + rs.getString ("kodetoko") + "</center></td>");
                                        out.println("<td><center>" + rs.getString ("namatoko") + "</center></td>");
                                        out.println("<td><center>" + rs.getString ("namauser") + "</center></td>");
                                        out.println("<td><center>" + rs.getString ("namalokasi") + "</center></td>");
                                        out.println("<td><center>" + rs.getString ("deskripsi") + "</center></td>");
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