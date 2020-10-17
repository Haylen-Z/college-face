<#macro depend >
    <link rel="stylesheet" href="/css/bootstrap.min.css">
    <script src="/js/jquery.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>
    <script src="/js/jquery.cookie.min.js"></script>

    <style>
        body {
            background-color: #F8F8FF;
        }
    </style>

</#macro>
<#macro navBar activeName >
<nav    class="navbar navbar-expand-sm bg-light navbar-dark">
        <a class="navbar-brand" href="#">
            <img src="/image/2.jpg" alt="logo" style="width:100px;">    <!--logo图片及展示大小-->
        </a>

        <!--添加导航栏-->
        <div    class="container">
            <ul class="nav  nav-tabs" >
                <li class="nav-item">
                    <a  class="nav-link <#if activeName == '网站首页'> active </#if>"    href="/">网站首页</a>
                </li>

                <!--设置选项卡下拉菜单-->
                <li class="nav-item  dropdown">
                    <a  class="nav-link  dropdown-toggle "   data-toggle="dropdown"  href="#">学院概况</a>
                        <div    class="dropdown-menu">
                            <a  class="dropdown-item"   href="/information/学院简介">学院简介</a>
                            <a  class="dropdown-item"   href="/information/学院领导">学院领导</a>
                            <a  class="dropdown-item"   href="/information/组织机构">组织机构</a>
                            <a  class="dropdown-item"   href="/information/宣讲视频">宣讲视频</a>
                        </div>
                </li>
                <li class="nav-item  dropdown">
                    <a  class="nav-link  dropdown-toggle"   data-toggle="dropdown"  href="#">教育教学</a>
                        <div    class="dropdown-menu">
                            <a  class="dropdown-item"   href="/information/本科生教育">本科生教育</a>
                            <a  class="dropdown-item"   href="/information/研究生教育">研究生教育</a>
                        </div>
                </li>
                <li class="nav-item  dropdown">
                    <a  class="nav-link  dropdown-toggle"   data-toggle="dropdown"  href="#">师资队伍</a>
                        <div    class="dropdown-menu">
                            <a  class="dropdown-item"   href="/information/整体概况">整体概况</a>
                            <a  class="dropdown-item"   href="/teachers">职称结构</a>
                        </div>
                </li>
                <li class="nav-item  dropdown">
                    <a  class="nav-link  dropdown-toggle"   data-toggle="dropdown"  href="#">科学研究</a>
                        <div    class="dropdown-menu">
                            <a  class="dropdown-item"   href="/information/科研项目">科研项目</a>
                            <a  class="dropdown-item"   href="/information/科研成果">科研成果</a>
                        </div>
                </li>
                <li class="nav-item  dropdown">
                    <a  class="nav-link  dropdown-toggle"   data-toggle="dropdown"  href="#">学科建设</a>
                        <div    class="dropdown-menu">
                            <a  class="dropdown-item"   href="/information/广西嵌入式技术与智能系统重点实验室">广西嵌入式技术与智能系统重点实验室</a>
                            <a  class="dropdown-item"   href="/information/广西重点学科计算机应用技术">广西重点学科计算机应用技术</a>
                            <a  class="dropdown-item"   href="/information/广西一体化课程建设设计计算机应用技术">广西一体化课程建设设计计算机应用技术</a>
                            <a  class="dropdown-item"   href="/information/广西级精品课程计算机网络">广西级精品课程计算机网络</a>
                            <a  class="dropdown-item"   href="/information/广西级精品课程C语言程序设计">广西级精品课程C语言程序设计</a>
                        </div>
                </li>
                <li class="nav-item  dropdown">
                    <a  class="nav-link  dropdown-toggle"   data-toggle="dropdown"  href="#">学院党建</a>
                        <div    class="dropdown-menu">
                            <a  class="dropdown-item"   href="/information/工作概况">工作概况</a>
                            <a  class="dropdown-item"   href="/information/支部风采">支部风采</a>
                            <a  class="dropdown-item"   href="/information/党委工作">党委工作</a>
                            <a  class="dropdown-item"   href="/information/教师支部">教师支部</a>
                            <a  class="dropdown-item"   href="/information/学生支部">学生支部</a>
                        </div>
                </li>
                <li class="nav-item  dropdown">
                    <a  class="nav-link  dropdown-toggle"   data-toggle="dropdown"  href="#">信息服务</a>
                        <div    class="dropdown-menu">
                            <a  class="dropdown-item"   href="/information/办公指南">办公指南</a>
                            <a  class="dropdown-item"   href="/information/联系我们">联系我们</a>
                        </div>
                </li>
            </ul>
        </div>
    </nav>
</#macro>

<#macro footer>
    <footer class="footer">
        <div class="container">
            <div class="row m-3">
                <label class="text-muted m-auto">CopyRight©2020-2020 生产实习小组版权所有 国家工信部-桂ICP备xxxxxx号-x </label>
            </div>
        </div>
    </footer>
</#macro>

<#macro navSide activeIndex >
    <div class="col-2 m-5">
        <nav id="nav-side" class="nav nav-pills flex-column">
            <a class="nav-link" href="/admin/information">学院信息管理</a>
            <a class="nav-link " href="/admin/articles?type=0">新闻管理</a>
            <a class="nav-link " href="/admin/articles?type=1">通知管理</a>
            <a class="nav-link " href="/admin/articles?type=2">专题管理</a>
            <a class="nav-link" href="/admin/teachers">教师管理</a>
            <a class="nav-link " href="/admin/recommends">首页推荐管理</a>
        </nav>
    </div>

    <script>
        $("#nav-side a:eq(${activeIndex})").addClass("active");
    </script>
</#macro>

<#macro editor>
    <div id="wangE"></div>
    <script type="text/javascript" src="/js/wangEditor.min.js"></script>
    <script type="text/javascript">
        const   E = window.wangEditor
        const editor = new E( document.getElementById('wangE') )
        editor.create();
        editor.config.uploadImgServer = '/admin/files/upload';
        editor.config.uploadFileName = 'file';
        editor.config.uploadImgHooks = {
            customInsert: function(insertImgFn, result) {
                insertImgFn(result.data);
            }
        }
    </script>
</#macro>