<!doctype html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <%@ include file ="Resource.jsp"%>
    <title>教务管理系统</title>
</head>
<body class="sidebar-fixed header-fixed">
<div class="page-wrapper">
    <%@include file="Head.jsp"%>

    <div class="main-container">
        <%@include file="navigation.jsp" %>

        <div class="content">
            <div class="container-fluid">
                <div class="row">

                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-md-3">
                                    </div>
                                    <div class="col-md-6">
                                        <div class="input-group">
                                            <input type="text" id="className" name="name"
                                                   class="form-control" placeholder="需求查询">
                                            <span class="input-group-btn">
                                                    <button id="selectCourse" type="button" class="btn btn-primary"><i
                                                            class="fa fa-search"></i>查找</button>
                                                </span>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="input-group">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header bg-light">
                                需求对接
                            </div>

                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-hover">
                                        <thead>
                                        <tr>
                                            <th>公司名称</th>
                                            <th>标题</th>
                                            <th>创建时间</th>
                                            <th>操作</th>
                                        </tr>
                                        </thead>
                                        <tbody id="tbody">
                                        <tr>
                                            <td id="teamName">颜颐欣</td>
                                            <td>具有自组网功能的人防电声报警控制器</td>
                                            <td>2019.5.13</td>
                                            <%--到时候添加方法--%>
                                            <td onclick="details()">
                                                <a href="/v0.3/require_item_show.jsp"><i
                                                        class="icon-docs"></i></a>
                                                <a onclick="do_support()"><i class="icon-pencil">
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
<%@include file="JSResource.jsp"%>
<script type="text/javascript">
    function details() {
        window.localStorage.setItem("teamName",document.getElementById("teamName").innerText);
        window.location.href="/v0.3/my_chat.jsp"
    }

</script>
</body>
</html>
