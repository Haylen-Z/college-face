<!DOCTYPE html>
<html>
<head>
    <meta   charset="utf-8">
    <title>新增首页推荐</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <#import "../../common.ftl" as com>
    <@com.depend/>
</head>
<body>
<div    class="container">
    <div class="row">
        <@com.navSide 12/>
        <div class="col-8 m-4">
            <div id="toast" class="toast" role="alert" aria-live="assertive" data-delay="3000">
                <div id="toastContent" class="toast-body">
                </div>
            </div>
            <form>
                <div class="form-group">
                    <label for="exampleInputEmail1">标题</label>
                    <input type="text"  class="form-control" id="title" >
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">文章id</label>
                    <input class="form-control" id="article-id" >
                </div>
                <div class="form-group">
                    <div class="input-group">
                        <div class="custom-file">
                            <input type="file" onchange="showFilename(this.files[0])" class="custom-file-input" id="inputGroupFile04" aria-describedby="inputGroupFileAddon04">
                            <label id="filename_label" class="custom-file-label" for="inputGroupFile04">选择文件</label>
                        </div>
                        <div class="input-group-append">
                            <button onclick="uploadFile()" class="btn btn-outline-secondary" type="button" id="inputGroupFileAddon04">上传</button>
                        </div>
                    </div>
                    <script>
                        function showFilename(file){
                            $("#filename_label").text(file.name);
                        }

                        function uploadFile() {
                            let file = $("#inputGroupFile04")[0].files[0];
                            let formData = new FormData();
                            formData.append("file", file);
                            $.ajax({
                                url: "/admin/files/upload",
                                method: "POST",
                                data: formData,
                                processData: false,
                                contentType: false,
                                success: function (r) {
                                    $("#img").attr("src", r.data);
                                }
                            })
                        }
                    </script>
                </div>
                <img id="img" class="img-fluid">
            </form>
            <button onclick="submitClick()" class="btn btn-primary m-3 float-right w-25">提交</button>
        </div>
    </div>

    <script>
        function submitClick() {
            let title = $("#title")[0].value;
            let articleId = $("#article-id")[0].value;
            let cover = $("#img").attr("src");
            if (title === null || title.trim() === ""
                || cover === null || cover.trim() === ""
                || articleId === null) {
                return;
            }
             $.ajax({
                url: "/admin/recommends/create",
                method: "POST",
                data: {title: title, articleId: articleId, cover: cover},
                success: function (r) {
                    $("#toastContent").text("添加成功");
                    $("#toast").toast("show");
                },
                error: function (x, s, e) {
                    $("#toastContent").text("添加失败");
                    $("#toast").toast("show");
                }
            });
        }
    </script>
</div>
<@com.footer/>
</body>
</html>