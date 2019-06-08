<!doctype html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <%@ include file="Resource.jsp" %>
    <title>教务管理系统</title>
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
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-md-3">
                                    </div>
                                    <div class="col-md-6">
                                        <div class="input-group">
                                            <input type="text" id="className" name="name"
                                                   class="form-control" placeholder="课程名称">
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
                                创新成果展示
                            </div>

                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-hover">
                                        <thead>
                                        <tr>
                                            <th>小组名称</th>
                                            <th>标题</th>
                                            <th>创建时间</th>
                                            <th colspan=>操作</th>
                                        </tr>
                                        </thead>
                                        <tbody id="tbody">
                                        <c:forEach items="${underList}" var="list">
                                        <tr>

                                                <td>${list.teamName}</td>
                                                <td>${list.title}</td>
                                                <td>${list.createTime}</td>
                                                <%--到时候添加方法--%>
                                                <td>
                                                    <a href="/pro/query/underInfo?ucid=${list.cid}"><i class="icon-docs"></i></a>

                                                    <a href="/pro/del/under?ucid=${list.cid}"><i class="icon-trash"></i></a>
                                                    <a onclick="do_support()"><i class="icon-pencil"></i></a>
                                                </td>

                                        </tr>
                                        </c:forEach>
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

<script type="text/javascript">
    function do_support() {
        window.location.href = "/v0.3/under_item_show.jsp"
    }

</script>

</body>
</html>
