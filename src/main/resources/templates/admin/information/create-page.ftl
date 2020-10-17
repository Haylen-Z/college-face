<!DOCTYPE html>
<html>
<head>
    <meta   charset="utf-8">
    <title>新增学院信息</title>
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
                    <label for="exampleInputEmail1">信息名</label>
                    <input type="text"  class="form-control" id="name" >
                </div>
                <div class="form-group">
                    <@com.editor/>
                </div>
            </form>
            <button onclick="submitClick()" class="btn btn-primary float-right w-25">提交</button>
        </div>
    </div>

    <script>
        function submitClick() {
            let name = $("#name")[0].value;
            let content = editor.txt.html();
        }
    </script>
</div>
<@com.footer/>
</body>
</html>