<!--前端主页-->
<!DOCTYPE html>
<html>
<head>
  <title>信息科学与工程学院</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
    <#import "common.ftl" as com>
    <@com.depend />
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
      .carousel-item img {
          height: 400px;
      }

  </style>
</head>

<body>

    <!--导航栏前添加桂工logo-->
    <!--使用 .navbar-brand 类来设置图片自适应导航栏-->
    <!--使用bg-light将导航栏颜色改为浅色-->


<!---->
    <#import "common.ftl" as com>
    <@com.navBar activeName="网站首页" />

    <div class="new">
        <!--display:inline，内联元素，使文本文字和链接在同一行显示-->
            <h6  class="texts   colors">
                <b>学院新闻  |  ACADEMY  NEWS</b>
            </h6>
            <a  class="texts    links"    href="#"  ><b>更多>></b></a>
    </div>

<!--格栅布局-->
    <div    class="container-fluid" style="margin-top: 50px;">
        <div    class="row">
            <!--左侧新闻-->
            <div class="col-6">
                <ul  class="list-group ">
                    <li  class="list-group-item">
                        <a href="#" >name</a>
                        <label class="float-right" >2020-xx-xx</label>
                    </li>
                    <li  class="list-group-item">
                        <a href="#" >name</a>
                        <label class="float-right" >2020-xx-xx</label>
                    </li>
                    <li  class="list-group-item">
                        <a href="#" >name</a>
                        <label class="float-right" >2020-xx-xx</label>
                    </li>
                    <li  class="list-group-item">
                        <a href="#" >name</a>
                        <label class="float-right" >2020-xx-xx</label>
                    </li>
                    <li  class="list-group-item">
                        <a href="#" >name</a>
                        <label class="float-right" >2020-xx-xx</label>
                    </li>
                </ul>
            </div>
            <!--右侧轮播图-->
            <div  class="col-6">
                    <div id="carouselExampleCaptions" class="carousel" data-ride="carousel">
                        <ol class="carousel-indicators">
                            <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
                            <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
                            <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
                        </ol>
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <img src="/image/a1.jpg" class="d-block w-100 img-fluid" >
                                <div class="carousel-caption d-none d-md-block">
                                    <p>Nulla vitae elit libero, a pharetra augue mollis interdum.</p>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <img src="/image/a2.jpg" class="d-block w-100" alt="...">
                                <div class="carousel-caption d-none d-md-block">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <img src="/image/a3.jpg" class="d-block w-100" alt="...">
                                <div class="carousel-caption d-none d-md-block">
                                    <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur.</p>
                                </div>
                            </div>
                        </div>
                        <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
            </div>
        </div>
    </div><br/>
    <div    class="container-fluid">
        <div    class="row">
            <div    class="col-sm-6">
                <div    class="new">
                    <h6  class="texts   colors">
                        <b>通知公告  |  NOTICE</b>
                    </h6>
                    <a  class="texts    link"    href="#"   target="_blank"><b>更多>></b></a>
                </div><br/><br/>
            </div>
            <div    class="col-sm-6  new    sidebar">
                <h6  class="texts   colors">
                    <b>专题工作  |  TOPIC   WORK</b>
                </h6>
                <a  class="texts    link"    href="#"   target="_blank"><b>更多>></b></a>
            </div>
        </div>
    </div>

    <div    class="container-fluid">
        <div    class="row">
            <div    class="col-6">
                <div>
                    <ul  class="list-group ">
                        <li  class="list-group-item">
                            <a href="#" >name</a>
                            <label class="float-right" >2020-xx-xx</label>
                        </li>
                        <li  class="list-group-item">
                            <a href="#" >name</a>
                            <label class="float-right" >2020-xx-xx</label>
                        </li>
                        <li  class="list-group-item">
                            <a href="#" >name</a>
                            <label class="float-right" >2020-xx-xx</label>
                        </li>
                        <li  class="list-group-item">
                            <a href="#" >name</a>
                            <label class="float-right" >2020-xx-xx</label>
                        </li>
                        <li  class="list-group-item">
                            <a href="#" >name</a>
                            <label class="float-right" >2020-xx-xx</label>
                        </li>
                    </ul>
                </div>
            </div>
            <div    class="col-6  list-group">
                <div>
                    <ul  class="list-group ">
                        <li  class="list-group-item">
                            <a href="#" >name</a>
                            <label class="float-right" >2020-xx-xx</label>
                        </li>
                        <li  class="list-group-item">
                            <a href="#" >name</a>
                            <label class="float-right" >2020-xx-xx</label>
                        </li>
                        <li  class="list-group-item">
                            <a href="#" >name</a>
                            <label class="float-right" >2020-xx-xx</label>
                        </li>
                        <li  class="list-group-item">
                            <a href="#" >name</a>
                            <label class="float-right" >2020-xx-xx</label>
                        </li>
                        <li  class="list-group-item">
                            <a href="#" >name</a>
                            <label class="float-right" >2020-xx-xx</label>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <#import "common.ftl" as com>
    <@com.footer/>
</body>
</html>

