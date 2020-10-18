<!DOCTYPE html>
<html>
<head>
    <meta   charset="utf-8">
    <title>编辑学院信息</title>
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
                    <input type="text"  value="${information.name}" class="form-control" id="name" >
                </div>
                <div class="form-group">
                    <@com.editor/>
                    <script>
                        editor.txt.append('${information.detail}');
                    </script>
                </div>
            </form>
            <button onclick="submitClick()" class="btn btn-primary float-right w-25">提交</button>
            <div id="toast" class="toast" role="alert" aria-live="assertive" data-delay="3000">
                <div id="toastContent" class="toast-body">
                </div>
            </div>
        </div>
    </div>

    <script>
        function submitClick() {
            let name = $("#name")[0].value;
            let detail = editor.txt.html();
            if (name === null || name.trim() === ""
                || detail === null || detail.trim() === "") {
                return;
            }
            $.ajax({
                url: "/admin/information/update/${information.id}",
                method: "POST",
                data: {name: name, detail: detail},
                success: function (r) {
                    $("#toastContent").text("更新成功");
                    $("#toast").toast("show");
                },
                error: function (x, s, e) {
                    $("#toastContent").text("更新失败");
                    $("#toast").toast("show");
                }
            });
        }
    </script>
</div>
<@com.footer/>
</body>
</html>