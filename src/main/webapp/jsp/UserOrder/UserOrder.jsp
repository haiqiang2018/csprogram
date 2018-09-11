<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/9/11/011
  Time: 15:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <title>用户订单</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="../../static/layui/css/layui.css" media="all">
    <script src="../../static/common/jQuery/jquery-3.3.1.min.js"></script>
    <script src="../../static/common/jQuery/jquery.js"></script>

</head>
<body>
<jsp:include page="../header.jsp"/>

<table id="demo" lay-filter="test"></table>

<script src="../../static/layui/layui.js"></script>
<script>
    layui.use('table', function(){
        var table = layui.table;

        //第一个实例
        table.render({
            elem: '#demo'
            ,height: 312
            ,margin:-200
            ,url: '/demo/table/user/' //数据接口
            ,page: true //开启分页
            ,cols: [[ //表头
                {field: 'wealth', title: '', width: 100}
                ,{field: 'oz', title: '编号', width:200, sort: true}
                ,{field: 'oId', title: '订单号', width:200, sort: true}
                ,{field: 'uName', title: '用户名', width:200}
                ,{field: 'oTime', title: '下单时间', width:200, sort: true}
                ,{field: 'oMoney', title: '订单总额', width: 200}
                ,{field: 'oStates', title: '订单状态', width: 200}
               ,{field: 'score', title: '', width: 150}
               /*  ,{field: 'classify', title: '职业', width: 80}
                ,*/
            ]]
        });

    });
</script>

<jsp:include page="../footer.jsp"/>
</body>
</html>
