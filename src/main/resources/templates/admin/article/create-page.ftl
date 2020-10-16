<!DOCTYPE html>
<html>
    <head>
        <meta   charset="utf-8">
        <title>新增文章信息</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="/css/bootstrap.min.css">
        <script src="/js/jquery.min.js"></script>
        <script src="/js/bootstrap.min.js"></script>
        <script src="/js/jquery.cookie.min.js"></script>
    </head>
    <body>
        <div    class="container">
            <h5 style="margin-top: 50px; text-align: center;">新增文章信息</h5>
            <div    class="row">
                <div    class="col-sm-8 input-group input-group-lg"   style="margin-top: 20px;">
                    <input  type="text" class="form-control"    placeholder="文章标题">
                </div>
                <div    class="col-sm-2"    style="margin-top: 20px;">
                    <div    class="btn btn-group">
                        <button type="button" class="btn btn-outline-info btn-lg  dropdown-toggle"  data-toggle="dropdown">保存</button>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="#">新闻</a>
                            <a class="dropdown-item" href="#">通知</a>
                            <a class="dropdown-item" href="#">专题</a>
                          </div>
                    </div>
                    
                </div>
            </div>
            <!--使用富文本编辑器wangEditor-->
            <div    id="wangE"  style="margin-top: 60px;"></div>
            <script type="text/javascript" src="/js/wangEditor.min.js"></script>
            <script type="text/javascript">
                const   E = window.wangEditor
                const editor = new E( document.getElementById('wangE') )
                editor.config.height = 400      /*设置编辑器的高*/
                editor.create()
            </script>
        </div>
    </body>
</html>