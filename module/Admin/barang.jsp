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
                                        <th><center>KODE BARANG</center></th>
                                        <th><center>NAMA USER</center></th>
                                        <th><center>NAMA TOKO</center></th>
                                        <th><center>NAMA BARANG</center></th>
                                        <th><center>HARGA</center></th>
                                        <th><center>DESKRIPSI</center></th>
                                        <th><center>TANGGAL MASUK</center></th>
                                        <th><center>TANGGAL KELUAR</center></th>
                                        <th><center>JENIS BARANG</center></th>
                                        <th><center>BERAT</center></th>
                                        <th><center>STOK</center></th>
                                        </tr>
                                        <tr>
                                        <%
                                        ResultSet rs = st.executeQuery("SELECT * FROM tbbarang,tbtoko,tbuser WHERE tbbarang.kodeuser=tbuser.kodeuser and tbbarang.kodetoko=tbtoko.kodetoko");
                                        while (rs.next()) {
                                        out.println("<tr>");
                                        out.println("<td><center>" + rs.getString ("kodebarang") + "</center></td>");
                                        out.println("<td><center>" + rs.getString ("namauser") + "</center></td>");
                                        out.println("<td><center>" + rs.getString ("namatoko") + "</center></td>");
                                        out.println("<td><center>" + rs.getString ("namabarang") + "</center></td>");
                                        out.println("<td><center>" + rs.getString ("harga") + "</center></td>");
                                        out.println("<td><center>" + rs.getString ("deskripsi") + "</center></td>");
                                        out.println("<td><center>" + rs.getString ("tglmasukbarang") + "</center></td>");
                                        out.println("<td><center>" + rs.getString ("tglkeluarbarang") + "</center></td>");
                                        out.println("<td><center>" + rs.getString ("jenisbarang") + "</center></td>");
                                        out.println("<td><center>" + rs.getString ("berat") + "</center></td>");
                                        out.println("<td><center>" + rs.getString ("stok") + "</center></td>");
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