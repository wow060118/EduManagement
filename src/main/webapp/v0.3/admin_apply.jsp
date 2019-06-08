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
                                                   class="form-control" placeholder="用户名">
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
                                用户管理
                            </div>

                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-hover">
                                        <thead>
                                        <tr>
                                            <th>项目类型</th>
                                            <th>项目名称</th>
                                            <th>发布人</th>
                                            <th>承接人</th>
                                            <th>项目状态</th>
                                            <th colspan=>操作</th>
                                        </tr>
                                        </thead>

                                        <tbody id="tbody">
                                        <%--<c:forEach items="${userInfos}" var="list">--%>
                                            <%--<tr>--%>

                                                <%--<td>${list.userType}</td>--%>
                                                <%--<td>${list.account}</td>--%>
                                                <%--<td>${list.password}</td>--%>
                                                <%--<td>${list.phone}</td>--%>
                                                <%--<td>${list.email}</td>--%>
                                                <%--<td colspan=>--%>
                                                    <%--<a href="#"><i class="icon-pencil"></i></a>--%>
                                                    <%--<a href="#"><i class="icon-trash"></i></a>--%>
                                                <%--</td>--%>

                                            <%--</tr>--%>
                                        <%--</c:forEach>--%>
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
