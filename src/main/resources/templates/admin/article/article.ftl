<!DOCTYPE html>
<html>
    <head>
        <meta   charset="utf-8">
        <title>文章列表</title>
        <#import "../../common.ftl" as com>
        <@com.depend/>
    </head>
    <body>

        <div class="container">
            <#assign ai = type + 1>
            <div class="row">
                <@com.navSide ai />
                <div class="col">
                    <div class="m-3">
                        <a class="btn btn-primary" href="/admin/articles/create-page">
                            新增
                        </a>
                    </div>
                    <div>
                        <div>
                            <ul  class="list-group ">
                                <#list articles as a>
                                    <li id="article${a.id}"  class="list-group-item">
                                        <label>${a.id}</label>
                                        <label class="m-2">${a.title}</label>
                                        <label class="m-2 " ><@com.dateFormat a.updateTime/></label>
                                        <a href="/admin/articles/update-page/${a.id}" class="btn btn-outline-secondary m-2 float-right">编辑</a>
                                        <button onclick="delArticle(${a.id})" class="btn btn-outline-danger m-2 float-right">删除</button>
                                    </li>
                                </#list>
                                <script>
                                    function delArticle(id) {
                                        $.ajax({
                                            url: "/admin/articles/delete/" + id,
                                            method: "POST",
                                            success: function (r) {
                                                $("#article" + id).remove();
                                            }
                                        })
                                    }
                                </script>
                            </ul>
                        </div>
                    </div>
                    <div class="row m-4">
                        <nav class="m-auto" aria-label="Page navigation example">
                            <ul class="pagination">
                                <#if start gt 0>
                                    <li class="page-item">
                                        <a class="page-link" href="/admin/articles?type=${type}&start=${start - limit}&limit=${limit}" aria-label="Previous">
                                            <span aria-hidden="true">&laquo;</span>
                                        </a>
                                    </li>
                                </#if>
                                <li class="page-item"><label class="page-link">${start / limit + 1}</label></li>
                                <li class="page-item">
                                    <a class="page-link" href="/admin/articles?type=${type}&start=${start + limit}&limit=${limit}" aria-label="Next">
                                        <span aria-hidden="true">&raquo;</span>
                                    </a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>

    <@com.footer/>
    </body>
</html>