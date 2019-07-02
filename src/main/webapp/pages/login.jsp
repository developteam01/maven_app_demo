<%@ page language="java" contentType="text/html; charset=UTF-8"
                pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>Test Page</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/admin.css"/>

    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/layui/layui.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/layui/admin.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/menuList.js"></script>
</head>

<body>
<body class="layui-layout-body">
<div id="LAY_app" class="layadmin-tabspage-none">


    <div class="layui-layout layui-layout-admin">
        <div class="layui-header">
            <!-- 头部区域（可配合layui已有的水平导航） -->
            <ul class="layui-nav layui-layout-left">
               <%-- <li class="layui-nav-item layadmin-flexible" lay-unselect>
                    <a href="javascript:;" layadmin-event="flexible" title="侧边伸缩">
                        <i class="layui-icon layui-icon-shrink-right" id="LAY_app_flexible"></i>
                    </a>
                </li>
                <li class="layui-nav-item" lay-unselect="">
                    <a href="javascript:;" layadmin-event="refresh" title="刷新">
                        <i class="layui-icon layui-icon-refresh-3"></i>
                    </a>
                </li>--%>
                <li class="layui-nav-item layui-hide-xs"><a href="">控制台</a></li>
                <li class="layui-nav-item layui-hide-xs"><a href="">商品管理</a></li>
                <li class="layui-nav-item layui-hide-xs"><a href="">用户</a></li>
            </ul>
            <ul class="layui-nav layui-layout-right">
                <li class="layui-nav-item">
                    <a href="javascript:;">
                        <img src="${pageContext.request.contextPath}/images/login-head.jpg" class="layui-nav-img">
                        崔辉
                    </a>
                    <dl class="layui-nav-child">
                        <dd><a href="">基本资料</a></dd>
                        <dd><a href="">安全设置</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item"><a href="">退了</a></li>
            </ul>
        </div>

        <div class="layui-side layui-side-menu">
            <div class="layui-logo" lay-href="home/console.html">
                <span>This is a demo</span>
            </div>
            <div class="layui-side-scroll">
                <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
                <ul class="layui-nav layui-nav-tree" lay-shrink="all" lay-filter="layadmin-system-side-menu"
                    id="layui_nav_list">
                </ul>
            </div>
        </div>
        <div class="layui-body">
            <!-- 内容主体区域 -->
            <div style="padding: 15px 15px 0px 15px;">
                <iframe src="${pageContext.request.contextPath}" style="width: 100%; height: 300px;" frameborder="0"
                        scrolling="auto"
                        id="iframe" name="mainiframe">
                </iframe>
            </div>
            <!-- 底部固定区域 -->
            <div class="layui-footer">
                © cuihui.com - 2019-06-20
            </div>
        </div>
    </div>
</div>
<script>
    //JavaScript代码区域
    layui.use(['jquery','element'], function(){
        var element = layui.element;
        var $ = layui.$;

    });
</script>
<script>
    var _hmt = _hmt || [];
    (function() {
        var hm = document.createElement("script");
        hm.src = "https://hm.baidu.com/hm.js?d214947968792b839fd669a4decaaffc";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();
    getappList();

    function getappList() {
        var html = '';
        $(data).each(function (i, v, e) {
            if (v.child.length > 0) {
                html += '<li class="layui-nav-item">';
                html += '<a href="#" class="">';
                html += '<i class="' + v.icon + '"></i>';
                html += '<span class="menu-text"> ' + v.name + ' </span>';
                html += '<b class="arrow fa fa-angle-down"></b>';
                html += '</a>';
                html += '<b class="arrow"></b>';
                html += '<dl class="layui-nav-child">';
                $(v.child).each(function (ii, vv, ee) {
                    if (vv.child.length > 0) {
                        html += '<dd class="">';
                        html += '<a href="#" class="">';
                        html += '<i class="menu-icon fa"></i>';
                        html += vv.name;
                        html += '<b class="arrow fa fa-angle-down"></b>';
                        html += '</a>';
                        html += '<b class="arrow"></b>';
                        html += '<dl class="layui-nav-child">';
                        $(vv.child).each(function (iii, vvv, eee) {
                            if (vvv.child.length > 0) {
                                html += '<dd class="">';
                                html += '<a class="">';
                                html += '<i class="menu-icon fa fa-caret-right"></i>';
                                html += vvv.name;
                                html += '<b class="arrow fa fa-angle-down"></b>';
                                html += '</a>';
                                html += '<b class="arrow"></b>';
                                html += '<dl class="layui-nav-child">';
                                $(vvv.child).each(function (iiii, vvvv, eeee) {
                                    html += '<dd class="">';
                                    html += '<a class="' + vvvv.class + '" href="' + vvvv.url + '" type="' + vvvv.type + '" target="mainiframe">';
                                    html += vvvv.name;
                                    html += '</a>';
                                    html += '<b class="arrow"></b>';
                                    html += '</dd>';
                                })
                                html += '</dl>';
                                html += '</dd>'
                            } else {
                                html += '<dd class="">';
                                html += '<a class="' + vvv.class + '" href="' + vvv.url + '" type="' + vvv.type + '" target="mainiframe">'
                                html += vvv.name;
                                html += '</a>';
                                html += '<b class="arrow"></b>';
                                html += '</dd>';
                            }

                        })
                        html += '</dl>';
                        html += '</dd>'
                    } else {
                        html += '<dd class="">'
                        html += '<a  class="' + vv.class + '" href="' + vv.url + '" type="' + vv.type + '" target="mainiframe">'
                        html += vv.name;
                        html += '</a>'
                        html += '<b class="arrow"></b>'
                        html += '</dd>';
                    }
                })
                html += '</dl>';
                html += '</li>';
            } else {
                if (v.name == '首页') {
                    html += '<li class="layui-nav-item">';
                    html += '<a href="index.html">';
                    html += '<i class="' + v.icon + '"></i>';
                    html += '<span class="menu-text"> ' + v.name + ' </span>';
                    html += '</a>';
                    html += '<b class="arrow"></b>';
                    html += '</li>'
                } else {
                    html += '<li class="layui-nav-item">';
                    html += '<a class="' + v.class + '" href="' + v.url + '" type="' + v.type + '">';
                    html += '<i class="' + v.icon + '"></i>';
                    html += '<span class="menu-text"> ' + v.name + ' </span>';
                    html += '</a>';
                    html += '<b class="arrow"></b>';
                    html += '</li>'
                }

            }
        });
        $('#layui_nav_list').html(html);
    }
</script>
</body>
</body>
</html>