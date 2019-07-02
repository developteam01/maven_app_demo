/*type为0时是建设中的页面，1是已发布的页面，2是测试中的页面*/
var curPath = window.document.location.href;
var pathName = window.document.location.pathname;
var basePath;
basePath = curPath.substring(0,curPath.indexOf(pathName)) + ""
    + pathName.substring(0,pathName.substr(1).indexOf('/')+1) + "/";
var data = [
    {
        name: '首页',
        icon:'layui-icon layui-icon-home',
        url: 'index.html',
        type:'1',
        class:'',
        child: []
    },
    {
        name: '用户管理',
        icon:'layui-icon layui-icon-user',
        url: '',
        child: [
            {
                name: '用户列表',
                url: basePath+'pages/user.jsp',
                class:'',
                type:'1',
                child: []
            },
        ]
    },
    {
        name: '权限管理',
        url: '',
        icon:'layui-icon layui-icon-auz',
        child: [
            {
                name: '用户列表',
                url: basePath+'pages/user.jsp',
                class: '',
                type:'1',
                child: []
            },
            {
                name: '用户列表',
                url: basePath+'pages/user.jsp',
                class: '',
                type:'1',
                child: []
            },
            {
                name: '用户列表',
                url: basePath+'pages/user.jsp',
                class: '',
                type:'1',
                child: []
            },
            {
                name: '用户列表',
                url: basePath+'pages/user.jsp',
                class: '',
                type:'1',
                child: []
            },
            {
                name: '用户列表',
                url: basePath+'pages/user.jsp',
                class: '',
                type:'1',
                child: []
            },
        ]
    },
    {
        name: '角色管理',
        url: '',
        icon:'layui-icon layui-icon-app',
        child: [
            {

                name: '目录一',
                url: '',
                child: [
                    {
                        name: '用户列表',
                        url: basePath+'pages/user.jsp',
                        class: '',
                        type:'1',
                        child: []
                    },
                    {
                        name: '用户列表',
                        url: basePath+'pages/user.jsp',
                        class: '',
                        type:'1',
                        child: []
                    },
                    {
                        name: '用户列表',
                        url: basePath+'pages/user.jsp',
                        class: '',
                        type:'1',
                        child: []
                    },
                ]

            },
            {
                name: '目录二',
                url: '',
                class: '',
                child: [
                    {
                        name: '用户列表',
                        url: basePath+'pages/user.jsp',
                        class: '',
                        type:'1',
                        child: []
                    },
                ]
            },
        ]
    },
    {
        name: '解决方案',
        icon:'layui-icon layui-icon-set',
        url: '',
        class: '',
        child:[
            {
                name: '其他',
                url: '',
                icon:'fa-desktop',
                child: [
                    {
                        name: '用户列表',
                        url: basePath+'pages/user.jsp',
                        class: '',
                        type:'1',
                        child: []
                    },
                    {
                        name: '用户列表',
                        url: basePath+'pages/user.jsp',
                        class: '',
                        type:'1',
                        child: []
                    },
                ]
            },

        ]
    }
];
