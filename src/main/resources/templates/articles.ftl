<!DOCTYPE html>
<html>
<head>
    <#switch type>
        <#case 0>
            <#assign title = "新闻">
            <#break >
        <#case 1>
            <#assign title = "通知">
            <#break >
        <#case 2>
            <#assign title = "专题">
            <#break >
    </#switch>
    <title>${title}</title>
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
                    <li class="breadcrumb-item active" aria-current="page">${title}</li>
                </ol>
            </nav>
        </div>

        <div  style="margin-top: 50px;" class="m-4">
            <div>
                <ul  class="list-group ">
                    <#list articles as a>
                        <li  class="list-group-item">
                            <a href="/articles/${a.id}" >${a.title}</a>
                            <label class="float-right" ><@com.dateFormat a.updateTime/></label>
                        </li>
                    </#list>
                </ul>
            </div>
        </div>
        <div class="row m-4">
            <nav class="m-auto" aria-label="Page navigation example">
                <ul class="pagination">
                    <#if start gt 0>
                        <li class="page-item">
                            <a class="page-link" href="/articles?type=${type}&start=${start - limit}&limit=${limit}" aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                            </a>
                        </li>
                    </#if>
                    <li class="page-item"><label class="page-link">${start / limit + 1}</label></li>
                    <li class="page-item">
                        <a class="page-link" href="/articles?type=${type}&start=${start + limit}&limit=${limit}" aria-label="Next">
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