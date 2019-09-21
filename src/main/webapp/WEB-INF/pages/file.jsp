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


    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>


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
                        <a href="${pageContext.request.contextPath}/system/statistic">

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
        <router-view>




                <div class="demoTable" style="padding-top: 30px">
                    <form action="${pageContext.request.contextPath}/list.do" method="post" >
                        <div class="layui-inline" style="float: none;width: 400px">
                            <input class="layui-input" name="period"  autocomplete="off" placeholder="请输入珠型时期">
                        </div>
                        &nbsp;&nbsp;&nbsp;
                        <button type="submit" class="layui-btn">
                            <i class="layui-icon">&#xe615;</i> <a href="${pageContext.request.contextPath}/list.do">搜索</a>
                        </button>
                    </form>
                </div>

                <div style="float: right;" style="float: right;">
                    <button type="button" class="layui-btn">
                        <i class="layui-icon">&#xe669;</i> <a href="${pageContext.request.contextPath}/list.do">刷新</a>
                    </button>
                    <button type="button" class="layui-btn">
                        <i class="layui-icon">&#xe608;</i> <a href="${pageContext.request.contextPath}/addforward.do">添加</a>
                    </button>
                    <button type="button" class="layui-btn">
                        <i class="layui-icon">&#xe601;</i> <a href="${pageContext.request.contextPath}/addforward.do">导出</a>
                    </button>
                    <button type="button" class="layui-btn" >
                        <i class="layui-icon">&#xe640;</i> <a href="javascript:void(0)" id="delServlet" >删除选中</a>
                    </button>
                </div>


                <form id="form" method="post" action="${pageContext.request.contextPath}/delSelected.do">

                    <!-- 内容主体区域 -->
                    <table class="layui-table">
                        <colgroup>
                            <col width="100">
                            <col width="200">
                            <col width="200">
                            <col width="200">
                            <col width="200">
                            <col width="100">
                            <col width="250">
                            <col />
                        </colgroup>
                        <thead>
                        <tr>
                            <th>编号</th>
                            <th>时期</th>
                            <th>指标</th>
                            <th>单位</th>
                            <th>时间</th>
                            <th>数值</th>
                            <th>其他操作</th>
                            <th><input type="checkbox" id="ch"></th>
                        </tr>
                        </thead>
                        <tbody>


                        <c:forEach items="${inves}" var="button" varStatus="s">
                            <tr>
                                <td>${s.count}</td>
                                <td>${button.period}</td>
                                <td>${button.norm}</td>
                                <td>${button.company}</td>
                                <td>${button.time}</td>
                                <td>${button.value}</td>
                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <button type="button" class="layui-btn layui-btn-danger" data-target="#myModal" ><i class="layui-icon"></i></button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <a href="javascript:deleteButton(${button.id});"><button type="button" class="layui-btn layui-btn-danger" ><i class="layui-icon"></i></button></a>
                                </td>
                                <td><input type="checkbox" name="uid" value="${button.id}"></td>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>

                    </table>
                </form>

            <!-- 模态框（Modal） -->
            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                &times;
                            </button>
                            <h4 class="modal-title" id="myModalLabel">
                                模态框（Modal）标题
                            </h4>
                        </div>
                        <div class="modal-body">
                            在这里添加一些文本
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                            </button>
                            <button type="button" class="btn btn-primary">
                                提交更改
                            </button>
                        </div>
                    </div><!-- /.modal-content -->
                </div><!-- /.modal -->
            </div>



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