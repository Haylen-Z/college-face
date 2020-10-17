<!DOCTYPE html>
<html>
<head>
    <title>导航栏</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <#import "common.ftl" as com>
    <@com.depend />


</head>

<body>
<header class="header">
    <#import "common.ftl" as com>
    <@com.navBar activeName=""/>

    <div>
        <img    style="width: 100%;height: 250px;"    src="/image/5.jpg">
    </div>
</header>

<main class="mainContainer">
    <div class="container">
        <div class="m-4">
            <nav aria-label="breadcrumb" >
                <ol class="breadcrumb">
                    <li class="breadcrumb-item active" aria-current="page">新闻</li>
                </ol>
            </nav>
        </div>

        <div  style="margin-top: 50px;" class="m-4">
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
</main>

<#import "common.ftl" as com>
<@com.footer/>

</body>
</html>