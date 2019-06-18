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
                                            <th>迷宫小车</th>
                                        </tr>
                                        </thead>
                                        <tbody id="tbody">
                                        <tr>
                                            <td>公司名称：</td>
                                            <td>哈理工</td>
                                        </tr>
                                        <tr>
                                            <td>公司电话：</td>
                                            <td>18846086414</td>
                                        </tr>
                                        <tr>
                                            <td>公司邮箱：</td>
                                            <td>996015133@qq.com</td>
                                        </tr>
                                        <tr>
                                            <td>需求简介：</td>
                                            <td>该产品的自组网功能解决了现有警报系统的城市盲点问题，电声警报模块采用全数字功放模块，声音失真度底。警报控制器与警报器二和一，设备结构合理，集成度高，使系统更加紧凑、可靠、系统体积小、安装和维护更加简便。</p>
                                                <p>采用嵌入式控制系统，可实现声音文件的存储及实时播放，实现各种警报的发布和各种控制功能，具有可靠性高，电路简洁，在线升级方便的优点。</p>
                                                <p>具有遥控自动发布警报和人工手动发布警报两种发布方式；具有喊话、功放、监测、监听等功能</p>
                                                <p>具有500-2000W可调功率供客户选择，采用交直流两种供电方式，交流断电时自动切换到直流供电。</p></td>
                                        </tr>
                                        <tr>
                                            <td>附件：1.txt</td>
                                            <td>
                                                <a href="/file/require.txt"
                                                   download="">点击下载</a>
                                            </td>

                                        </tr>
                                        </tbody>

                                        <tfoot>
                                        <tr>
                                            <button id="apply" class="btn btn-primary" onclick="apply()">
                                                申 请 项 目
                                            </button>
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
        var userId=1;
        var underProId=0;
        // ajax处理接收课程表
        $.ajax({
                url: "${pageContext.request.contextPath}/apply/create?userId="+userId+"&underProId="+underProId,
                dataType:"json",
                type: "post",
                contentType: "application/json;charset=utf-8",
                success: function (result) {
                    console.log(result)
                    code= result.code;
                    if(code == 200){
                        alert(result.msg)
                        document.getElementById("apply").style.display='none';
                    }
                }
            }
        )
    }
</script>

</body>
</html>
