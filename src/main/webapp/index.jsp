<%--
  Created by IntelliJ IDEA.
  User: GDMZ_
  Date: 2019/4/8
  Time: 22:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>教务管理系统</title>
    <link rel="stylesheet" href="/Static/jquery/1.11.3/jquery.min.js">
    <link rel="stylesheet" href="/src/auth.css">

</head>

<body>
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

<script type="text/javascript">
    function reg() {
        window.location.href = "/v0.3/register.jsp"
    }
    // window.location.href = "/v0.3/register.jsp"
</script>
</body>
</html>