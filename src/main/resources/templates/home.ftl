<!--前端主页-->
<!DOCTYPE html>
<html>
<head>
  <title>导航栏</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="/css/bootstrap.min.css">
    <script src="/js/jquery.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>
    <script src="/js/jquery.cookie.min.js"></script>
  <style>
/*新闻专栏*/
    /*“学院新闻”字体的背景*/
      .new{
        width: 100%;
        height: 60px;
        right: 0px;
        left: 0px;
        background-repeat:no-repeat;
        background-color:dodgerblue;
      }
      /*设置字体颜色*/
      .texts{
          color: floralwhite;
          position: relative;
          line-height:60px;
          display: inline;  /*内联元素，使文本文字和链接在同一行显示*/
      }
      /*固定“学院新闻”字体位置*/
      .colors{
        left: 150px;
      }
     /*固定“更多>>”字体位置*/
      .links{
        left: 1000px;
      }
      .link{
          left:400px;
      }
    /*新闻内容字体设置*/
      .news{
          left: 150px;
      }
        /*新闻日期对齐*/
     .date{
        position:relative;
        text-align: right;
    }

/*轮播图大小设置*/
.carousel-inner img {
      width: 800px;
      height: 350px;
      position: relative;
    padding-right: 200px;
  }
  /*边框竖线*/
  .sidebar{
      float:left;
      padding-left: 5px;
      border-left: 2px solid   #dddddd;
  }
   /*公告内容字体设置*/
   .notice{
          margin-left: 120px;
      }
    /*专题图片大小设置*/
    .topic  img{
        width: 500px;
        height: 200px;
        position: relative;
        padding-left: 100px;
    }
    /*分割线*/
    .aline{
        background-color: black;
        height: 1px;
    }
  </style>
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
                    <a  class="nav-link active"    href="#">网站首页</a>
                </li>

                <!--设置选项卡下拉菜单-->
                <li class="nav-item  dropdown">
                    <a  class="nav-link  dropdown-toggle"   data-toggle="dropdown"  href="#">学院概况</a>
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


<!---->
    <div    class="new">
        <!--display:inline，内联元素，使文本文字和链接在同一行显示-->
            <h6  class="texts   colors">
                <b>学院新闻  |  ACADEMY  NEWS</b>
            </h6>
            <a  class="texts    links"    href="#"   target="_blank"><b>更多>></b></a>       
    </div>

<!--格栅布局-->
    <div    class="container-fluid" style="margin-top: 50px;">
        <div    class="row">
            <!--左侧新闻-->
            <div    class="col-sm-3 news    list-group">
                <a  href="#"    class="text-info">sdfsgdfgdfnew1</a>
                <a  href="#"    class="text-info">new2</a>
                <a  href="#"    class="text-info">new3</a>
                <a  href="#"    class="text-info">new4</a>
                <a  href="#"    class="text-info">new5</a>
                <a  href="#"    class="text-info">new6</a>
                <a  href="#"    class="text-info">new7</a>
            </div>
            <div    class="col-sm-3 date    list-group">
                    <span   class="text-info">2020年10月01日</span>
                    <span   class="text-info">2020年10月01日</span>
                    <span   class="text-info">2020年10月01日</span>
                    <span   class="text-info">2020年10月01日</span>
                    <span   class="text-info">2020年10月01日</span>
                    <span   class="text-info">2020年10月01日</span>
                    <span   class="text-info">2020年10月01日</span>
            </div>
            <!--右侧轮播图-->
            <div    class="col-sm-6">
                <div  id="slideShow"  class="carousel slide" data-ride="carousel">

                    <!-- 指示符 -->
                    <ul class="carousel-indicators">
                        <li data-target="#slideShow" data-slide-to="0" class="active"></li>
                        <li data-target="#slideShow" data-slide-to="1"></li>
                        <li data-target="#slideShow" data-slide-to="2"></li>
                    </ul>
                      
                    <!-- 轮播图片 -->
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="/image/a1.jpg" alt="First slide">
                            <div class="carousel-caption">
                                <p >图片描述1</p>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img src="/image/a2.jpg">
                            <div class="carousel-caption">
                                <p >图片描述2</p>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img src="/image/a3.jpg">
                            <div class="carousel-caption">
                                <p >图片描述3</p>
                            </div>
                        </div>
                    </div>
                    <!-- 左右切换按钮 -->
                    <a class="carousel-control-prev" href="#slideShow" data-slide="prev">
                        <span class="carousel-control-prev-icon"></span>
                    </a>
                    <a class="carousel-control-next" href="#slideShow" data-slide="next">
                        <span class="carousel-control-next-icon"></span>
                    </a>
                </div>
            </div>
        </div>
    </div></br>
    <div    class="container-fluid">
        <div    class="row">
            <div    class="col-sm-6">
                <div    class="new">
                    <h6  class="texts   colors">
                        <b>通知公告  |  NOTICE</b>
                    </h6>
                    <a  class="texts    link"    href="#"   target="_blank"><b>更多>></b></a>
                </div></br></br>
            </div>
            <div    class="col-sm-6  new    sidebar">
                <h6  class="texts   colors">
                    <b>专题工作  |  TOPIC   WORK</b>
                </h6>
            </div>
        </div>
    </div>

    <div    class="container-fluid">
        <div    class="row">
            <div    class="col-sm-3">
                <div    class="notice   list-group">
                    <a  href="# ">公告一</a>
                    <a  href="# ">公告二对方水电费双方都</a>
                    <a  href="# ">公告三</a>
                    <a  href="# ">公告四</a>
                    <a  href="# ">公告五</a>
                    <a  href="# ">公告六</a>
                    <a  href="# ">公告七</a>
                </div>
            </div>
            <div    class="col-sm-3     date    list-group">
                <span   class="text-info">2020年10月01日</span>
                <span   class="text-info">2020年10月01日</span>
                <span   class="text-info">2020年10月01日</span>
                <span   class="text-info">2020年10月01日</span>
                <span   class="text-info">2020年10月01日</span>
                <span   class="text-info">2020年10月01日</span>
                <span   class="text-info">2020年10月01日</span>
            </div>

            <div    class="col-sm-6     sidebar list-group">
                <a  href="C:/Users/HJM/Desktop/institute"    class="topic">
                    <img    src="/image/6.jpg">
                </a>
                <a  href="#"    class="notice">“互联网+”大学生创新创业大赛</a>
                <a  href="#"    class="notice">“飞思卡尔”杯智能汽车竞赛</a>
                <a  href="#"    class="notice">富士康电子设计大赛</a>
                <a  href="#"    class="notice">ACM程序设计大赛</a>
                <a  href="#"    class="notice">“挑战杯”全国大学生课外学术科技作品竞赛</a>
                <a  href="#"    class="notice">“蓝桥杯”全国软件专业人才设计与创业大赛</a>
            </div>
        </div>
    </div>
    <div    class="aline"   style="margin-top: 20px;"></div></br>   <!--分割线-->

    
</body>
</html>

