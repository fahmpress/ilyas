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
                                        <th><center>NAMA USER</center></th>
                                        <th><center>NAMA TOKO</center></th>
                                        <th><center>NAMA BARANG</center></th>
                                        <th><center>JUMLAH BARANG</center></th>
                                        <th><center>TANGGAL TRANSAKSI</center></th>
                                        <th><center>SUB TOTAL HARGA</center></th>
                                        </tr>
                                        <tr>
                                        <%
                                        ResultSet rs = st.executeQuery("SELECT * FROM tbtransaksi,tbuser,tbtoko,tbbarang WHERE tbtransaksi.kodeuser=tbuser.kodeuser and tbtransaksi.kodetoko=tbtoko.kodetoko and tbtransaksi.kodebarang=tbbarang.kodebarang");
                                        while (rs.next()) {
                                        out.println("<tr>");
                                        out.println("<td><center>" + rs.getString ("kodetransaksi") + "</center></td>");
                                        out.println("<td><center>" + rs.getString ("namauser") + "</center></td>");
                                        out.println("<td><center>" + rs.getString ("namatoko") + "</center></td>");
                                        out.println("<td><center>" + rs.getString ("namabarang") + "</center></td>");
                                        out.println("<td><center>" + rs.getString ("jmlbarang") + "</center></td>");
                                        out.println("<td><center>" + rs.getString ("tgltransaksi") + "</center></td>");
                                        out.println("<td><center>" + rs.getString ("subtotal") + "</center></td>");
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