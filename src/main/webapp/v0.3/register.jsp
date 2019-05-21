
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>教务管理系统</title>
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
                <form action="/user/reg" method="post">
                    <p>注册</p>
                    <div class="lowin-group">
                        <label>账号 </label>
                        <input type="text" name="account" class="lowin-input">
                    </div>
                    <div class="lowin-group password-group">
                        <label>密码</label>
                        <input type="password" name="password" class="lowin-input">
                    </div>
                    <div class="lowin-group">
                        <label>邮箱 </label>
                        <input type="text" name="email" class="lowin-input">
                    </div>
                    <div class="lowin-group">
                        <label>手机号 </label>
                        <input type="text" name="phone" class="lowin-input">
                    </div>

                    <div  id="checkboxDiv" class="lowin-group">
                        <label>用户类别 </label>
                        <input type="radio" value="0" name="type" checked="checked">创新团队
                        <input type="radio" value="1" name="type"/>需求团队
                    </div>
                    <button id="reg" class="lowin-btn login-btn">
                        注 册
                    </button>

                </form>
            </div>
        </div>
    </div>

    <footer class="lowin-footer">
        Design By <a href="http://baidu.com">@test</a>
    </footer>
</div>
<%@include file="JSResource.jsp" %>

</body>
</html>