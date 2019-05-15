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

                            <%--<li class="nav-item">--%>
                            <%--<a href="/v0.3/info_teaQurey.jsp" class="nav-link">--%>
                            <%--<i class="icon icon-energy"></i> 学生和班级信息--%>
                            <%--</a>--%>
                            <%--</li>--%>
                        </ul>
                    </li>

                    <li class="nav-title">更多</li>

                    <li class="nav-item nav-dropdown">
                        <a href="#" class="nav-link nav-dropdown-toggle">
                            <i class="icon icon-umbrella"></i> 其他 <i class="fa fa-caret-left"></i>
                        </a>

                    </li>
                </ul>
            </nav>
        </div>

        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-md-4"></div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="single-select">课题名称</label>
                                            <select id="single-select" class="form-control">
                                                <option>1</option>
                                                <option>2</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-1"></div>
                                    <div class="my-4 col-md-1">
                                        <button class="btn btn-primary">查询</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

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
                                                       class="form-control" placeholder="课题名称">
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
                                                <th>操作</th>
                                            </tr>
                                            </thead>
                                            <tbody id="tbody">
                                            <tr>
                                                <td>第一组</td>
                                                <td>迷宫小车</td>
                                                <td>2019.3.23</td>
                                                <%--到时候添加方法--%>
                                                <td onclick="details()">详情</td>
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
</div>
<%@include file="JSResource.jsp"%>
<script type="text/javascript">
    function details() {
        window.location.href="/v0.3/achievement.jsp"
    }
</script>

</body>
</html>
