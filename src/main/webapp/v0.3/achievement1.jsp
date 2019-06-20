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
                                            <td>医疗仪器</td>
                                        </tr>
                                        <tr>
                                            <td>应用领域：</td>
                                            <td>医院、保健院等单位</td>
                                        </tr>
                                        <tr>
                                            <td>内容简介：</td>
                                            <td><p>
                                                本品在硬件设计的基础上，运用现代数字信号处理技术对淹没于噪声中的信号进行处理，实现了对淹没于噪声中的信号的测量和分析，测量通道具有程控跟踪滤波，程控放大功能，同时还具有信号发生功能。可独立完成激励和测试，自成系统。
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>技术特点及主要技术指标：</td>
                                            <td><p>
                                                解决了淹没于噪声中信号的测量难题，噪声可高于有用信号1000倍，程控放大最高达5万倍；具有DPOAE和TEOAE检测功能；虚拟仪器的设计思想，便于扩展升级。</p>
                                                <p>具备TEOAE和DPOAE两种不同的测试功能，具有探头自检、信息管理、检测报告打印等其他功能。</p>
                                        </tr>
                                        <tr>
                                            <td>成果转化条件及成本：</td>
                                            <td><p>
                                                成果可以技术转让，亦可以投资入股进行转化。具体条件协商确定。</p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>成果完成人：</td>
                                            <td>林海军</td>
                                        </tr>

                                        <tr>
                                            <td>图片展示：</td>
                                            <td>
                                                <div id="lunbo" class="lunbo">
                                                    <ul id="shidian_img">
                                                        <li><img src="/pic/5.jpg"/></li>
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
