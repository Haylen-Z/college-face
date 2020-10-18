<!DOCTYPE html>
<html>
<head>
    <title>教师职称结构</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <#import "common.ftl" as com>
    <@com.depend />


</head>

<body>

<#import "common.ftl" as com>
<@com.navBar activeName=""/>
<div>
    <img    style="width: 100%;height: 250px;"    src="/image/5.jpg">
</div>
<main   class="container">
    <div class="row m-5">
        <#list levelTeacherMap as level, teachers>
            <div class="col-auto m-auto">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">level</h5>
                        <#list teachers as t>
                            <a href="/teachers/${t.id}" class="m-auto" >${t.name}</a>
                        </#list>
                    </div>
                </div>
            </div>
        </#list>
    </div>
</main>
<#import "common.ftl" as com>
<@com.footer/>
</body>
</html>