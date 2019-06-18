<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <%@ include file="/v0.3/Resource.jsp" %>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>创新展示平台</title>
    <link rel="stylesheet" href="/Static/jquery/1.11.3/jquery.min.js">
    <link rel="stylesheet" href="/src/auth.css">
</head>

<body>
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
                            <p>修改信息</p>
                            <div class="lowin-group password-group">
                                <label>账号</label>
                                <span id="account">${userInfo.account}</span>
                            </div>
                            <div class="lowin-group password-group">
                                <label>旧密码</label>
                                <input type="password" id="password1" class="lowin-input">
                            </div>

                            <div class="lowin-group password-group">
                                <label>新密码</label>
                                <input type="password" id="password2" class="lowin-input">
                            </div>

                            <div class="lowin-group password-group">
                                <label>重复密码</label>
                                <input type="password" id="password3" class="lowin-input">
                            </div>
                            <div class="lowin-group">
                                <label>邮箱 </label>
                                <input type="text" id="email" class="lowin-input" value="${userInfo.email}">
                            </div>
                            <div class="lowin-group">
                                <label>手机号 </label>
                                <input type="text" id="phone" class="lowin-input" value="${userInfo.phone}">
                            </div>
                            <button id="reg" onclick="apply()" class="lowin-btn login-btn">
                                修 改
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <footer class="lowin-footer">
        Design By <a href="http://baidu.com">@test</a>
    </footer>
</div>
<%@include file="JSResource.jsp" %>
<script type="text/javascript">
    function apply() {
        var password1=document.getElementById("password1").value;
        var password2=document.getElementById("password2").value;
        var password3=document.getElementById("password3").value;

        if(password2!=password3){
            alert("两次密码不一样");
            return;
        }
        //包装成JSON
        var updateInfo = {
            "account":document.getElementById("account").innerText,
            "pwdold": password1,
            "pwdnew":password2,
            "email": document.getElementById("email").value,
            "phone":document.getElementById("phone").value
        };
        console.log(updateInfo);
        $.ajax({
                url: "${pageContext.request.contextPath}/user/update",
                data: JSON.stringify(updateInfo),
                dataType: "json",
                type: "post",
                contentType: "application/json;charset=utf-8",
                success: function (result) {
                    console.log(result)
                    code = result.code;
                    if (code == 200) {
                        alert("修改成功，请重新登陆")
                        window.location.href='../index.jsp'
                    } else {
                        alert("申请项目失败")
                    }
                }
            }
        )
    }
</script>
</body>
</html>