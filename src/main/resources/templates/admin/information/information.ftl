<!--后端学院信息列表-->
<!DOCTYPE html>
<html>
<head>
    <meta   charset="utf-8">
    <title>学院信息列表</title>
    <#import "../../common.ftl" as com>
    <@com.depend/>
</head>
<body>

<div class="container">
    <#assign ai = 56>
    <div class="row">
        <@com.navSide ai />
        <div class="col">
            <div class="m-3">
                <a class="btn btn-primary" href="/admin/information/create-page">
                    新增
                </a>
            </div>
            <div>
                <div>
                    <ul  class="list-group ">
                        <#list informationList as i>
                            <li id="information${i.id}"  class="list-group-item">
                                <label>${i.name}</label>
                                <a href="/admin/information/update-page/${i.id}"  class="btn btn-outline-secondary m-2 float-right">编辑</a>
                                <button onclick="delInformation(${i.id})" class="btn btn-danger m-2 float-right">删除</button>
                            </li>
                        </#list>
                        <script>
                            function delInformation(id) {
                                $.ajax({
                                    url: "/admin/information/delete/" + id,
                                    method: "POST",
                                    success: function (r) {
                                        $("#information" + id).remove();
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