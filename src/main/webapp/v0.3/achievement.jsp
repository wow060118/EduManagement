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
                                            <td>通信与信息系统</td>
                                        </tr>
                                        <tr>
                                            <td>应用领域：</td>
                                            <td>可应用在城市民防警报发放系统</td>
                                        </tr>
                                        <tr>
                                            <td>内容简介：</td>
                                            <td><p>
                                                本项目获得2014年黑龙江省科技进步二等奖，目前在哈尔滨及东三省等很多城市广泛应用，技术成熟，性价比高，该项目中的全数字电声警报一体机和基于人防专用频点的自组织网络路由器获得国家发明专利。</p>
                                                <p>
                                                    该产品是由警报控制模块和电声警报模块和二为一的鸣响警报报知设备，可通过有线、无线双重控制，发防警报，并具有故障自动检测、工作状态回视、电声广播、电声报时、软件在线升级等功能。</p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>技术特点及主要技术指标：</td>
                                            <td><p>
                                                该产品的自组网功能解决了现有警报系统的城市盲点问题，电声警报模块采用全数字功放模块，声音失真度底。警报控制器与警报器二和一，设备结构合理，集成度高，使系统更加紧凑、可靠、系统体积小、安装和维护更加简便。</p>
                                                <p>采用嵌入式控制系统，可实现声音文件的存储及实时播放，实现各种警报的发布和各种控制功能，具有可靠性高，电路简洁，在线升级方便的优点。</p>
                                                <p>具有遥控自动发布警报和人工手动发布警报两种发布方式；具有喊话、功放、监测、监听等功能</p>
                                                <p>具有500-2000W可调功率供客户选择，采用交直流两种供电方式，交流断电时自动切换到直流供电。</p></td>
                                        </tr>
                                        <tr>
                                            <td>成果转化条件及成本：</td>
                                            <td><p>
                                                该产品技术成熟，在全国人防系统中首次使用了自组织网络组网方式，市场前景好。目前因没有取得人防销售资质，因此不能在市场销售。取得人防资质大约需要300万元左右。</p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>成果完成人：</td>
                                            <td>颜颐欣</td>
                                        </tr>

                                        <tr>
                                            <td>图片展示：</td>
                                            <td>
                                                <div id="lunbo" class="lunbo">
                                                    <ul id="shidian_img">
                                                        <li><img src="/pic/resultpic.jpg"/></li>
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
