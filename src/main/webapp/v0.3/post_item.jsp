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
                                本科生创新项目
                            </div>

                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-hover">
                                        <thead>
                                        <tr>
                                            <th>标题：</th>
                                            <th id="title_td">水溶性丙烯酸酯特种胶黏剂</th>

                                        </tr>
                                        </thead>
                                        <tbody id="tbody">
                                        <tr>
                                            <td>小组名称：</td>
                                            <td id="teamName_td">刘立柱组</td>

                                        </tr>
                                        <tr>
                                            <td>学校：</td>
                                            <td id="school_td">哈尔滨理工大学</td>

                                        </tr>
                                        <tr>
                                            <td>电话：</td>
                                            <td id="phone_td">18846086414</td>

                                        </tr>
                                        <tr>
                                            <td>邮箱：</td>
                                            <td id="email_td">996015133@qq.com</td>
                                        </tr>
                                        <tr>
                                            <td>学生姓名：</td>
                                            <td id="student_td">杨丰瑞</td>
                                        </tr>
                                        <tr>
                                            <td>指导教师：</td>
                                            <td id="teacher_td">刘立柱</td>

                                        </tr>
                                        <tr>
                                            <td>概述</td>
                                            <td><p>
                                                <p>
                                                    本成果以水溶性丙烯酸酯树脂为基体制备特种胶黏剂，胶黏剂可与水任意比例混合，VOC含量低，无刺激性气味。胶黏剂在基材表面干燥后，室温状态下为无色透明薄膜，在一定温度下软化并具有一定粘结性，继续升温并保持一段时间后可以形成热固性树脂，具有较高的粘结强度。本成果已经通过中试试验，产品质量稳定，具有进行大规模生产的前景和能力。</p>
                                                <p>
                                                    现有市场胶黏剂种类繁多，根据应用场合可以分成众多种类，如胶水、压敏胶、防水自粘胶、耐高温导热胶等等。本项目介绍的特种胶黏剂在很多工业领域有种重要应用，具有绝缘、耐热、高强度的优势，作为电机、变压器外壳等绑扎用胶黏带使用具有其他胶黏剂无法比拟的性能优势。</p>
                                            </td>
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

                                        <tr>
                                            <td>胶.txt</td>
                                            <td>
                                                <%--<a href="/pro/getpic?ucid=${createUnderInfoPo.ucid}&type=2"--%>
                                                <%--download="">点击下载</a>--%>
                                                <a href="/file/胶.txt"
                                                   download="">点击下载</a>
                                            </td>

                                        </tr>
                                        <tr>
                                            <td>状态：</td>
                                            <td>未申请</td>
                                        </tr>

                                        </tbody>

                                        <tfoot>
                                        <tr>
                                            <td>
                                                <button id="apply" class="btn btn-primary" onclick="apply()">
                                                    申 请 项 目
                                                </button>
                                            </td>
                                        </tr>
                                        </tfoot>
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

</div>
</div>
<%@include file="JSResource.jsp" %>


<script>
    index = 0;

    function apply() {
        var uid = localStorage.getItem("user");
        console.log(uid);
        if (uid == '') {
            window.location.href = "/v0.3/login.jsp"
        }
    }

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
