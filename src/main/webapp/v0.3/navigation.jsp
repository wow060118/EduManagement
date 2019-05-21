<%--
  Created by IntelliJ IDEA.
  User: Koreyoshi
  Date: 2019/5/21
  Time: 14:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="sidebar">
    <nav class="sidebar-nav">
        <ul class="nav">
            <li class="nav-title">导航</li>

            <li class="nav-item">
                <a href="/v0.3/main_page.jsp" class="nav-link active">
                    <i class="icon icon-speedometer"></i> 主页
                </a>
            </li>

            <li class="nav-item nav-dropdown">
                <a href="#" class="nav-link nav-dropdown-toggle">
                    <i class="icon icon-target"></i> 创新成果展示 <i class="fa fa-caret-left"></i>
                </a>

                <ul class="nav-dropdown-items">
                    <li class="nav-item">
                        <a href="/v0.3/under_create_pro.jsp" class="nav-link">
                            <i class="icon icon-target"></i> 本科生创新成果展示
                        </a>
                    </li>
                </ul>

                <ul class="nav-dropdown-items">
                    <li class="nav-item">
                        <a href="/v0.3/post_create_pro.jsp" class="nav-link">
                            <i class="icon icon-target"></i> 研究生创新成果展示
                        </a>
                    </li>
                </ul>
            </li>

            <li class="nav-item nav-dropdown">
                <a href="#" class="nav-link nav-dropdown-toggle">
                    <i class="icon icon-energy"></i> 需求对接 <i class="fa fa-caret-left"></i>
                </a>

                <ul class="nav-dropdown-items">
                    <li class="nav-item">
                        <a href="/v0.3/requier_pro.jsp" class="nav-link">
                            <i class="icon icon-energy"></i> 需求对接
                        </a>
                    </li>
                </ul>
            </li>

            <li class="nav-title">更多</li>

            <li class="nav-item nav-dropdown">
                <a href="#" class="nav-link nav-dropdown-toggle">
                    <i class="icon icon-umbrella"></i> 其他 <i class="fa fa-caret-left"></i>
                </a>
                <ul class="nav-dropdown-items">
                    <li class="nav-item">
                        <a href="/v0.3/my_pro.jsp" class="nav-link">
                            <i class="icon icon-energy"></i> 我的项目
                        </a>
                    </li>
                </ul>
                <ul class="nav-dropdown-items">
                    <li class="nav-item">
                        <a href="/v0.3/my_apply.jsp" class="nav-link">
                            <i class="icon icon-target"></i> 我申请的项目
                        </a>
                    </li>
                </ul>
                <ul class="nav-dropdown-items">
                    <li class="nav-item">
                        <a href="/v0.3/my_chat.jsp" class="nav-link">
                            <i class="icon icon-target"></i> 交流
                        </a>
                    </li>
                </ul>
            </li>
        </ul>
    </nav>
</div>
