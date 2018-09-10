<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/4/22/022
  Time: 11:54
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>用户注册</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="../../../static/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="css/extraStyle.css" media="all">
    <link rel="stylesheet" href="css/imgUpload.css" media="all">
    <script src="../../static/common/jQuery/jquery-3.3.1.min.js"></script>
    <script src="../../static/common/jQuery/jquery.js"></script>
    <script src="js/ajaxFileUpload.js"></script>
    <!--引入Bootstrap的js-->
    <script type="text/javascript" src="../../static/common/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <!--引入LayUi的js-->
    <script src="../../static/layui/layui.js"></script>
    <script type="text/javascript">
        $(function() {
            $(".top").hide();
            $("#footer_t").hide();
            $(".b_nav").hide();
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
                var num = checkStrong(val)

                ;
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
<body>
<jsp:include page="../header.jsp"/>
<div style="width: 990px;
    margin: 30px 220px;
    height: 450px;">
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;margin-left: -65px;
margin-bottom: 30px;">
    <legend><strong>新用户注册</strong></legend>
</fieldset>
<form class="layui-form" name="form1">
    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">*手机号码：</label>
            <div class="layui-input-inline">
                <input type="tel"id="PhoneNum" name="PhoneNum" lay-verify="required|phone" autocomplete="off" class="layui-input extra-input">
            </div>
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">*电子邮箱：</label>
            <div class="layui-input-inline">
                <input type="text" id="email"name="email" lay-verify="required|email" autocomplete="off" class="layui-input extra-input">
            </div>
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-inline">
        <label class="layui-form-label">*身份证号：</label>
        <div class="layui-input-block">
            <input type="text" id="IDcard"name="IDcard" lay-verify="required|identity" placeholder="" autocomplete="off" class="extra-input layui-input">
        </div>
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-inline">
        <label class="layui-form-label">性别：</label>
        <div class="layui-input-block">
            <input type="radio" name="Sex" value="男" title="男" checked="">
            <input type="radio" name="Sex" value="女" title="女">
            <input type="radio" name="Sex" value="禁" title="禁用" disabled="">
        </div>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">*设置密码：</label>
        <div class="layui-input-inline">
            <input type="password" name="pwd1"id="PassWord" maxlength="16"lay-verify="required|pass" placeholder="请输入密码(6-16位)" autocomplete="off"onblur="checkpwd()" class="extra-input layui-input"/>
            <div id="tips">
                <span></span><span></span><span></span><span></span>
            </div>
        </div>
    </div>
    <div class="layui-form-item">
    <label class="layui-form-label">*确认密码：</label>
    <div class="layui-input-inline">
        <input type="password" name="pwd2" lay-verify="required|pass" placeholder="" autocomplete="off" onblur="checkpwd()"class="extra-input layui-input">
        <span id="msg2" class="tipspan"></span><span id="msg1" class="tipspan"></span>
    </div>
    </div>
    <!--<div class="layui-form-item layui-form-text">
      <label class="layui-form-label">编辑器</label>
      <div class="layui-input-block">
        <textarea class="layui-textarea layui-hide" name="content" lay-verify="content" id="LAY_demo_editor"></textarea>
      </div>
    </div>-->
    <div class="layui-form-item">
        <div class="layui-input-block">
            <input  type="button"class="layui-btn extra-btn" lay-submit="" id="sub_enroll" lay-filter="demo1"value="立即提交">
            <button type="reset" class="layui-btn  extra-btn">重置</button>
        </div>
    </div>
  <%--  <div class="dv_info_box">
        <div class="dv_pic_box">
        </div>
        <button class="btn_add_pic">添加图片</button>
    </div>--%>
</form>
</div>
<jsp:include page="../footer.jsp"/>
<script src="js/md5.js"></script>
<script>
    $(function () {
        $("#sub_enroll").click(function () {
            $.ajax({//前后台用ajax传值
                url: "/LoginAndEnroll/EnrollServlet",
                type: "post",
                dataType: "json",
                async: false,
                data: {
                    User_ID: $("#User_ID").val(),
                    PhoneNum: $("#PhoneNum").val(),
                    Email: $("#email").val(),
                    IDcard: $("#IDcard").val(),
                    EnrollDate: $("#EnrollDate").val(),
                    Sex: $('input:radio[name="Sex"]:checked').val(),
                    PassWord: /*$.md5(document.getElementById('PassWord').value)*/$("#PassWord").val(),
                }
            })
        })

    });

</script>
<%--
<script>
var btnCount=0;
function initClickListener() {
    $(".btn_add_pic").click(function () {
        btnCount++;
        var t = '<div class="dv_pic_item">';
        t += '<img src="" alt="" class="img_style" id="img_' + btnCount + '"/>';
        t += '<input   type="file" class="input_file_style"    value="img_' + btnCount + '" id="file_' + btnCount + '"/>';
        t += '</div>';
        $(".dv_pic_box").append(t);
        $(".input_file_style").change(function (e) {
            console.log($(this).attr("id"));
            var img = document.getElementById($(this).attr("value"));
            var obj = document.getElementById($(this).attr("id"));
            if (obj && obj[0]) {
                img.src = window.URL.createObjectURL(obj.files[0]);
            } else {
                obj.select();
//ie9以上版本需加上blur
                obj.blur();
                var imgSrc = document.selection.createRange().text;
//图片异常的捕捉，防止用户修改后缀来伪造图片
                try {
                    img.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale)";
                    img.filters.item("DXImageTransform.Microsoft.AlphaImageLoader").src = imgSrc;
                }
                catch (e) {
                    alert("上传的图片格式不正确，请重新选择");
                    return false;
                }
                document.selection.empty();
            }
        });
    });
}
</script>
--%>
<script>
    layui.use('upload', function() {

        var $ = layui.jquery
            , upload = layui.upload;//取得对象

        var uploadInst = upload.render({//创建一个上传组件
            elem: '#uploadimg'//绑定元素
            , url: '/libImg/'//上传接口
            ,size:2048//限制文件大小，单位 KB
            , before: function (obj) {//预读本地文件示例，不支持ie8
                obj.preview(function (index, file, result) {
                    $('#demo1').attr('src', result); //图片链接（base64）
                });
            }
            , done: function (res) {//上传完毕的回调函数
                //如果上传失败
                if (res.code > 0) {
                    return layer.msg('失败');
                }
                //上传成功,定义接口
            }
            , error: function () {
                //演示失败状态，并实现重传
                var demoText = $('#demoText');
                demoText.html('<span style="color: #FF5722;">上传失败</span> <a class="layui-btn layui-btn-mini demo-reload extra-btn">重试</a>');
                demoText.find('.demo-reload').on('click', function () {
                    uploadInst.upload();
                });
            }
        });
    });
</script>

<script>
    layui.use(['form', 'layedit', 'laydate'], function(){
        var form = layui.form
            ,layer = layui.layer
            ,layedit = layui.layedit
            ,laydate = layui.laydate;
        //日期
        laydate.render({
            elem: '#EnrollDate'
        });
        laydate.render({
            elem: '#date1'
        });

        //创建一个编辑器
        var editIndex = layedit.build('LAY_demo_editor');

        //自定义验证规则
        form.verify({
            title: function(value){
                if(value.length <=0){
                    return '请输入学号';
                }if(value.length <=9){
                    return '请输入学号';
                }
            }
            ,pass: [/(.+){6,12}$/, '密码必须6到12位']
            ,content: function(value){
                layedit.sync(editIndex);
            }
        });

        //监听提交
     /*   form.on('submit(demo1)', function(data){
            layer.alert(JSON.stringify(data.field), {
                title: '最终的提交信息'
            })
            return false;
        });
        form.render();*/

    });
</script>
<script type="text/javascript">
    function checkpwd(){
        var p0=document.form1.pwd1.value;//获取密码框的值
        var p2=document.form1.pwd2.value;//获取重新输入的密码值
        if(p0==""){
            document.getElementById("msg2").innerHTML="请输入密码";//检测到密码为空，提醒输入
            document.form1.pwd1.focus();//焦点放到密码框
            return false;//退出检测函数
        }//如果允许空密码，可取消这个条件
         else if(p0.length<6){
            document.getElementById("msg2").innerHTML="密码至少大于六位";//检测到密码小于六位，提醒输入
            document.form1.pwd1.focus();//焦点放到密码框
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