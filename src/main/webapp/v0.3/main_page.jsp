<!doctype html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <%@ include file ="Resource.jsp"%>
    <title>教务管理系统</title>
</head>
<body class="sidebar-fixed header-fixed">
<div class="page-wrapper">
    <%@include file="Head.jsp"%>

    <div class="main-container">
        <%@include file="navigation.jsp" %>


        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-3">
                        <div class="card p-4">
                            <div class="card-body d-flex justify-content-between align-items-center">
                                <div>
                                    <span id="uid" >${userInfo.uid}</span>
                                    <span class="h4 d-block font-weight-normal mb-2">用户名称:${userInfo.account}</span>
                                    <span class="font-weight-light">用户类型:${userInfo.userType}
                                    </span>
                                </div>

                                <div class="h2 text-muted">
                                    <i class="icon icon-people"></i>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-9 mb-4">
                        <ul class="nav nav-tabs" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" data-toggle="tab" href="#home" role="tab" aria-controls="home">首页公告</a>
                            </li>
    
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#profile" role="tab" aria-controls="profile">要闻</a>
                            </li>
    
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#messages" role="tab" aria-controls="messages">科技人物介绍</a>
                            </li>
                        </ul>
    
                        <div class="tab-content">
                            <div class="tab-pane active" id="home" role="tabpanel">

                            </div>
    
                            <div class="tab-pane" id="profile" role="tabpanel">
                                <ul>
                                    <li>
                                        <a href="#">我国研制出4米大口径碳化硅非球面光学反射镜</a>
                                    </li>
                                    <li>
                                        <a href="#">全球首台AP1000三代核电机组成功并网发电</a>
                                    </li>
                                    <li>
                                        <a href="#">“金牌火箭”背后的“金牌火箭人”——记长征三号甲系列运载火箭研发团队</a>
                                    </li>
                                    <li>
                                        <a href="#">中科院应用成果展举行</a>
                                    </li>
                                    <li>
                                        <a href="#">我国自主研发的疏浚重器“天鲲号”首次试航成功</a>
                                    </li>
                                </ul>
                            </div>
    
                            <div class="tab-pane" id="messages" role="tabpanel">
                                <ul>
                                    <li>
                                        <a href="#">张超：做精准医学和科技转化的实践者</a>
                                    </li>
                                    <li>
                                        <a href="#">王晓东院士：既是先驱，何惧冷暖</a>
                                    </li>
                                    <li>
                                        <a href="#">邵益生谈智慧城市建设：做好“里子”才能撑起“面子”</a>
                                    </li>
                                    <li>
                                        <a href="#">余贻鑫院士：智能电网将催生新商业模式</a>
                                    </li>
                                    <li>
                                        <a href="#">“雕刻”火药30年 航天工匠“一把刀””——记以国为重的大国工匠徐立平</a>
                                    </li>
                                </ul>
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
                                        <th>成果完成人</th>
                                        <th>标题</th>
                                        <th>创建时间</th>
                                        <th>操作</th>
                                    </tr>
                                    </thead>
                                    <tbody id="tbody">
                                    <tr>
                                        <td>林海军</td>
                                        <td>耳声发射检测仪</td>
                                        <td>2019.5.20</td>
                                        <%--到时候添加方法--%>
                                        <td onclick="details()">详情</td>
                                    </tr>
                                    <tr>
                                        <td>颜颐欣</td>
                                        <td>具有自组网功能的人防电声报警控制器</td>
                                        <td>2019.5.20</td>
                                        <%--到时候添加方法--%>
                                        <td onclick="details()">详情</td>
                                    </tr>

                                    <tr>
                                        <td>许家忠</td>
                                        <td>干纤维缠绕复合材料气瓶</td>
                                        <td>2019.5.20</td>
                                        <%--到时候添加方法--%>
                                        <td onclick="details()">详情</td>
                                    </tr>
                                    <tr>
                                        <td>丁喜波</td>
                                        <td>智能化可燃性气体传感器 & 智能家居安防系列产品</td>
                                        <td>2019.5.20</td>
                                        <%--到时候添加方法--%>
                                        <td onclick="details()">详情</td>
                                    </tr>
                                    <tr>
                                        <td>许家忠</td>
                                        <td>四自由度缠绕机</td>
                                        <td>2019.5.20</td>
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
<%@include file="JSResource.jsp"%>

<script type="text/javascript">
    var uid = document.getElementById("uid").innerText;
    console.log(uid);
    window.localStorage.setItem("user",uid);
    function details() {
        window.location.href="/v0.3/achievement.jsp"
    }


</script>
</body>
</html>
