<!doctype html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <%@ include file ="Resource.jsp"%>
    <title>教务管理系统</title>
</head>
<body class="sidebar-fixed header-fixed">
<div class="page-wrapper">
    <%@include file="Head.jsp"%>

    <div class="main-container">
        <%--
  Created by IntelliJ IDEA.
  User: Koreyoshi
  Date: 2019/5/21
  Time: 14:01
  To change this template use File | Settings | File Templates.
--%>
        <%@ page contentType="text/html;charset=UTF-8" language="java" %>

        <div class="sidebar">
            <nav class="sidebar-nav">
                <ul class="nav">
                    <li class="nav-title">导航</li>

                    <li class="nav-item">
                        <a href="/v0.3/main_page.jsp" class="nav-link active">
                            <i class="icon icon-speedometer"></i> 主页
                        </a>
                    </li>

                    <li class="nav-item nav-dropdown">
                        <a href="#" class="nav-link nav-dropdown-toggle">
                            <i class="icon icon-target"></i> 创新成果展示 <i class="fa fa-caret-left"></i>
                        </a>

                        <ul class="nav-dropdown-items">
                            <li class="nav-item">
                                <a href="/v0.3/under_create_pro.jsp" class="nav-link">
                                    <i class="icon icon-target"></i> 本科生创新成果展示
                                </a>
                            </li>
                        </ul>

                        <ul class="nav-dropdown-items">
                            <li class="nav-item">
                                <a href="/v0.3/post_create_pro.jsp" class="nav-link">
                                    <i class="icon icon-target"></i> 研究生创新成果展示
                                </a>
                            </li>
                        </ul>
                    </li>

                    <li class="nav-item nav-dropdown">
                        <a href="#" class="nav-link nav-dropdown-toggle">
                            <i class="icon icon-energy"></i> 需求对接 <i class="fa fa-caret-left"></i>
                        </a>

                        <ul class="nav-dropdown-items">
                            <li class="nav-item">
                                <a href="/v0.3/requier_pro.jsp" class="nav-link">
                                    <i class="icon icon-energy"></i> 需求对接
                                </a>
                            </li>
                        </ul>
                    </li>

                    <li class="nav-title">更多</li>

                    <li class="nav-item nav-dropdown">
                        <a href="#" class="nav-link nav-dropdown-toggle">
                            <i class="icon icon-umbrella"></i> 其他 <i class="fa fa-caret-left"></i>
                        </a>
                        <ul class="nav-dropdown-items">
                            <li class="nav-item">
                                <a href="/v0.3/my_pro.jsp" class="nav-link">
                                    <i class="icon icon-energy"></i> 我的项目
                                </a>
                            </li>
                        </ul>
                        <ul class="nav-dropdown-items">
                            <li class="nav-item">
                                <a href="/v0.3/my_apply.jsp" class="nav-link">
                                    <i class="icon icon-target"></i> 我申请的项目
                                </a>
                            </li>
                        </ul>
                        <ul class="nav-dropdown-items">
                            <li class="nav-item">
                                <a href="#" class="nav-link">
                                    <i class="icon icon-target"></i> 交流
                                </a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </nav>
        </div>



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
                                            <th>操作</th>
                                        </tr>
                                        </thead>
                                        <tbody id="tbody">
                                        <tr>
                                            <td>第一组</td>
                                            <td>迷宫小车</td>
                                            <td>2019-6-2</td>
                                            <%--到时候添加方法--%>
                                            <td onclick="do_support()">详情</td>
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
    function do_support() {
        window.location.href="/v0.3/under_item_show.jsp"
    }

</script>

</body>
</html>
