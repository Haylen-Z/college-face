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
                    <input type="text" value="${teacher.name}"  class="form-control" id="name" >
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">职称</label>
                    <input value="${teacher.level}" id="level" class="form-control" type="text">
                </div>
                <div class="form-group">
                    <@com.editor/>
                    <script>
                        editor.txt.html('${content}');
                    </script>
                </div>
            </form>
            <button onclick="submitClick()" class="btn btn-primary float-right w-25">发布</button>
            <div id="toast" class="toast" role="alert" aria-live="assertive" data-delay="3000">
                <div id="toastContent" class="toast-body">
                </div>
            </div>
        </div>
    </div>

    <script>
        function submitClick() {
            let name = $("#name")[0].value;
            let level = $("#level")[0].value;
            let content = editor.txt.html();
            if (name === null || name.trim() === ""
                || content === null || content.trim() === ""
                || level === null || level.trim() === "") {
                return;
            }
            $.ajax({
                url: "/admin/teachers/update/${teacher.id}",
                method: "POST",
                data: {name: name, level: level, content: content},
                success: function (r) {
                    $("#toastContent").text("编辑成功");
                    $("#toast").toast("show");
                }
            })
        }
    </script>
</div>
<@com.footer/>
</body>
</html>