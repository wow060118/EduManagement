<!doctype html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <%@ include file="Resource.jsp" %>
    <title>教务管理系统</title>
    <link href="/src/auth.css" rel="stylesheet">
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
                            <form action="/apply/applyFile" method="post"  enctype="multipart/form-data" >
                                <p>创新团队申请项目</p>
                                <div class="lowin-group">
                                    <label>标题 </label>
                                    <input type="text" name="title" class="lowin-input">
                                </div>

                                <div class="lowin-group">
                                    <label>快递单号 </label>
                                    <input type="text" name="postnum" class="lowin-input">
                                </div>

                                <div class="lowin-group">
                                    <label>附件 </label>
                                    <input type="file" name="file">
                                </div>
                                <input id="protype" type="hidden" name="protype" value="0">
                                <input id="pid" type="hidden" name="pid" value="${createUnderInfoPo.ucid}">
                                <button id="reg" class="lowin-btn login-btn">
                                    提 交
                                </button>

                            </form>
                        </div>
                    </div>
                </div>
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
