<!DOCTYPE html>
<html>
<head>
    <meta   charset="utf-8">
    <title>编辑教师信息</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <#import "../../common.ftl" as com>
    <@com.depend/>
</head>
<body>
<div    class="container">
    <div class="row">
        <@com.navSide 12/>
        <div class="col-8 m-4">
            <form>
                <div class="form-group">
                    <label for="exampleInputEmail1">姓名</label>
                    <input type="text"  class="form-control" id="title" >
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">职称</label>
                    <input id="level" class="form-control" type="text">
                </div>
                <div class="form-group">
                    <@com.editor/>
                </div>
            </form>
            <button onclick="submitClick()" class="btn btn-primary float-right w-25">发布</button>
        </div>
    </div>

    <script>
        function submitClick() {
        }
    </script>
</div>
<@com.footer/>
</body>
</html>