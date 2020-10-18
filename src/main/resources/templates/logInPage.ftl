<!DOCTYPE html>
<html>
    <head>
        <meta   charset="utf-8">
        <title>管理员登录页面</title>
        <#import "common.ftl" as com>
        <@com.depend/>
    </head>

    <body>
    <main class="container">
        <div class="row m-5">
            <div class="col-4 m-auto">
                <div class="card">
                    <div class="card-body">
                        <form name="form" action="/login" onsubmit="return verify()" method="POST" class="form-horizontal" role="form">
                            <div    class="form-group">
                                <div>
                                    <input  type="text" class="form-control" name="username"  placeholder="管理员账号">
                                </div>
                            </div>
                            <div    class="form-group">
                                <div>
                                    <input  type="password" class="form-control" name="password"  placeholder="密码">
                                </div>
                            </div>
                            <div    class="form-group">
                                <div>
                                    <button type="submit" class="btn btn-primary w-100">登录</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </main>
    <@com.footer/>
    
    <script>
        function verify() {
            let name = document["form"]["username"].value;
            let pass = document["form"]["password"].value;
            if (name === null || name.trim() === "" || pass === null || pass.trim() === "") {
                return false;
            }
            return true;
        }
    </script>
    </body>
</html>