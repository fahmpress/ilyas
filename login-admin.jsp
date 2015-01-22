<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ATK-store</title>

    <link rel="stylesheet" type="text/css" href="assets_dark_admin/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="assets_dark_admin/font-awesome/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="assets_dark_admin/css/local.css" />

    <script type="text/javascript" src="assets_dark_admin/js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="assets_dark_admin/bootstrap/js/bootstrap.min.js"></script>

    <!-- you need to include the shieldui css and js assets in order for the charts to work -->
    <link rel="stylesheet" type="text/css" href="http://www.shieldui.com/shared/components/latest/css/shieldui-all.min.css" />
    <link rel="stylesheet" type="text/css" href="http://www.shieldui.com/shared/components/latest/css/light-bootstrap/all.min.css" />
    <link id="gridcss" rel="stylesheet" type="text/css" href="http://www.shieldui.com/shared/components/latest/css/dark-bootstrap/all.min.css" />

    <script type="text/javascript" src="http://www.shieldui.com/shared/components/latest/js/shieldui-all.min.js"></script>
    <script type="text/javascript" src="http://www.prepbootstrap.com/Content/js/gridData.js"></script>
</head>

<body>
    
    
    <div class="row">
    <div class="col-md-4 col-md-offset-4" style="margin-top: 150px;">                       
                    <div class="panel panel-info text-center no-boder bg-color-info">
                        <div class="panel-footer back-footer-info">
                           Login Admin
                        </div>
                        <div class="panel-body">
                        <div class="col-md-10 col-md-offset-1">
                            <form class="cmxform" method="post" role="form" action="login-proses.jsp" id="commentForm">
                                <div class="form-group">
                                    <input class="form-control" name="user" minlength="4" type="text" placeholder="Username" required>
                                </div>
                                <div class="form-group">
                                    <input name="pass" type="password" class="form-control" id="cname" minlength="4" placeholder="Password" required>
                                </div>
                                <input type="submit" value="Login" class="btn btn-info ">
                                </div>
                            </form>
                        </div>
                    </div>                        
                        </div>
    </div>
    
    