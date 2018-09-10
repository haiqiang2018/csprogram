<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/4/26/026
  Time: 13:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>密码重置</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link type="text/css" rel="stylesheet" href="../../../static/layui/css/layui.css" media="all">
    <link rel="stylesheet" type="text/css" href="css/extraStyle.css?v=20180909"/>
    <link rel="stylesheet" type="text/css" href="css/iconfont.css"/>
    <link rel="stylesheet" type="text/css" href="css/flow.css"/>
    <link rel="stylesheet" type="text/css" href="css/reset.css"/>
    <script type="text/javascript" src="../../static/common/bootstrap-3.3.7-dist/js/bootstrap.js"></script>
    <script src="../../static/layui/layui.js"></script>
    <script src="../../static/common/jQuery/jquery-3.3.1.min.js"></script>
    <script src="../../static/common/jQuery/jquery.js"></script>
    <style type='text/css'>
        #code{
            font-family:Arial,宋体;
            font-style:italic;
            color:green;
            border:0;
            padding:4px 6px;
            letter-spacing:3px;
            font-weight:bolder;
        }
    </style>
    <style>
        * {
            margin: 0;
            padding: 0;
            font-size: 12px;
        }

        html, body {
            height: 100%;
            width: 100%;
        }

        #alert {
            z-index: 2;
            border: 1px solid rgba(0, 0, 0, .2);
            width: 598px;
            height: auto;
            border-radius: 6px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, .5);
            background: #fff;
            z-index: 1000;
            position: absolute;
            left: 50%;
            top: 15%;
            margin-left: -299px;
            display: none;
        }
        .model-head {
            padding: 15px;
            color: #73879C;
            border-bottom: 1px solid #e5e5e5;
        }

        .close {
            padding: 0;
            cursor: pointer;
            background: 0 0;
            border: 0;
            float: right;
            font-size: 14px !important;
            font-weight: 700;
            text-shadow: 0 1px 0 #fff;
            opacity: 0.4;
            margin-top: 5px;
        }

        #close:hover {
            cursor: pointer;
            color: #000;
        }

        #mask {
            position: absolute;
            top: 0;
            left: 0;
            height: 100%;
            width: 100%;
            background: #000;
            opacity: 0.3;
            display: none;
            z-index: 1;
        }

        .model-content {
            position: relative;
            padding: 15px;
        }

        .model-foot {
            padding: 15px;
            text-align: right;
        }
    </style>
    <script type="text/javascript">
        $(function() {
            $(".top").hide();
            $("#footer_t").hide();
            $(".b_nav").hide();
            $(".s_city_b").text();
            var aStr = ["弱", "中", "强", "牛逼"]
            ; function checkStrong(val) { var modes = 0;
                if (val.length < 6) return 0;
                if (/\d/.test(val)) modes++; //数字
                if (/[a-z]/.test(val)) modes++; //小写
                if (/[A-Z]/.test(val)) modes++; //大写
                if (/\W/.test(val)) modes++; //特殊字符
                if (val.length > 12) return 4; return modes;
            };
            $(":password").keyup(function() {
                var val = $(this).val();
                $("p1").text(val.length);
                var num = checkStrong(val);
                switch (num) {
                    case 0: break;
                    case 1: $("#tips span").css('background', 'yellow').text('').eq(num - 1).css('background', 'red').text(aStr[num - 1]);
                        break;
                    case 2: $("#tips span").css('background', '#9BE969').text('').eq(num - 1).css('background', 'red').text(aStr[num - 1]);
                        break;
                    case 3: $("#tips span").css('background', '#9BE969').text('').eq(num - 1).css('background', 'red').text(aStr[num - 1]);
                        break;
                    case 4: $("#tips span").css('background', '#9BE969').text('').eq(num - 1).css('background', 'red').text(aStr[num - 1]);
                        break; default: break;
                };
            }) ;
        });
    </script>
</head>

<body onload='createCode()'>
<div class="heads">
    <ul class="layui-nav" style="text-align: right">
        <h2 class="ertra-header2">找回密码</h2>
        <li class="layui-nav-item"><a href="enroll.jsp" style="font-size: 16px">注册</a></li>
        <li class="layui-nav-item">|</li>
        <li class="layui-nav-item"><a href="login.jsp" style="font-size: 16px">登录</a></li>
        <li class="layui-nav-item"><a href="" style="font-size: 16px;margin-left: 15px;margin-right: 25px">投诉信箱</a></li>
    </ul>
</div>
<div id="content">
    <div class="content-layout">
        <div class="maincenter">
            <div class="">
              <div class="">
                    <p style="margin: 30px">
                        <i class="" title=" 提示 "></i>
                       <span class="iconfont icon-information"style="color: #1E9FFF"></span>
                        请输入你需要找回登录密码的账户名
                    </p>
              </div>
                <form class="layui-form" name="form21" method="post" action="">
                    <div class="layui-form-item"style="margin: 30px">
                        <label class="layui-form-label"style="margin-left: 80px;"> 登录名: </label>
                        <input id="UserName" name="UserName" class="layui-input extra-input"style="display: inline" onblur="checkun()"type="text" placeholder=" 用户名/手机号 " value=""autocomplete="off">
                        <label id="m1"class=""style="color: red"></label>
                    </div>
                    <div class="layui-form-item"style="margin: 30px">
                        <label class="layui-form-label"style="margin-left: 80px;"> 验证: </label>
                        <input  id="input" type = "text" class="layui-input extra-input"name="title" style="display: inline" placeholder="请输入验证码 ">
                        <input type="button" id="code" onclick="createCode()" style="width:70px;height: 38px" title='点击更换验证码' />
                    </div>
                    <div class="layui-form-item"style="margin: 30px">
                     <div class="layui-input-inline"style="margin-left: 191px;">
                        <input id="myModal" type = "button" class="layui-btn extra-btn" lay-submit="" lay-filter="demo1" onclick = "validate()"value="确认">
                     </div>
                    </div>
                </form>
                    <div id="alert" class="">
                    <div class="model-head">
                        <span class="close glyphicon glyphicon-remove"></span>
                        <h4 class="modal-title">重置密码</h4>
                    </div>
                    <div class="model-content">
                        <div class="main">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="flow">
                                        <div class="flowListBox"></div>
                                    </div>
                                </div>
                                <div class="col-md-12" id="flowDiv">
                                    <ol id="iList">
                                        <div id="contA"class="layui-form-item">
                                            <ol class="select-strategy" id="J-select-strategy">
                                                <li class="fn-clear">
                                                    <i class="glyphicon glyphicon-phone"style="font-size: x-large;color: dodgerblue;float:left;padding:10px"></i>
                                                    <div class="desc desc-hasnotice">
                                                        <h3 class="title"><span class="text"style="font-size: 15px;margin-bottom: 10px">通过“验证手机号+验证短信”</span><span style="color: rgb(255, 88, 60);margin-left: 8px " class="glyphicon glyphicon-exclamation-sign"></span><i style="color: rgb(255, 88, 60) ">推荐</i></h3>
                                                        <span style="position: absolute;top: 36px;color: #888">如果你的绑定手机号还在正常使用，请选择此方式</span>
                                                    </div>
                                                    <div class="layui-input-inline"style="float:right;margin-top:-38px;padding-left:90px">
                                                        <a class="layui-btn extra-btn"role="button"style="text-decoration: none;height:33px" data-method="" seed="" id="btnPhone" href="#b">立即重置</a>
                                                    </div>
                                                </li>

                                                <li class="fn-clear">
                                                    <i class="glyphicon glyphicon-envelope"style="font-size: x-large;color: dodgerblue;float:left;padding:10px"></i>
                                                    <div class="desc desc-hasnotice">
                                                        <h3 class="title"><span class="text"style="font-size: 15px">通过邮箱进行验证</span></h3>
                                                        <span style="position: absolute;top: 36px;color: #888">如果你绑定的邮箱还在正常使用，请选择此方式</span>
                                                    </div>
                                                    <div class="layui-input-inline"style="float:right;margin-top:-38px;padding-left:90px" >
                                                        <a class="layui-btn extra-btn"role="button"style="text-decoration: none;height:33px" data-method="" id="btnEmail" seed="">立即重置</a>
                                                    </div>
                                                </li>
                                            </ol>
                                        </div>
                                        <div class="contentList" id="contB"><a></a>
                                            <%--//用手机验证方式--%>
                                            <div id="phonestyle">
                                                <form class="layui-form"  style="display: none">
                                                    <div class="layui-form-item">
                                                        <div class="layui-inline">
                                                            <label class="layui-form-label"style="width: 110px">*手机号码：</label>
                                                            <div class="layui-input-inline">
                                                                <input type="tel"id="PhoneNum" name="PhoneNum" style="width: 200px"lay-verify="phone" autocomplete="off" class="layui-input extra-input"value="18323898997">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="layui-form-item">
                                                        <div class="layui-inline">
                                                            <label class="layui-form-label"style="width: 110px">*校验码：</label>
                                                            <div class="layui-input-inline">
                                                                <input type="text"id="VerCode" name="" lay-verify="required" autocomplete="off" class="layui-input extra-input"style="width: 200px">

                                                            </div>  <button type="button" class="layui-btn extra-btn " id=""style="margin-left:10px;width: 90px;padding-left: 9px;">获取验证码</button>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>

                                            <%--//用邮箱验证方式--%>
                                            <form class="layui-form" id="emailstyle">
                                                <div class="layui-form-item">
                                                    <div class="layui-inline">
                                                        <label class="layui-form-label"style="width: 110px">*电子邮箱：</label>
                                                        <div class="layui-input-inline">
                                                            <input type="tel"id="EmailNum" name="EmailNum" style="width: 200px"lay-verify="phone" autocomplete="off" class="layui-input extra-input"value="18323898997">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="layui-form-item">
                                                    <div class="layui-inline">
                                                        <label class="layui-form-label"style="width: 110px">*校验码：</label>
                                                        <div class="layui-input-inline">
                                                            <input type="text"id="EmailVerCode" name="" lay-verify="required" autocomplete="off" class="layui-input extra-input"style="width: 200px">

                                                        </div>  <button type="button" class="layui-btn extra-btn "  style="margin-left:10px;width: 90px;padding-left: 9px;">获取验证码</button>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                        <div class="contentList" id="contC"name="contC">
                                                <div class="layui-form-item">
                                                    <label class="layui-form-label"style="width: 110px">*设置密码：</label>
                                                    <div class="layui-input-inline">
                                                        <input type="password" name="pwd1"id="PassWord" style="width: 200px"maxlength="16"lay-verify="required|pass" placeholder="请输入密码(6-16位)" autocomplete="off"onblur="checkpwd()" class="extra-input layui-input"/>
                                                        <div id="tips">
                                                            <span></span><span></span><span></span><span></span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="layui-form-item">
                                                    <label class="layui-form-label"style="width: 110px">*确认密码：</label>
                                                    <div class="layui-input-inline">
                                                        <input type="password" style="width: 200px"name="pwd2" lay-verify="required|pass" placeholder="" autocomplete="off" onblur="checkpwd()"class="extra-input layui-input">
                                                        <span id="msg2" class="tipspan"></span><span id="msg1" class="tipspan"></span>
                                                    </div>
                                                </div>
                                        </div>
                                        <div class="contentList" id="contD">
                                            <span style="position: absolute;color: #888">密码修改成功！</span><a href="login.jsp" style="margin-left: 90px;">点击登录</a>
                                        </div>
                                    </ol>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="foot-btn">
                        <button type="button" class="btn btn-primary " id="btnBack">上一步</button>
                        <button type="button" class="btn btn-default " style="float:right; display:none" id="btnok">完成</button>
                        <button type="button" class="btn btn-success " style="float:right; margin-right:10px;" id="btnNext">下一步</button>
                    </div>
                </div>
                    <div id="mask"></div>

            </div>
        </div>
    </div>
</div>
<jsp:include page="../footer.jsp"/>
<%--<div>验证码：
    <input type = "text" id = "input"/>
    <input type="button" id="code" onclick="createCode()" style="width:60px" title='点击更换验证码' />
    <input type = "button" value = "验证" onclick = "validate()"/>
</div>--%>
<script>
    layui.use(['form', 'layedit', 'laydate'], function(){
        var form = layui.form
            ,layer = layui.layer
            ,layedit = layui.layedit
            ,laydate = layui.laydate;

        //日期
        laydate.render({
            elem: '#date'
        });

        //创建一个编辑器
        var editIndex = layedit.build('LAY_demo_editor');
        //自定义验证规则
        form.verify({
            title: function(value){
                if(value.length <=0){
                    return '请输入用户名！';
                } if(value.length < 10){
                    return '用户名不正确！';
                }
            }
            ,content: function(value){
                layedit.sync(editIndex);
            }
        });

        //监听提交
        form.on('submit(demo1)', function(data){
            layer.alert(JSON.stringify(data.field), {
                title: '最终的提交信息'
            })
            return false;
        });
        form.render();

    });
</script>
<script type='text/javascript'>
    var code ; //在全局定义验证码
    function createCode(){
        code = "";
        var codeLength = 4;//验证码的长度
        var checkCode = document.getElementById("code");
        var random = new Array(0,1,2,3,4,5,6,7,8,9,'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R',
            'S','T','U','V','W','X','Y','Z');//随机数
        for(var i = 0; i < codeLength; i++) {//循环操作
            var index = Math.floor(Math.random()*36);//取得随机数的索引（0~35）
            code += random[index];//根据索引取得随机数加到code上
        }
        checkCode.value = code;//把code值赋给验证码
    }
    //校验验证码
    function validate(){
        var inputCode = document.getElementById("input").value.toUpperCase(); //取得输入的验证码并转化为大写
        if(inputCode.length <= 0) { //若输入的验证码长度为0
           alert('请输入验证码！'); //则弹出请输入验证码
        }else if(inputCode != code ) { //若输入的验证码与产生的验证码不一致时
           alert('验证码输入错误！'); //则弹出验证码输入错误
            createCode();//刷新验证码
            document.getElementById("input").value = "";//清空文本框
        }else { //输入正确时
            myMask.style.display = "block";
            myAlert.style.display = "block";
            document.body.style.overflow = "hidden";
        }
        createCode();//刷新验证码
        document.getElementById("input").value = "";
    }
    function checkun() {
        var p0=document.form21.UserName.value;
        if(p0.length==0){
            document.getElementById("m1").innerHTML="请输入用户名！";//检测到yhm为空，提醒输入
            document.form21.UserName.focus();//焦点放到密码框
            return false;//退出检测函数
        }
        else if(p0.length<6&&p0.length>0){
            document.getElementById("m1").innerHTML="用户名错误！";//检测到用户名小于六位，提醒输入
            document.form21.UserName.focus();//焦点放到sr框
            return false;//退出检测函数
        }
        else{
            document.getElementById("m1").innerHTML="";//
        }
    }
</script>
<script src="js/flow.js"></script>
<script type="text/javascript">
    var myAlert = document.getElementById("alert");
    var myMask = document.getElementById('mask');
    $("#myModal").click(function () {
       /* myMask.style.display = "block";
        myAlert.style.display = "block";
        document.body.style.overflow = "hidden";*/
    })
    $(".close").click(function () {
        myAlert.style.display = "none";
        myMask.style.display = "none";
    })
   /* $(function () {
        $('#v_email').click(function () {
            layer.open({
                type: 2,
                title: '邮箱修改',
                content: 'Verify.jsp',
                offset: '100px',
                area: ['53%','70%'] ,
                skin: 'layer-ext-yourskin',
                shade: [0.8, '#393D49'],
                anim: 4,
                isOutAnim:true,
                move: false,
                scrollbar: false
            });
        });

        $('.tooltip-hide').tooltip('hide');  //显示提示信息
    });*/
</script>
<script type="text/javascript">
    function checkpwd(){
        var p0=$(" input[ name='pwd1' ] ").val();//获取密码框的值
        var p2=$(" input[ name='pwd2' ] ").val();//获取重新输入的密码值
        if(p0.length==0){
            document.getElementById("msg2").innerHTML="请输入密码";//检测到密码为空，提醒输入
            document.contC.pwd1.focus();//焦点放到密码框
            return false;//退出检测函数
        }//如果允许空密码，可取消这个条件
        else if(p0.length<6){
            document.getElementById("msg2").innerHTML="密码至少大于六位";//检测到密码小于六位，提醒输入
            document.contC.pwd1.focus();//焦点放到密码框
            return false;//退出检测函数
        }
        else{ if(p0!=p2){//判断两次输入的值是否一致，不一致则显示错误信息
            /*   document.getElementById("msg1").innerHTML=" ";*/
            document.getElementById("msg2").innerHTML="两次输入密码不一致，请重新输入";//在div显示错误信息
            return false;
        }else{
            document.getElementById("msg2").innerHTML=" ";//密码一致，可以继续下一步操作
        }
        }
    }
</script>
</body>
</html>
