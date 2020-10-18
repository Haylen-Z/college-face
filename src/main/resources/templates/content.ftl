<!--前端列表-->
<!DOCTYPE html>
<html>
<head>
    <title>${title}</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <#import "common.ftl" as com>
    <@com.depend />


</head>

<body>
    <#import "common.ftl" as com>
    <@com.navBar activeName=title />
    <div>
        <img    style="width: 100%;height: 250px;"    src="/image/5.jpg">
    </div>
    <div    class="container">
        <div class="m-4">
            <nav aria-label="breadcrumb" >
                <ol class="breadcrumb">
                    <li class="breadcrumb-item active" aria-current="page">${title}</li>
                </ol>
            </nav>
        </div>
        <div class="m-4" style="background-color: #ffff">
            <div class="m-4">
                ${content}
            </div>
        </div>
    </div>
    <#import "common.ftl" as com>
    <@com.footer/>
</body>
</html>

