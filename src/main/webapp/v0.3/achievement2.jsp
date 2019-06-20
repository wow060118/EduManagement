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
                                            <th>1</th>
                                        </tr>
                                        </thead>
                                        <tbody id="tbody">
                                        <tr>
                                            <td>技术水平：</td>
                                            <td>1</td>
                                        </tr>
                                        <tr>
                                            <td>所属领域：</td>
                                            <td>1</td>
                                        </tr>
                                        <tr>
                                            <td>应用领域：</td>
                                            <td>1</td>
                                        </tr>
                                        <tr>
                                            <td>内容简介：</td>
                                            <td><p>
                                               1
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>技术特点及主要技术指标：</td>
                                            <td><p>
                                               1</p>
                                        </tr>
                                        <tr>
                                            <td>成果转化条件及成本：</td>
                                            <td><p>
                                                1</p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>成果完成人：</td>
                                            <td>1</td>
                                        </tr>

                                        <tr>
                                            <td>图片展示：</td>
                                            <td>
                                                <div id="lunbo" class="lunbo">
                                                    <ul id="shidian_img">
                                                        <li><img src="/pic/1111.png"/></li>
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
