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
                                                   class="form-control" placeholder="项目名称">
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
                                项目管理
                            </div>

                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-hover">
                                        <thead>
                                        <tr>
                                            <th>名称</th>
                                            <th>标题</th>
                                            <th>创建时间</th>
                                            <th>项目类型</th>
                                            <th colspan=>操作</th>
                                        </tr>
                                        </thead>
                                        <tbody id="tbody">
                                        <tr>

                                            <td id="team">刘立柱组</td>
                                            <td id="title">水溶性丙烯酸酯特种胶黏剂</td>
                                            <td id="time">2017-12-20</td>
                                            <td id="type">研究生创新项目</td>
                                            <td id="ope">
                                                <a href="/v0.3/post_item.jsp"><i
                                                        class="icon-docs"></i></a>

                                                <a onclick="deleteP()"><i class="icon-trash"></i></a>
                                            </td>
                                        </tr>

                                        <tr>

                                            <td>颜颐欣</td>
                                            <td>具有自组网功能的人防电声报警控制器</td>
                                            <td>2019.5.13</td>
                                            <td>需求项目</td>

                                            <td>
                                                <a href="/v0.3/require_item_show.jsp"><i
                                                        class="icon-docs"></i></a>

                                                <a href="/pro/del/under?ucid=${list.cid}"><i class="icon-trash"></i></a>
                                            </td>
                                        </tr>
                                        <c:forEach items="${proList}" var="list">
                                            <tr>

                                                <td>${list.teamName}</td>
                                                <td>${list.title}</td>
                                                <td>${list.createTime}</td>
                                                    <%--到时候添加方法--%>
                                                <c:if test="${list.type==0}">
                                                    <td>本科生创新项目</td>
                                                    <td>
                                                        <a href="/pro/query/underInfo?ucid=${list.cid}"><i
                                                                class="icon-docs"></i></a>

                                                        <a href="/admin/del/under?ucid=${list.cid}"><i
                                                                class="icon-trash"></i></a>

                                                    </td>
                                                </c:if>
                                                <c:if test="${list.type==1}">
                                                    <td>研究生创新项目</td>
                                                    <td>
                                                        <a href="/pro/query/underInfo?ucid=${list.cid}"><i
                                                                class="icon-docs"></i></a>
                                                        <a href="/pro/del/under?ucid=${list.cid}"><i
                                                                class="icon-trash"></i></a>
                                                    </td>
                                                </c:if>
                                                <c:if test="${list.type==2}">
                                                    <td>需求项目</td>
                                                    <td>
                                                        <a href="/pro/query/underInfo?ucid=${list.cid}"><i
                                                                class="icon-docs"></i></a>
                                                        <a href="/pro/del/under?ucid=${list.cid}"><i
                                                                class="icon-trash"></i></a>
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
<%@include file="JSResource.jsp" %>

<script type="text/javascript">
    function do_support() {
        window.location.href = "/v0.3/under_item_show.jsp"
    }
    function deleteP() {
        document.getElementById("team").style.display="none";
        document.getElementById("title").style.display="none";
        document.getElementById("time").style.display="none";
        document.getElementById("type").style.display="none";
        document.getElementById("ope").style.display="none";
    }

</script>

</body>
</html>
