<%--
  Created by IntelliJ IDEA.
  User: GDMZ_
  Date: 2019/4/8
  Time: 22:42
  To change this template use File | Settings | File Templates.
--%>
<!doctype html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <%@ include file="/v0.3/Resource.jsp" %>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>创新展示平台</title>
    <link rel="stylesheet" href="/Static/jquery/1.11.3/jquery.min.js">
    <link rel="stylesheet" href="/src/auth.css">

</head>
<body class="sidebar-fixed header-fixed">
<div class="page-wrapper">
    <%@include file="Head.jsp" %>
    <div class="main-container">
        <%@include file="navigation.jsp" %>

        <div class="content">

            <div class="lowin">
                <div class="lowin-brand">
                    <img src="/src/kodinger.jpg" alt="logo">
                </div>
                <div class="lowin-wrapper">
                    <div class="lowin-box lowin-login">
                        <div class="lowin-box-inner">
                            <form action="/user/login" method="post">
                                <p>登录</p>
                                <div class="lowin-group">
                                    <label>账号 </label>
                                    <input type="text" name="account" class="lowin-input">
                                </div>
                                <div class="lowin-group password-group">
                                    <label>密码</label>
                                    <input type="password" name="password" class="lowin-input">
                                </div>
                                <button type="submit" class="lowin-btn login-btn">
                                    登 录
                                </button>
                                <div class="lowin-group">
                                    <label> </label>
                                </div>
                                <div class="lowin-group">
                                    <a href="/v0.3/register.jsp" class="nav-link active">
                                        <i class="icon icon-target"></i> 没有账号？注册一个吧
                                    </a>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>

                <footer class="lowin-footer">
                    Design By <a href="http://baidu.com">@test</a>
                </footer>
            </div>
        </div>
    </div>
</div>

<%@include file="JSResource.jsp" %>


<script type="text/javascript">
    $("#uid").val(localStorage.getItem("user"));


</script>

</body>
</html>
