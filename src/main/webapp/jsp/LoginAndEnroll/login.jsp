<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/4/22/022
  Time: 10:38
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>用户登录</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link type="text/css" rel="stylesheet" href="../../static/layui/css/layui.css" media="all">
    <link rel="stylesheet" type="text/css" href="css/extraStyle.css?v=20180909"/>
    <link rel="stylesheet" type="text/css" href="//at.alicdn.com/t/font_644487_hugi3stbvw7v6lxr.css"/>
    <script src="../../static/layui/layui.js"></script>
</head>
<body>
<jsp:include page="../header.jsp"/>
<div class="extra-login">
    <img src="./img/nz1.jpg">
    <div class="extra-login-div">
        <a href="AdLogin.jsp" style="font-size: 16px;float: right;">管理员入口</a>
        <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;"><br>
            <legend><strong>密码登录</strong></legend>
        </fieldset>

        <%--<form>
            <input
                    type="text" name="User_ID" id="User_ID" placeholder="用户名" >
            <input type="password" name="PassWords" id="PassWords" placeholder="请输入密码">
        </form>--%>

        <form class="layui-form">
            <div>
                <div class="layui-form-item">
                    <label class="iconfont icon-account layui-form-label2"
                           style="font-size: x-large;color: rgb(255,134,136);"></label>
                    <div class="layui-input-inline">
                        <input type="text" name="User_ID" id="User_ID"  class="extra-input layui-input">
                    </div>
                </div>

                <div class="layui-form-item">
                    <label class="iconfont icon-Password  layui-form-label2"
                           style="font-size: x-large;color: rgb(255,134,136);"></label>
                    <div class="layui-input-inline">
                        <input type="password" name="PassWords" id="PassWords"  placeholder="请输入密码"
                               class="extra-input layui-input">
                    </div>
                </div>

                <!--<div class="layui-form-item layui-form-text">
                  <label class="layui-form-label">编辑器</label>
                  <div class="layui-input-block">
                    <textarea class="layui-textarea layui-hide" name="content" lay-verify="content" id="LAY_demo_editor"></textarea>
                  </div>
                </div>-->
                <div class="layui-form-item">
                    <div class="layui-input-inline">
                        <input type="button" id="sub_log" class="layui-btn extra-btn" style="width: 300px"lay-filter="demo1" value="登录">
                    </div>
                </div>
                <div style="display: block;margin: 22px 90px;">
                    <a href="ResetPsd.jsp" class="layui-form-text" style="margin: 7px">忘记密码？</a>
                    <a href="enroll.jsp" class="layui-form-text">免费注册</a>
                </div>
            </div>
        </form>
    </div>
    <jsp:include page="../footer.jsp"/>
</div>

<script src="../../static/common/jQuery/jquery.js"></script>
<script src="js/md5.js"></script>
<script>
    $(function () {
        $(".top").hide();

        $("#sub_log").click(function () {
            $.ajax({//前后台用ajax传值
                url:"<c:url value="/user/userLogin" />",
                type:"post",
                dataType:"json",
                async:false,
                data:{
                    User_ID:$("#User_ID").val(),
                    PassWords:$("#PassWords").val()/*$.md5(document.getElementById('PassWords').value)*/
                },
                 success:function (respData) {
                    var state=respData.state;
                    var tip=respData.tip;
                    if(state){
                        alert(tip);
                        window.location.href = "../index.jsp";
                    }else{
                        alert(tip);
                    }
                } ,error:function () {
                    alert("失败");
                }
            })
        })
    });
    layui.use(['form', 'layedit', 'laydate'], function () {
        var form = layui.form
            ,layer = layui.layer
            , layedit = layui.layedit
            , laydate = layui.laydate;

        //日期
        laydate.render({
            elem: '#date'
        });
        laydate.render({
            elem: '#date1'
        });

        //创建一个编辑器
        var editIndex = layedit.build('LAY_demo_editor');
        //自定义验证规则
        form.verify({
            User_ID: function(value){
                if(value.length < 10){
                    return '请输入有效学号！';
                }
            }
            ,PassWords: [/(.+){6,16}$/, '密码必须6到16位']
            ,content: function(value){
                layedit.sync(editIndex);
            }
        });

        //监听提交
        form.on('submit(demo1)', function(data){
            layer.alert(JSON.stringify(data.field), {
                UserName: '最终的提交信息'
            })
            return false;
        });
        form.render();

    });
</script>

</body>
</html>