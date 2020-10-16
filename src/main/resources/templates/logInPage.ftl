<!DOCTYPE html>
<html>
    <head>
        <meta   charset="utf-8">
        <title>管理员登录页面</title>
        <link rel="stylesheet" href="/css/bootstrap.min.css">
	    <script src="/js/jquery.min.js"></script>
        <script src="/js/bootstrap.min.js"></script>
        <script src="/js/jquery.cookie.min.js"></script>
        <style>
                body {
                        background:url(image/v6.jpg) no-repeat ;
                        background-size:100%;
                }
        </style>
    </head>
    <body>
        <form action="home.ftl" method="POST" class="form-horizontal" role="form"></br></br></br></br></br></br>
            <div    class="form-group">
                    <label  for="userName"  class="col-sm-5 control-label">管理员账号：</label>
                    <div    class="col-sm-3">
                        <input  type="text" class="form-control"    id="userName"   placeholder="管理员账号">
                    </div>
                </div>
                <div    class="form-group">
                    <label  for="passWord"  class="col-sm-5 control-label">密码：</label>
                    <div    class="col-sm-3">
                        <input  type="password" class="form-control"    id="passWord"   placeholder="密码">
                    </div>
                </div>
                <div    class="form-group">
                    <div    class="col-sm-offset-5 col-sm-7">
                        <button type="submit"   style="width: 200px;height: 40px;"   class="btn btn-primary">登录</button>
                    </div>
                </div>
            </form>   
    </body>
</html>