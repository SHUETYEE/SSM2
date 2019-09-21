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
                        <a href="${pageContext.request.contextPath}/system/set">

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
        <router-view>

            <form class="layui-form layui-form-pane" action="">
                <div class="layui-form-item">
                    <label class="layui-form-label">长输入框</label>
                    <div class="layui-input-block">
                        <input type="text" name="title" autocomplete="off" placeholder="请输入标题" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">短输入框</label>
                    <div class="layui-input-inline">
                        <input type="text" name="username" lay-verify="required" placeholder="请输入" autocomplete="off" class="layui-input">
                    </div>
                </div>

                <div class="layui-form-item">
                    <div class="layui-inline">
                        <label class="layui-form-label">日期选择</label>
                        <div class="layui-input-block">
                            <input type="text" name="date" id="date1" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-inline">
                        <label class="layui-form-label">行内表单</label>
                        <div class="layui-input-inline">
                            <input type="text" name="number" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">密码</label>
                    <div class="layui-input-inline">
                        <input type="password" name="password" placeholder="请输入密码" autocomplete="off" class="layui-input">
                    </div>
                    <div class="layui-form-mid layui-word-aux">请务必填写用户名</div>
                </div>

                <div class="layui-form-item">
                    <div class="layui-inline">
                        <label class="layui-form-label">范围</label>
                        <div class="layui-input-inline" style="width: 100px;">
                            <input type="text" name="price_min" placeholder="￥" autocomplete="off" class="layui-input">
                        </div>
                        <div class="layui-form-mid">-</div>
                        <div class="layui-input-inline" style="width: 100px;">
                            <input type="text" name="price_max" placeholder="￥" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                </div>

                <div class="layui-form-item">
                    <label class="layui-form-label">单行选择框</label>
                    <div class="layui-input-block">
                        <select name="interest" lay-filter="aihao">
                            <option value=""></option>
                            <option value="0">写作</option>
                            <option value="1" selected="">阅读</option>
                            <option value="2">游戏</option>
                            <option value="3">音乐</option>
                            <option value="4">旅行</option>
                        </select>
                    </div>
                </div>

                <div class="layui-form-item">
                    <label class="layui-form-label">行内选择框</label>
                    <div class="layui-input-inline">
                        <select name="quiz1">
                            <option value="">请选择省</option>
                            <option value="浙江" selected="">浙江省</option>
                            <option value="你的工号">江西省</option>
                            <option value="你最喜欢的老师">福建省</option>
                        </select>
                    </div>
                    <div class="layui-input-inline">
                        <select name="quiz2">
                            <option value="">请选择市</option>
                            <option value="杭州">杭州</option>
                            <option value="宁波" disabled="">宁波</option>
                            <option value="温州">温州</option>
                            <option value="温州">台州</option>
                            <option value="温州">绍兴</option>
                        </select>
                    </div>
                    <div class="layui-input-inline">
                        <select name="quiz3">
                            <option value="">请选择县/区</option>
                            <option value="西湖区">西湖区</option>
                            <option value="余杭区">余杭区</option>
                            <option value="拱墅区">临安市</option>
                        </select>
                    </div>
                </div>
                <div class="layui-form-item" pane="">
                    <label class="layui-form-label">开关-开</label>
                    <div class="layui-input-block">
                        <input type="checkbox" checked="" name="open" lay-skin="switch" lay-filter="switchTest" title="开关">
                    </div>
                </div>
                <div class="layui-form-item" pane="">
                    <label class="layui-form-label">单选框</label>
                    <div class="layui-input-block">
                        <input type="radio" name="sex" value="男" title="男" checked="">
                        <input type="radio" name="sex" value="女" title="女">
                        <input type="radio" name="sex" value="禁" title="禁用" disabled="">
                    </div>
                </div>
                <div class="layui-form-item layui-form-text">
                    <label class="layui-form-label">文本域</label>
                    <div class="layui-input-block">
                        <textarea placeholder="请输入内容" class="layui-textarea"></textarea>
                    </div>
                </div>
                <div class="layui-form-item">
                    <button class="layui-btn" lay-submit="" lay-filter="demo2">跳转式提交</button>
                </div>
            </form>



        </router-view>
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