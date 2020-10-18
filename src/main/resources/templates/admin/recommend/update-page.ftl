<!DOCTYPE html>
<html>
    <head>
        <meta   charset="utf-8">
        <title>修改推荐信息</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="/css/bootstrap.min.css">
        <script src="/js/jquery.min.js"></script>
        <script src="/js/bootstrap.min.js"></script>
        <script src="/js/jquery.cookie.min.js"></script>
    </head>
    <body>
        <div    class="container">
            <div    class="row">
                <form   class=" col-sm-10">
                    <div    class=" input-group input-group-lg"   style="margin-top: 20px;">
                        <input  type="text" class="form-control"    placeholder="标题">
                    </div>
                </form>
                <form   class="col-sm-10">
                    <div    class=" input-group input-group-lg"   style="margin-top: 20px;">
                        <input  type="text" class="form-control"    placeholder="文章id">
                    </div>
                </form>

                <div    class=" col-sm-7 content"style="margin-top: 20px;">
                    <div>
                        <label>上传图片</label>
                        <input  type="file" id="picture"    class="btn btn-outline-info">
                    </div>
                    <div>
                        <img    src=""  class="hide">
                    </div>
                    <script>
                        $(document).ready(function(){
                            $("#picture").change(function(){

                            });
                        }
                        );

                        $(document).ready(function(){
                            $("#picture").change(function(){
                                var current_pic=this.files[0];
                                preview_picture(current_pic);
                            });
                        });

                        function    preview_picture(pic){
                            var r=new   FileReader();
                            r.readAsDataURL(pic);
                            r.onload=function(e){
                                $("content>div>img").attr("src",this.result).show();
                            }
                        }
                        document.getElementById("picture").innerHTML = preview_picture("img");
                    </script>
                </div>

                <div    class="col-sm-offset-5 col-sm-7"    style="margin-top: 20px;">
                    <button type="button"   class="btn btn-outline-info btn-lg">保存</button>
                </div>
            </div>
            
        </div>
    </body>
</html>