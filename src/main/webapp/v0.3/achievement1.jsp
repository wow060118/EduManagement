<!doctype html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <%@ include file="Resource.jsp" %>
    <style type="text/css">

        .lunbo img {
            width: 500px;
            height: 400px;
        }

                 

    </style>

    <title>创新展示平台</title>
    <link rel="stylesheet" href="/Static/jquery/1.11.3/jquery.min.js">

</head>
<body class="sidebar-fixed header-fixed">
<div class="page-wrapper">
    <%@include file="Head.jsp" %>

    <div class="main-container">
        <%@include file="navigation.jsp" %>


        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header bg-light">
                                创新成果展示
                            </div>

                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-hover">
                                        <thead>
                                        <tr>
                                            <th>标题：</th>
                                            <th>具有自组网功能的人防电声报警控制器</th>
                                        </tr>
                                        </thead>
                                        <tbody id="tbody">
                                        <tr>
                                            <td>技术水平：</td>
                                            <td>国内先进</td>
                                        </tr>
                                        <tr>
                                            <td>所属领域：</td>
                                            <td>胶黏剂/绝缘材料</td>
                                        </tr>
                                        <tr>
                                            <td>应用领域：</td>
                                            <td>胶黏剂/自粘漆</td>
                                        </tr>
                                        <tr>
                                            <td>内容简介：</td>
                                            <td><p>
                                                本成果以水溶性丙烯酸酯树脂为基体制备特种胶黏剂，胶黏剂可与水任意比例混合，VOC含量低，无刺激性气味。胶黏剂在基材表面干燥后，室温状态下为无色透明薄膜，在一定温度下软化并具有一定粘结性，继续升温并保持一段时间后可以形成热固性树脂，具有较高的粘结强度。本成果已经通过中试试验，产品质量稳定，具有进行大规模生产的前景和能力。
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>技术特点及主要技术指标：</td>
                                            <td><p>
                                                水溶性好，VOC含量低。漆液与水可以以任意比例混合，干燥后的耐水性较好；漆液中VOC含量低于国家涂料税起征标准，即小于420g/L。</p>
                                                <p>表干速度快，储存时间长。胶黏剂在170℃ 12sec内可以表干，在基材表面形成不粘薄膜；形成薄膜后其储存期为1年以上。</p>
                                                <p>粘结速度快。胶黏带在使用过程中，在100-120℃温度作用下，可以在1-2sec的时间内软化，并在一定压力下起到粘结效果。</p>
                                                <p>粘结速度快。胶黏带在使用过程中，在100-120℃温度作用下，可以在1-2sec的时间内软化，并在一定压力下起到粘结效果。</p></td>
                                        </tr>
                                        <tr>
                                            <td>成果转化条件及成本：</td>
                                            <td><p>
                                                按具体情况另议。</p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>成果完成人：</td>
                                            <td>刘立柱</td>
                                        </tr>

                                        <tr>
                                            <td>图片展示：</td>
                                            <td>
                                                <div id="lunbo" class="lunbo">
                                                    <ul id="shidian_img">
                                                        <li><img src="/pic/2.jpg"/></li>
                                                    </ul>
                                                </div>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>

                        </div>
                    </div>

                </div>

            </div>
        </div>

    </div>
</div>
<%@include file="JSResource.jsp" %>

<script>
    index = 0;

    function show_img() {
        imgs = document.getElementById("shidian_img").children;
        for (i = 0; i < imgs.length; i++) {
            imgs[i].style.display = "none";

        }
        imgs[index].style.display = "block";
        index++;
        if (index >= imgs.length) {
            index = 0;

        }

    }

    timer = setInterval(show_img, 1000); //建立周期定时器。

    function apply() {
        //包装成JSON
        var userId = 1;
        var underProId = 0;
        // ajax处理接收课程表
        $.ajax({
                url: "${pageContext.request.contextPath}/apply/create?userId=" + userId + "&underProId=" + underProId,
                dataType: "json",
                type: "post",
                contentType: "application/json;charset=utf-8",
                success: function (result) {
                    console.log(result)
                    code = result.code;
                    if (code == 200) {
                        alert(result.msg)
                        document.getElementById("apply").style.display = 'none';
                    }
                }
            }
        )
    }
</script>

</body>
</html>
