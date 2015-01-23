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
                                        <th><center>KODE TRANSAKSI</center></th>
                                        <th><center>NAMA KURIR</center></th>
                                        <th><center>NAMA LOKASI</center></th>
                                        <th><center>TOTAL HARGA</center></th>
                                        </tr>
                                        <tr>
                                        <%
                                        ResultSet rs = st.executeQuery("SELECT * FROM tbkirim,tbtransaksi,tbkurir,tblokasi WHERE tbkirim.kodetransaksi=tbtransaksi.kodetransaksi and tbkirim.kodekurir=tbkurir.kodekurir and tbkirim.kodelokasi=tblokasi.kodelokasi");
                                        while (rs.next()) {
                                        out.println("<tr>");
                                        out.println("<td><center>" + rs.getString ("kodetransaksi") + "</center></td>");
                                        out.println("<td><center>" + rs.getString ("namakurir") + "</center></td>");
                                        out.println("<td><center>" + rs.getString ("lokasi") + "</center></td>");
                                        out.println("<td><center>" + rs.getString ("totalharga") + "</center></td>");
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