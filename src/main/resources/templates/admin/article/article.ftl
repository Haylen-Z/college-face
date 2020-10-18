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
                                <li  class="list-group-item">
                                        <a href="#" >name</a>
                                        <label class="m-2 " >2020-xx-xx</label>
                                        <button class="btn btn-outline-secondary m-2 float-right">编辑</button>
                                        <button class="btn btn-outline-danger m-2 float-right">删除</button>
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
                    <div class="row m-4">
                        <nav class="m-auto" aria-label="Page navigation example">
                            <ul class="pagination">
                                <li class="page-item">
                                    <a class="page-link" href="#" aria-label="Previous">
                                        <span aria-hidden="true">&laquo;</span>
                                    </a>
                                </li>
                                <li class="page-item"><a class="page-link" href="#">1</a></li>
                                <li class="page-item"><a class="page-link" href="#">2</a></li>
                                <li class="page-item"><a class="page-link" href="#">3</a></li>
                                <li class="page-item">
                                    <a class="page-link" href="#" aria-label="Next">
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