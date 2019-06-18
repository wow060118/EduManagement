<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<nav class="navbar page-header">
    <a href="#" class="btn btn-link sidebar-mobile-toggle d-md-none mr-auto">
        <i class="fa fa-bars"></i>
    </a>

    <a class="navbar-brand" href="#">
        <img src="/Static/imgs/logo.png" alt="logo">
    </a>

    <a href="#" class="btn btn-link sidebar-toggle d-md-down-none">
        <i class="fa fa-bars"></i>
    </a>

    <ul class="navbar-nav ml-auto">

        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <img src="/Static/imgs/avatar-1.png" class="avatar avatar-sm" alt="logo">
                <span class="small ml-1 d-md-down-none">${userInfo.account}</span>
            </a>
            <c:if test="${userInfo!=null}">
            <div class="dropdown-menu dropdown-menu-right">
                <div class="dropdown-header">账户信息</div>
                <a href="/v0.3/create_pro.jsp" class="dropdown-item">
                    <i class="fa fa-pencil-alt"></i> 创建项目
                </a>
                <a href="/v0.3/update_my_info.jsp" class="dropdown-item">
                    <i class="fa fa-user"></i> 修改信息
                </a>


                <div class="dropdown-header">设置</div>

                <a href="#" class="dropdown-item">
                    <i class="fa fa-bell"></i> 通知
                </a>

                <a href="#" class="dropdown-item">
                    <i class="fa fa-wrench"></i> 设置
                </a>

                <a href="/user/logout" class="dropdown-item">
                    <i class="fa fa-lock"></i> 注销
                </a>
            </div>
            </c:if>
            <c:if test="${userInfo==null}">
            <div class="dropdown-menu dropdown-menu-right">
                <div class="dropdown-header">账户信息</div>
                <a href="/v0.3/login.jsp" class="dropdown-item">
                    <i class="fa fa-pencil-alt"></i> 登陆
                </a>
            </div>
            </c:if>
        </li>
    </ul>
</nav>