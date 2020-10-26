<!DOCTYPE html>
<html>
<head>
    <meta   charset="utf-8">
    <title>文章编辑</title>
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
                    <label for="exampleInputEmail1">标题</label>
                    <input type="text" value="${article.title}"  class="form-control" id="title" >
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">类型</label>
                    <select id="type" class="form-control">
                        <option value="0" <#if article.type == 0>selected="selected"</#if>>新闻</option>
                        <option value="1" <#if article.type == 1>selected="selected"</#if>>通知</option>
                        <option value="2"<#if article.type == 2>selected="selected"</#if>>专题</option>
                    </select>
                </div>
                <div class="form-group">
                    <@com.editor/>
                    <script>
                        editor.txt.html('${content}');
                    </script>
                </div>

            </form>
            <button onclick="submitClick()" class="btn btn-primary float-right w-25">更新</button>
            <div id="toast" class="toast" role="alert" aria-live="assertive" data-delay="3000">
                <div id="toastContent" class="toast-body">
                </div>
            </div>
        </div>
    </div>

    <script>
        function submitClick() {
            let title = $("#title")[0].value;
            let type = $("#type")[0].value;
            let content = editor.txt.html();
            if (title === null || title.trim() === ""
                || content === null || content.trim() === "") {
                return;
            }
            $.ajax({
                url: "/admin/articles/update/${article.id}",
                method: "POST",
                data: {title: title, type: type, content: content},
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