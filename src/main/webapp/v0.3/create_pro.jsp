<!doctype html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <%@include file="navigation.jsp" %>


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
