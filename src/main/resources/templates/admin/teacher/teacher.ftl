<!DOCTYPE html>
<html>
<head>
    <meta   charset="utf-8">
    <title>教师信息列表</title>
    <#import "../../common.ftl" as com>
    <@com.depend/>
</head>
<body>

<div class="container">
    <#assign ai = 4>
    <div class="row">
        <@com.navSide ai />
        <div class="col">
            <div class="m-3">
                <a class="btn btn-primary" href="/admin/teachers/create-page">
                    新增
                </a>
            </div>
            <div>
                <div>
                    <ul  class="list-group ">
                        <#list teachers as t>
                            <li id="teacher${t.id}"  class="list-group-item">
                                <label>${t.name}</label>
                                <a href="/admin/teachers/update-page/${t.id}"  class="btn btn-outline-secondary m-2 float-right">编辑</a>
                                <button onclick="delTeacher(${t.id})" class="btn btn-danger m-2 float-right">删除</button>
                            </li>
                        </#list>
                        <script>
                            function delTeacher(id) {
                                $.ajax({
                                    url: "/admin/teachers/delete/" + id,
                                    method: "POST",
                                    success: function (r) {
                                        $("#tearch" + id).remove();
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