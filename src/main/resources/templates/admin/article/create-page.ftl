<!DOCTYPE html>
<html>
    <head>
        <meta   charset="utf-8">
        <title>文章发布</title>
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
                            <input type="text"  class="form-control" id="title" >
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">类型</label>
                            <select id="type" class="form-control">
                                <option value="0">新闻</option>
                                <option value="1">通知</option>
                                <option value="2">专题</option>
                            </select>
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
                    let title = $("#title")[0].value;
                    let type = $("#type")[0].value;
                    let content = editor.txt.html();
                    console.log(title);
                    console.log(type);
                    console.log(content);
                }
            </script>
        </div>
    <@com.footer/>
    </body>
</html>