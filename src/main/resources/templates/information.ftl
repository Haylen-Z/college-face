<!--前端列表-->
<!DOCTYPE html>
<html>
<head>
    <title>导航栏</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/bootstrap.min.css">
    <script src="/js/jquery.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>
    <script src="/js/jquery.cookie.min.js"></script>

</head>

<body>

    <!--导航栏前添加桂工logo-->
    <!--使用 .navbar-brand 类来设置图片自适应导航栏-->
    <!--使用bg-light将导航栏颜色改为浅色-->
    <nav    class="navbar navbar-expand-sm bg-light navbar-dark">
        <a class="navbar-brand" href="#">
            <img src="/image/2.jpg" alt="logo" style="width:100px;">    <!--logo图片及展示大小-->
        </a>

        <!--添加导航栏-->
        <div    class="container"> 
            <ul class="nav  nav-tabs" >
                <li class="nav-item">
                    <a  class="nav-link "    href="#">网站首页</a>
                </li>

                <!--设置选项卡下拉菜单-->
                <li class="nav-item  dropdown">
                    <a  class="nav-link  dropdown-toggle    active"   data-toggle="dropdown"  href="#">学院概况</a>
                        <div    class="dropdown-menu">
                            <a  class="dropdown-item"   href="#">学院简介</a>
                            <a  class="dropdown-item"   href="#">学院领导</a>
                            <a  class="dropdown-item"   href="#">组织机构</a>
                            <a  class="dropdown-item"   href="#">宣讲视频</a>
                        </div>
                </li>
                <li class="nav-item  dropdown">
                    <a  class="nav-link  dropdown-toggle"   data-toggle="dropdown"  href="#">教育教学</a>
                        <div    class="dropdown-menu">
                            <a  class="dropdown-item"   href="#">本科生教育</a>
                            <a  class="dropdown-item"   href="#">研究生教育</a>
                        </div>
                </li>
                <li class="nav-item  dropdown">
                    <a  class="nav-link  dropdown-toggle"   data-toggle="dropdown"  href="#">师资队伍</a>
                        <div    class="dropdown-menu">
                            <a  class="dropdown-item"   href="#">整体概况</a>
                            <a  class="dropdown-item"   href="#">职称结构</a>
                        </div>
                </li>
                <li class="nav-item  dropdown">
                    <a  class="nav-link  dropdown-toggle"   data-toggle="dropdown"  href="#">科学研究</a>
                        <div    class="dropdown-menu">
                            <a  class="dropdown-item"   href="#">科研项目</a>
                            <a  class="dropdown-item"   href="#">科研成果</a>
                        </div>
                </li>
                <li class="nav-item  dropdown">
                    <a  class="nav-link  dropdown-toggle"   data-toggle="dropdown"  href="#">学科建设</a>
                        <div    class="dropdown-menu">
                            <a  class="dropdown-item"   href="#">广西嵌入式技术与智能系统重点实验室</a>
                            <a  class="dropdown-item"   href="#">广西重点学科计算机应用技术</a>
                            <a  class="dropdown-item"   href="#">广西一体化课程建设设计计算机应用技术</a>
                            <a  class="dropdown-item"   href="#">广西级精品课程计算机网络</a>
                            <a  class="dropdown-item"   href="#">广西级精品课程C语言程序设计</a>
                        </div>
                </li>
            </ul>
        </div>
    </nav>
    <div>
        <img    style="width: 100%;height: 250px;"    src="/image/5.jpg">
    </div>
    <div    class="container">
        <div    class="row">
            <div    class="col-sm-2"    style="margin-top: 30px;">
                <nav    class="nav  bg-light">
                    <ul class="nav nav-pills    flex-column">
                        <li class="nav-item">
                            <a  class="nav-link active">学院简介</a>
                        </li>
                        <li class="nav-item">
                            <a  class="nav-link">学院领导</a>
                        </li>
                        <li class="nav-item">
                            <a  class="nav-link">组织机构</a>
                        </li>
                        <li class="nav-item">
                            <a  class="nav-link">宣传视频</a>
                        </li>
                    </ul>
                </nav>
            </div>
            <div    class="col-sm-8"   style="margin-top: 30px;    padding-left: 20px;">
                <h3 style="color:darkblue">学院简介</h3>
                <hr style=" height:1px;border:none;border-top:2px dotted black;" />
            </div>
        </div>
    </div>
</body>
</html>

