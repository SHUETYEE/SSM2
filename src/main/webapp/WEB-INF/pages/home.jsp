<%--
  Created by IntelliJ IDEA.
  User: 李靖宇
  Date: 2019/9/21
  Time: 10:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>KITADMIN 后台管理模板</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/js/css/layui.css" id="layui">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/js/css/theme/default.css" id="theme">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/js/css/kitadmin.css" id="kitadmin">

</head>

<body class="layui-layout-body kit-theme-default">
<div class="layui-layout layui-layout-admin">
    <!-- header -->
    <div class="layui-header">
        <div class="layui-logo">
            <div class="layui-logo-toggle" kit-toggle="side" data-toggle="on">
                <i class="layui-icon">&#xe65a;</i>
            </div>
            <div class="layui-logo-brand">
                <a href="#/">KITADMIN 2.0</a>
            </div>
        </div>
        <div class="layui-layout-left">
            <ul class="kit-nav" lay-filter="header_right">


                <li class="kit-item">

              <span style="color: white;">
               计算机学院文档管理与快速定位系统
              </span>

                </li>
            </ul>
        </div>
        <div class="layui-layout-right">
            <ul class="kit-nav" lay-filter="header_right">

                <li class="kit-item" id="ccleft">
                    <span style="color:white">欢迎回来：李靖宇, 现在时间2019年</span>
                </li>
                <li class="kit-item" id="cc">
                    <a href="#">退出登录</a>
                </li>

            </ul>
        </div>
    </div>
    <!-- silds -->
    <div class="layui-side" kit-side="true">
        <div class="layui-side-scroll">
            <div id="menu-box">
                <ul class="kit-menu">

                    <li class="kit-menu-item">
                        <a href="${pageContext.request.contextPath}/system/home">

                            <span>&nbsp;&nbsp;&nbsp;&nbsp;系统首页</span>
                        </a >
                    </li>

                    <li class="kit-menu-item">
                        <a href="${pageContext.request.contextPath}/system/file">

                            <span>&nbsp;&nbsp;&nbsp;&nbsp;文件管理</span>
                        </a>
                    </li>
                    <li class="kit-menu-item">
                        <a href="#/layui/form">

                            <span>&nbsp;&nbsp;&nbsp;&nbsp;文件统计</span>
                        </a>
                    </li>

                    <li class="kit-menu-item">
                        <a href="#/layui/table-element">

                            <span>&nbsp;&nbsp;&nbsp;&nbsp;用户管理</span>
                        </a>
                    </li>
                    <li class="kit-menu-item">
                        <a href="#/layui/anim">

                            <span>&nbsp;&nbsp;&nbsp;&nbsp;系统日志</span>
                        </a>
                    </li>
                    <li class="kit-menu-item">
                        <a href="#/layui/timeline">

                            <span>&nbsp;&nbsp;&nbsp;&nbsp;个人设置</span>
                        </a>
                    </li>
                    <li class="kit-menu-item">
                        <a href="#/layui/table">
                            <i class="layui-icon">&#xe62e;</i>
                            <span>预留方案</span>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <!-- main -->
    <div class="layui-body" kit-body="false">
        <router-view>kkkkkkkkkkkkkkk</router-view>
    </div>
    <!-- footer -->
    <div class="layui-footer" kit-footer="true">
        2017 © kit.zhengjinfan.cn MIT license
        <div style="width:400px; height:400px;" class="load-container load1">
            <div class="loader">Loading...</div>
        </div>
    </div>
</div>
<script src="${pageContext.request.contextPath}/js/polyfill.min.js"></script>
<script src="${pageContext.request.contextPath}/js/layui.js"></script>
<%--<script src="${pageContext.request.contextPath}/js/kitadmin.js"></script>--%>
<script src="${pageContext.request.contextPath}/js/mockjs-config.js"></script>

<script src="https://cdn.bootcss.com/echarts/4.1.0.rc2/echarts.min.js"></script>
<script>layui.use("admin");</script>

</body>

</html>