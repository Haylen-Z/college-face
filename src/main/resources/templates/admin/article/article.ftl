<!DOCTYPE html>
<html>
    <head>
        <meta   charset="utf-8">
        <title>文章列表</title>
        <link rel="stylesheet" href="/css/bootstrap.min.css">
        <script src="/js/jquery.min.js"></script>
        <script src="/js/bootstrap.min.js"></script>
        <script src="/js/jquery.cookie.min.js"></script>
    </head>
    <body>
        <div    class="container">
            <div    class="row">
                <div    class="col-sm-3"    style="margin-top: 50px;">
                    <nav    class="nav   bg-light">
                        <ul class="nav nav-pills flex-column">
                            <li class="nav-item">
                                <a  class="nav-link " href="#">学院信息列表</a>
                            </li>
                            <li class="nav-item">
                                <a  class="nav-link active" href="#">文章列表</a>
                            </li>
                            <li class="nav-item">
                                <a  class="nav-link" href="#">教师信息列表</a>
                            </li>
                            <li class="nav-item">
                                <a  class="nav-link" href="#">首页推荐列表</a>
                            </li>
                        </ul>
                    </nav>
                </div>
                <div    class="col-sm-9"    style="margin-top: 50px;">
                    <ul class="nav nav-tabs nav-justified">
                        <li class="nav-item">
                            <a  class="nav-link active" href="article.ftl">新闻</a>
                        </li>
                        <li class="nav-item">
                            <a  class="nav-link" href="notice.html">通知</a>
                        </li>
                        <li class="nav-item">
                            <a  class="nav-link" href="topic.html">专题</a>
                        </li>
                    </ul>
                    <div  style="margin-top: 50px;">
                        <ul  class="list-group ">
                                 <li  class="list-group-item">
                                     <label class="col-sm-9">name</label>
                                     <button type="submit"   class="btn btn-outline-warning">编辑</button>
                                     <button type="submit"   class="btn btn-outline-danger">删除</button>
                                 </li>
                                 <li  class="list-group-item">
                                     <label class="col-sm-9">namesadsa</label>
                                     <button type="submit"   class="btn btn-outline-warning">编辑</button>
                                     <button type="submit"   class="btn btn-outline-danger">删除</button>
                                 </li>
                                 <li  class="list-group-item">
                                     <label class="col-sm-9">asdsadname</label>
                                     <button type="submit"   class="btn btn-outline-warning">编辑</button>
                                     <button type="submit"   class="btn btn-outline-danger">删除</button>
                                 </li>
                                 <li  class="list-group-item">
                                     <label class="col-sm-9">nsadsame</label>
                                     <button type="submit"   class="btn btn-outline-warning">编辑</button>
                                     <button type="submit"   class="btn btn-outline-danger">删除</button>
                                 </li>
                                 <li  class="list-group-item">
                                     <label class="col-sm-9">nafdme</label>
                                     <button type="submit"   class="btn btn-outline-warning">编辑</button>
                                     <button type="submit"   class="btn btn-outline-danger">删除</button>
                                 </li>
                         </ul>
                     </div>
                     <button type="submit"   class="btn btn-outline-success" style="margin-top: 20px;">新增</button>
                </div> 
            </div>
        </div>
    </body>
</html>