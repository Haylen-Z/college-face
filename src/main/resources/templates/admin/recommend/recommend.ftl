<!--后端学院信息列表-->
<!DOCTYPE html>
<html>
<head>
    <meta   charset="utf-8">
    <title>首页推荐列表</title>
    <#import "../../common.ftl" as com>
    <@com.depend/>
</head>
<body>

<div class="container">
    <#assign ai = 99>
    <div class="row">
        <@com.navSide ai />
        <div class="col">
            <div class="m-3">
                <a class="btn btn-primary" href="/admin/recommends/create-page">
                    新增
                </a>
            </div>
            <div>
                <div>
                    <ul  class="list-group ">
                        <#list recommends as i>
                            <li id="recommend${i.id}"  class="list-group-item">
                                <label>${i.title}</label>
                                <a href="/admin/recommends/update-page/${i.id}"  class="btn btn-outline-secondary m-2 float-right">编辑</a>
                                <button onclick="delRecommend(${i.id})" class="btn btn-danger m-2 float-right">删除</button>
                            </li>
                        </#list>
                        <script>
                            function delRecommend(id) {
                                $.ajax({
                                    url: "/admin/recommends/delete/" + id,
                                    method: "POST",
                                    success: function (r) {
                                        $("#recommend" + id).remove();
                                    }
                                })
                            }
                        </script>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>

<@com.footer/>
</body>
</html>