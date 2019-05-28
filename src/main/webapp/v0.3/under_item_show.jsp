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
                                            <th>${createUnderInfoPo.title}</th>
                                        </tr>
                                        </thead>
                                        <tbody id="tbody">
                                        <tr>
                                            <td>小组名称：</td>
                                            <td>${createUnderInfoPo.teamName}</td>
                                        </tr>
                                        <tr>
                                            <td>学校：</td>
                                            <td>${createUnderInfoPo.school}</td>
                                        </tr>
                                        <tr>
                                            <td>电话：</td>
                                            <td>${createUnderInfoPo.phone}</td>
                                        </tr>
                                        <tr>
                                            <td>邮箱：</td>
                                            <td>${createUnderInfoPo.email}</td>
                                        </tr>
                                        <tr>
                                            <td>学生姓名：</td>
                                            <td>${createUnderInfoPo.student}</td>
                                        </tr>
                                        <tr>
                                            <td>指导教师：</td>
                                            <td>${createUnderInfoPo.teacher}</td>
                                        </tr>
                                        <tr>
                                            <td>所需金钱：</td>
                                            <td>${createUnderInfoPo.money}</td>
                                        </tr>

                                        <tr>
                                            <td>图片展示：</td>
                                            <td>
                                                <div id="lunbo" class="lunbo">
                                                    <ul id="shidian_img">
                                                        <li><img src="${pic}"/></li>
                                                    </ul>
                                                </div>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>成果视频展示：</td>
                                            <td>
                                                <video width="602px" height="345px" controls="controls">

                                                    <%--<source src="/pro/getfile?ucid=${createUnderInfoPo.ucid}&type=1" type="video/mp4"></source>--%>

                                                    <%--<source src="${ogg}" type="video/ogg"></source>--%>
                                                    <source src="${video}" type="video/mp4"></source>
                                                    <source src="${ogg}" type="video/ogg"></source>


                                                </video>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>${createUnderInfoPo.fileName}</td>
                                            <td>
                                            <%--<a href="/pro/getpic?ucid=${createUnderInfoPo.ucid}&type=2"--%>
                                               <%--download="">点击下载</a>--%>
                                                <a href="${file}"
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
