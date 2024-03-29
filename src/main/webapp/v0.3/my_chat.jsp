<!doctype html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <%@ include file="Resource.jsp" %>

    <title>创新展示平台</title>
    <link rel="stylesheet" href="/Static/jquery/1.11.3/jquery.min.js">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css"
          integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp"
          crossorigin="anonymous">
    <style type="text/css">

        * {
            margin: 0;
            padding: 0;
            font-size: 12px;
            font-family: "微软雅黑";
        }

        .all {
            width: 100%;
            height: 790px;
            /*background-color: #7fa4f2;*/
            background: linear-gradient(to right, #879eee, #ba78dc); /* 标准的语法 */

        }

        .chat_index {
            width: 1000px;
            height: 600px;
            border: 1px solid black;
            position: relative;
            top: 100px;
            margin: 0 auto;
        }

        .chat_banner {
            background: linear-gradient(to right, #a41adc, #ee1351, #a41adc); /* 标准的语法 */
            width: 999px;
            height: 50px;
            border: 1px solid blue;
        }

        .chat_body {
            width: 999px;
            height: 546px;
            border: 1px solid red;
        }

        .chat_online {
            overflow: hidden;
            float: left;
            height: 546px;
            width: 200px;
            border: 1px solid yellow;
            background-color: white;
        }

        .search_online {
            text-indent: 2em;
            height: 40px;
            border: 1px solid black;
        }

        .search_online input[type="text"] {
            outline: none;
            margin: 2px auto;
            height: 30px;
            width: 60%;
            border-radius: 8px;
            text-indent: 2em;
        }

        .online_friend ul li {

            list-style-type: none;
        }

        .online_friend ul li {

            height: 60px;
            border-bottom: 1px solid #1c1f21;
            margin-top: 10px;
        }

        .a_friend {

            /*border: 1px solid #2328ff;*/
            height: 55px;
            background-color: white;

        }



        .head_text {
            padding: 3px;
            font-size: 22px;
            text-align: center;
            vertical-align: center;
            margin-top: 3px;
        }

        .friend {

            float: right;
            height: 54px;
            width: 140px;
            /*border: 1px solid rebeccapurple;*/
        }

        .friend .name {

            margin: 4px 6px;
            float: left;
        }

        .friend .this_time {
            margin-top: 4px;
            float: right;
        }

        .chat_main {
            float: left;
            width: 548px;
            height: 546px;
            border: 1px solid seagreen;
            /*background-color: white;*/
            background: #ffffff;
            background-size: cover;
        }

        .send_message {
            width: 548px;
            height: 65px;
            position: absolute;
            bottom: 0px;
            background: linear-gradient(to top, rgba(9, 216, 237, 0.99), #72cad4);
        }

        .send_message input[type="text"] {
            width: 470px;
            height: 30px;
            margin-top: 16px;
            margin-left: 10px;
            border-radius: 10px 0 0 10px;
            text-indent: 2em;
            outline: none;
            background-color: white;
            border: none;
        }

        .send_message input[type="button"] {
            border-radius: 0 10px 10px 0;
            width: 35px;
            height: 30px;
            background-color: white;
            border: none;
            margin-left: 0;
            background-color: #ffffff;
            border: none;
            outline: none;

        }

        .send_message input[type="button"]:hover {
            background-color: orangered;
        }

        .send_message input[type="button"]:active {
            background-color: #879eee;
        }

        .chat_namecard {
            float: left;
            width: 245px;
            height: 546px;
            border: 1px solid saddlebrown;
            background-color: #f1fea9;
        }


        .chat_content ul{
            list-style-type: none;
        }
        .chat_content{
            overflow: auto;
            width: 540px;
            /*设置高度滚动条才有效*/
            height: 470px;
        }
        .chat_content li{
            margin-top: 10px;
            width: 540px;
            clear: both;
            display: block;

        }

        .chat_content li img{
            margin: 6px 0 0 0;
        }

        .chat_content li span {
            background: #ffd351;
            padding: 10px;
            border-radius: 10px;
            /*最大宽度不能太长，不然布局会混乱*/
            max-width: 400px;
            border: 1px solid white;
            box-shadow: 0 0 3px #879eee;
            margin: 6px 10px 0 10px;
            overflow: hidden;
        }

        .chat_content li img {
            width: 40px;
            height: 40px;
            border-radius: 50%;
        }

        .chat_content li img.imgleft {
            margin-left: 10px;
            float: left;
        }

        .chat_content li img.imgright {
            margin-right: 10px;
            float: right;
        }

        .chat_content li span.spanleft {
            float: left;
        }

        .chat_content li span.spanright {
            float: right;
        }

    </style>

</head>
<body class="sidebar-fixed header-fixed" class="box">
<div class="page-wrapper">
    <%@include file="Head.jsp" %>

    <div class="main-container">
        <%@include file="navigation.jsp" %>

        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-body">


                                <div class="all">
                                    <div class="chat_index">
                                        <!--banner-->
                                        <div class="chat_banner">

                                        </div>

                                        <div class="chat_body">
                                            <!--在线列表-->
                                            <div class="chat_online">
                                                <div class="online_friend">
                                                    <ul>
                                                        <li>
                                                            <div class="a_friend">
                                                                <div class="friend" onclick="change()">
                                                                    <div class="name" id="name">songshuang</div>
                                                                </div>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </div>

                                            </div>
                                            <!--聊天界面-->
                                            <div class="chat_main">
                                                <div class="chat_div">
                                                    <ul id="chat_ul" class="chat_content">

                                                    </ul>

                                                </div>

                                                <div class="send_message">
                                                    <form>
                                                        <input type="text" placeholder="请输入消息" id="send_txt">
                                                        <input type="button" value="发送" id="send_btn">
                                                    </form>
                                                </div>
                                            </div>
                                            <!--名片-->
                                            <div class="chat_namecard">

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
    </div>

</div>
<%@include file="JSResource.jsp" %>

<script>
    document.getElementById("name").innerText=window.localStorage.getItem("teamName");
    function change(){
        alert("111")
    }

    window.onload = function () {
        var user = ["../img/img_17.jpg"];
        var num = 1;//判断左右
        var portrait_position = 0;
        var now = -1;//左右浮动
        var send_btn = document.getElementById('send_btn');
        var send_txt = document.getElementById('send_txt');
        var chat_ul = document.getElementById('chat_ul');
        var chat_span = chat_ul.getElementsByTagName('span');
        var chat_img = chat_ul.getElementsByTagName('img');
        send_btn.onclick = function () {
            if (send_txt.value == '') {
                alert("请不要惜字如金");
            } else {
                chat_ul.innerHTML += '<li><img src="../pic/3.jpg"><span>' + send_txt.value + '</span>';
                now++;
                if (num==1) {
                    chat_span[now].className = 'spanright';
                    chat_img[now].className = 'imgright';
                }
                else {
                    chat_span[now].className = 'spanleft';
                    chat_img[now].className = 'imgleft';
                }
                send_txt.value = '';
                // 内容过多时,将滚动条放置到最底端
                /*contentcontent.scrollTop = content.scrollHeight;*/
            }
        }


    }

</script>

</body>
</html>
