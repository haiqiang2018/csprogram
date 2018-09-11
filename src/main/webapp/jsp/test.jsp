<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/9/11/011
  Time: 17:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>查询系统</title>
    <link rel="stylesheet" type="text/css"
          href="http://www.jeasyui.com/easyui/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css"
          href="http://www.jeasyui.com/easyui/themes/icon.css">
    <link rel="stylesheet" type="text/css"
          href="http://www.jeasyui.com/easyui/demo/demo.css">
    <script type="text/javascript"
            src="http://code.jquery.com/jquery-1.6.min.js"></script>
    <script type="text/javascript"
            src="http://www.jeasyui.com/easyui/jquery.easyui.min.js"></script>
    <script type="text/javascript"
            src="http://www.jeasyui.com/easyui/datagrid-detailview.js"></script>
    <script src="<%=basePath %>js/jquery.confirm.js"></script>
    <link rel="stylesheet" href="<%=basePath %>css/jquery.confirm.css">

    <style type="text/css">
        form {
            margin: 0;
            padding: 0;
        }

        .dv-table td {
            border: 0;
        }

        .dv-table input {
            border: 1px solid #ccc;
        }
    </style>
</head>
<body>
<table id="dg" title="预订装修管理" class="easyui-datagrid"
       style="width: 1200px; height: 590px" url="<%=basePath%>findSubsByPage.action"
       toolbar="#toolbar" pagination="true" rownumbers="true"
       fitColumns="true" singleSelect="true">
    <thead>
    <tr>
        <th field="tel" width="40">联系方式</th>
        <th field="name" width="20">联系人</th>
        <th field="nametype" width="30">装修名称</th>
        <th field="orderTime" width="50">预订时间</th>
        <th field="content" width="50">备注内容</th>
        <th field="sex" width="20">性别</th>
        <th field="nowTime" width="50">提交时间</th>
        <!-- <th field="status" width="10">状态</th>   -->

    </tr>
    </thead>
</table>

    <div id="toolbar">
        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="destroyUser()">删除订单</a>
        <a href="javascript:void(0)" class="easyui-linkbutton" id="unorder">未成交订单</a> <a
            href="javascript:void(0)" class="easyui-linkbutton" id="order">已成交订单</a> <a href="javascript:void(0)"
                                                                                        class="easyui-linkbutton" id="ok">成交</a>
    </div>

<table>
    <tr>
        <td colspan="1"></td>
    </tr>
</table>
<script type="text/javascript">
    $(function() {
        $("#unorder").click(function() {
            var url = "../findSubsByPage.action";
            $.post(url, {
                status : 0
            }, function() {
                $('#dg').datagrid('reload');
            });
        });
        $("#order").click(function() {
            var url = "../findSubsByPage.action";
            $.post(url, {
                status : 1
            }, function() {
                $('#dg').datagrid('reload');
            });
        });
        $("#ok").click(function() {
            var url = "../updateSub.action";
            var row = $('#dg').datagrid('getSelected');
            var elem = $(this).closest('.item');
            if (row != null) {
                $.confirm({
                    'title' : '操作确认提示',
                    'message' : '您确认要进行此成交操作?',
                    'buttons' : {
                        'Yes' : {
                            'class' : 'blue',
                            'action' : function() {
                                elem.slideUp();
                                $.post(url, {
                                    id : row.id
                                }, function() {
                                    $('#dg').datagrid('reload');
                                });
                            }
                        },
                        'No' : {
                            'class' : 'gray',
                            'action' : function() {

                            }
                        }
                    }
                });
            } else {
                alert("您未选中任何信息!");
            }
        });
        setInterval(function() {
            $('#dg').datagrid('reload');
        }, 60000);
    });
    function destroyUser() {
        var row = $('#dg').datagrid('getSelected');
        if (row) {
            $.messager.confirm('操作提示',
                '您确定要删除此条订单?',
                function(r) {
                    if (r) {
                        $.post('../deleteSub.action', {
                            id : row.id
                        }, function(result) {
                            if (result.success) {
                                $('#dg').datagrid('reload'); // reload the user data
                            } else {
                                $.messager.show({ // show error message
                                    title : 'Error',
                                    msg : result.errorMsg
                                });
                            }
                        }, 'json');
                    }
                });
        }
    }
</script>
<script language="JavaScript">
    function myrefresh()
    {
        window.location.reload();
    }
    setTimeout('myrefresh()',3000000); //指定5秒刷新一次
</script>
<style type="text/css">
    #fm {
        margin: 0;
        padding: 10px 30px;
    }

    .ftitle {
        font-size: 14px;
        font-weight: bold;
        padding: 5px 0;
        margin-bottom: 10px;
        border-bottom: 1px solid #ccc;
    }

    .fitem {
        margin-bottom: 5px;
    }

    .fitem label {
        display: inline-block;
        width: 80px;
    }
</style>
</body>
</html>
