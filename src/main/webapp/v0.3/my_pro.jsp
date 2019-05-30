<!doctype html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
    <%@ include file ="Resource.jsp"%>
    <title>教务管理系统</title>
</head>
<body class="sidebar-fixed header-fixed">
<div class="page-wrapper">
    <%@include file="Head.jsp"%>

    <div class="main-container">

        <%@ page contentType="text/html;charset=UTF-8" language="java" %>

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
                                            <th>小组名称</th>
                                            <th>标题</th>
                                            <th>创建时间</th>
                                            <th colspan=>操作</th>
                                        </tr>
                                        </thead>
                                        <tbody id="tbody">
                                        <c:forEach items="${myList}" var="list">
                                            <tr>

                                                <td>${list.teamName}</td>
                                                <td>${list.title}</td>
                                                <td>${list.createTime}</td>
                                                    <%--到时候添加方法--%>
                                                <c:if test="${list.type==0}">
                                                    <td>
                                                        <a href="/pro/query/underInfo?ucid=${list.cid}"><i class="icon-docs"></i></a>

                                                        <a href="/pro/del/under?ucid=${list.cid}"><i class="icon-trash"></i></a>
                                                        <a onclick="do_support()"><i class="icon-pencil"></i></a>
                                                    </td>
                                                </c:if>
                                                <c:if test="${list.type==1}">
                                                    <td>
                                                        <a href="/pro/query/underInfo?ucid=${list.cid}"><i class="icon-docs"></i></a>

                                                        <a href="/pro/del/under?ucid=${list.cid}"><i class="icon-trash"></i></a>
                                                        <a onclick="do_support()"><i class="icon-pencil"></i></a>
                                                    </td>
                                                </c:if>
                                                <c:if test="${list.type==2}">
                                                    <td>
                                                        <a href="/pro/query/underInfo?ucid=${list.cid}"><i class="icon-docs"></i></a>

                                                        <a href="/pro/del/under?ucid=${list.cid}"><i class="icon-trash"></i></a>
                                                        <a onclick="do_support()"><i class="icon-pencil"></i></a>
                                                    </td>
                                                </c:if>


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
<%@include file="JSResource.jsp"%>

<script type="text/javascript">
    function do_support() {
        window.location.href="/v0.3/under_item_show.jsp"
    }

</script>

</body>
</html>
