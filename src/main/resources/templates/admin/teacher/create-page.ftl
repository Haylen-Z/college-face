<!DOCTYPE html>
<html>
    <head>
        <meta   charset="utf-8">
        <title>新增教师信息</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
        <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://cdn.staticfile.org/popper.js/1.15.0/umd/popper.min.js"></script>
        <script src="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div    class="container">
            <div    class="row">
                <div    class="col-sm-8 input-group input-group-lg"   style="margin-top: 20px;">
                    <input  type="text" class="form-control"    placeholder="教师姓名">
                </div>
                <div    class="col-sm-2"    style="margin-top: 20px;">
                    <button type="button"   class="btn btn-outline-info btn-lg">保存</button>
                </div>
                <form   style="margin-top: 20px;">
                    <div    class="radio">
                          <label><input    type="radio"    name="optradio">正高职称</label>
                          <label><input    type="radio"    name="optradio">副高职称</label>
                          <label><input    type="radio"    name="optradio">中级职称</label>
                    </div>
                </form>
            </div>
            <!--使用富文本编辑器wangEditor-->
            <div    id="wangE"  style="margin-top: 20px;"></div>
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