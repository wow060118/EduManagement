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
                            <form action="/user/reg" method="post">
                                <p>创新团队申请项目</p>
                                <div class="lowin-group">
                                    <label>标题 </label>
                                    <input type="text" name="account" class="lowin-input">
                                </div>
                                <div class="lowin-group">
                                    <label>小组名称</label>
                                    <input type="text" name="teamName" class="lowin-input">
                                </div>
                                <div class="lowin-group">
                                    <label>学校 </label>
                                    <input type="text" name="school" class="lowin-input">
                                </div>
                                <div class="lowin-group">
                                    <label>邮箱 </label>
                                    <input type="text" name="email" class="lowin-input">
                                </div>
                                <div class="lowin-group">
                                    <label>手机号 </label>
                                    <input type="text" name="phone" class="lowin-input">
                                </div>
                                <div class="lowin-group">
                                    <label>学生姓名 </label>
                                    <input type="text" name="students" class="lowin-input">
                                </div>
                                <div class="lowin-group">
                                    <label>指导教师 </label>
                                    <input type="text" name="teacher" class="lowin-input">
                                </div>
                                <div class="lowin-group">
                                    <label>所需金钱 </label>
                                    <input type="text" name="money" class="lowin-input">
                                </div>

                                <div class="lowin-group">
                                    <label>视频文件 </label>
                                    <input type="file" name="video">
                                </div>

                                <div class="lowin-group">
                                    <label>图片 </label>
                                    <input type="file" multiple id="f" type="file" name="f" onchange="change()" >
                                    <img name="pic" id="preview" alt="" src="" name="pic" class="file_img" style="margin-top: 5px;margin-left: 12px; width: 158px; height: 230px;"/>
                                </div>

                                <div class="lowin-group">
                                    <label>附件 </label>
                                    <input type="file" name="file">
                                </div>

                                <button id="reg" class="lowin-btn login-btn">
                                    注 册
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
    function change() {
        var pic = document.getElementById("preview"),
            file = document.getElementById("f");
        //得到后缀名
        var ext=file.value.substring(file.value.lastIndexOf(".")+1).toLowerCase();
        // gif在IE浏览器暂时无法显示
        if(ext!='png'&&ext!='jpg'&&ext!='jpeg'){
            alert("图片的格式必须为png或者jpg或者jpeg格式！");
            return;
        }
        var isIE = navigator.userAgent.match(/MSIE/)!= null,
            isIE6 = navigator.userAgent.match(/MSIE 6.0/)!= null;

        if(isIE) {
            file.select();
            var reallocalpath = document.selection.createRange().text;

            // IE6浏览器设置img的src为本地路径可以直接显示图片
            if (isIE6) {
                pic.src = reallocalpath;
            }else {
                // 非IE6版本的IE由于安全问题直接设置img的src无法显示本地图片，但是可以通过滤镜来实现
                pic.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod='image',src=\"" + reallocalpath + "\")";
                // 设置img的src为base64编码的透明图片 取消显示浏览器默认图片
                pic.src = 'data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw==';
            }
        }else {
            html5Reader(file);
        }
    }

    function html5Reader(file){
        var file = file.files[0];
        var reader = new FileReader();
        reader.readAsDataURL(file);
        reader.onload = function(e){
            var pic = document.getElementById("preview");
            pic.src=this.result;
        }
    }


</script>
</body>
</html>
