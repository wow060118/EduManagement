<!doctype html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <%@ include file="Resource.jsp" %>
    <link rel="stylesheet" href="/src/auth.css">
    <title>教务管理系统</title>
</head>
<body class="sidebar-fixed header-fixed">
<div class="page-wrapper">
    <%@include file="Head.jsp" %>

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
                            <div class="lowin">

                                <div class="lowin-wrapper">
                                    <div class="lowin-box lowin-login">
                                        <div class="lowin-box-inner">
                                            <p>创建</p>
                                            <br>
                                            <div id="checkboxDiv" class="lowin-group">
                                                <label>创建类别: </label>
                                                <input type="radio" value="0" name="type" checked="checked">创新团队
                                                <input type="radio" value="1" name="type"/>需求团队
                                            </div>
                                            <button id="reg" class="lowin-btn login-btn" onclick="next()">
                                                下 一 步
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
</div>
<%@include file="JSResource.jsp" %>

<script type="text/javascript">
    function next() {
        var radio = document.getElementsByName('type');

        for (var i = 0; i < radio.length; i++) {

            if (radio[i].checked == true) {
                if (i == 0) {
                    window.location.href = "/v0.3/create_under_main_page.jsp"
                } else {
                    window.location.href = "/v0.3/create_require_main_page.jsp"
                }
            }
        }
    }

</script>

</body>
</html>
