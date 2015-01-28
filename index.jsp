
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>ATK Store</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="">

	<!--link rel="stylesheet/less" href="less/bootstrap.less" type="text/css" /-->
	<!--link rel="stylesheet/less" href="less/responsive.less" type="text/css" /-->
	<!--script src="js/less-1.3.3.min.js"></script-->
	<!--append ?#!watch? to the browser URL, then refresh the page. -->
	
	<link href="asset-layoutit/css/bootstrap.min.css" rel="stylesheet">
	<link href="asset-layoutit/css/style.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="assets_dark_admin/font-awesome/css/font-awesome.min.css" />

  <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
  <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
  <![endif]-->

  <!-- Fav and touch icons -->
  <link rel="asset-layoutit/apple-touch-icon-precomposed" sizes="144x144" href="asset-layoutit/img/apple-touch-icon-144-precomposed.png">
  <link rel="asset-layoutit/apple-touch-icon-precomposed" sizes="114x114" href="asset-layoutit/img/apple-touch-icon-114-precomposed.png">
  <link rel="asset-layoutit/apple-touch-icon-precomposed" sizes="72x72" href="asset-layoutit/img/apple-touch-icon-72-precomposed.png">
  <link rel="asset-layoutit/apple-touch-icon-precomposed" href="asset-layoutit/img/apple-touch-icon-57-precomposed.png">
  <link rel="shortcut icon" href="img/favicon.png">
  
	<script type="text/javascript" src="asset-layoutit/js/jquery.min.js"></script>
	<script type="text/javascript" src="asset-layoutit/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="asset-layoutit/js/scripts.js"></script>
</head>

<body>
<div class="container">
<nav class="navbar navbar-default navbar-fixed-top navbar-inverse" role="navigation">
				<div class="navbar-header">
					 <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button> <a class="navbar-brand" href="#">Home</a>
				</div>
				
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li class="active">
							<a href="#login" data-toggle="modal">Login</a>
						</li>
						<li>
							<a href="#">Feature</a>
						</li>
                                                <li>
							<a href="#registrasi" data-toggle="modal">Registrasi</a>
						</li>
					</ul>
					
					<ul class="nav navbar-nav navbar-right">
						<form class="navbar-form navbar-left" role="search">
						<div class="form-group">
							<input class="form-control" type="text">
						</div> <button type="submit" class="btn btn-default">Submit</button>
					</form>
					</ul>
				</div>
				
			</nav>
			
	<div class="row clearfix">
		<div class="col-md-12 column" style="margin-top: 75px; margin-bottom: 50px;">
			<img alt="140x140" src="http://lorempixel.com/140/140/">
		</div>
	</div>
	<div class="row clearfix">
		<div class="col-md-4 column">
			<h3>
				Pilih Kategori
			</h3>
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title">
						Kategori 1
					</h3>
				</div>
				<div class="panel-heading">
					<h3 class="panel-title">
						Kategori 2
					</h3>
				</div>
			</div>
		</div>
		<div class="col-md-8 column">
			<div class="row">
				<div class="col-md-4">
					<div class="thumbnail">
						<img alt="300x200" src="http://lorempixel.com/600/200/people">
						<div class="caption">
							<h3>
								Thumbnail label
							</h3>
							<p>
								Cras justo odio, dapibus ac facilisis in.
							</p>
							<p>
								<a class="btn btn-primary" href="#"><i class="fa fa-shopping-cart"></i> Tambah</a>
								<a class="btn btn-primary" href="#"><i class="fa fa-eye"></i> Detail</a>
							</p>
						</div>
                                                
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="row clearfix">
		<div class="col-xs-12 column">
			<div class="panel panel-default panel-heading text-center">
			Copyright 2015 by Muhamad Ilyas
			</div>
		</div>
	</div>
	
	<div class="modal fade" id="login" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							 <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
							<h4 class="modal-title" id="myModalLabel">
								Login User
							</h4>
						</div>
						<div class="modal-body">
							<form role="form" method="post" action="index-admin.jsp">
								<div class="form-group">
									 <label for="exampleInputEmail1">User Name</label><input class="form-control" id="exampleInputEmail1" type="username" />
								</div>
								<div class="form-group">
									 <label for="exampleInputPassword1">Password</label><input class="form-control" id="exampleInputPassword1" type="password" />
								</div>
								<button type="submit" class="btn btn-primary">Login</button>
							</form>
						</div>
					</div>
					
				</div>
				
			</div>
    
    
    <div class="modal fade" id="registrasi" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							 <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
							<h4 class="modal-title" id="myModalLabel">
								Form Registrasi
							</h4>
						</div>
						<div class="modal-body">
							<form role="form">
				<div class="form-group">
					 <label for="exampleInputEmail1"> User Name </label><input class="form-control" id="exampleInputEmail1" type="text" required/>
				</div>
				<div class="form-group">
					 <label for="exampleInputEmail1"> Nama </label><input class="form-control" id="exampleInputEmail1" type="text" required/>
				</div>
                                <div class="form-group">
					 <label for="exampleInputEmail1"> Alamat </label><input class="form-control" id="exampleInputEmail1" type="text" required/>
				</div>
                                <div class="form-group">
					 <label for="exampleInputEmail1"> Email </label><input class="form-control" id="exampleInputEmail1" type="text" required/>
				</div>
                                <div class="form-group">
					 <label for="exampleInputPassword1"> Password </label><input class="form-control" id="exampleInputPassword1" type="password" required/>
				</div>
                                <div class="form-group">
					 <label for="exampleInputEmail1"> Tanggal Lahir </label><input class="form-control" id="exampleInputEmail1" type="text" required/>
				</div>
                                <div class="form-group">
					 <label for="exampleInputEmail1"> Jenis Kelamin </label><input class="form-control" id="exampleInputEmail1" type="text" required/>
				</div>
                                
				<button type="submit" class="btn btn-success ">Daftar</button>
			</form>
						</div>
					</div>
					
				</div>
				
			</div>
</div>
</body>
</html>
