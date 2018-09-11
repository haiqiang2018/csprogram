<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <%--<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/> <!-- 优先使用 IE 最新版本和 Chrome -->
    <meta name="description" content="不超过150个字符"/> <!-- 页面描述 -->
    <meta name="keywords" content="页面关键字"/> <!-- 页面关键词 -->--%>
    <link type="text/css" rel="stylesheet" href="http://www.17sucai.com/preview/216556/2016-02-18/尤洪Web/css/style.css"/>
    <!--[if IE 6]>
    <script src="http://www.17sucai.com/preview/216556/2016-02-18/尤洪Web/js/iepng.js" type="text/javascript"></script>
    <script type="text/javascript">
        EvPNG.fix('div, ul, img, li, input, a');
    </script>
    <![endif]-->

    <script type="text/javascript"
            src="http://www.17sucai.com/preview/216556/2016-02-18/尤洪Web/js/jquery-1.8.2.min.js"></script>
    <script type="text/javascript" src="http://www.17sucai.com/preview/216556/2016-02-18/尤洪Web/js/menu.js"></script>

    <script type="text/javascript" src="http://www.17sucai.com/preview/216556/2016-02-18/尤洪Web/js/n_nav.js"></script>

    <script type="text/javascript" src="http://www.17sucai.com/preview/216556/2016-02-18/尤洪Web/js/num.js">
        var jq = jQuery.noConflict();
    </script>

    <script type="text/javascript" src="http://www.17sucai.com/preview/216556/2016-02-18/尤洪Web/js/shade.js"></script>
</head>
<body>
<!--Begin Header Begin-->
<div class="soubg">
    <div class="sou">
        <!--Begin 所在收货地区 Begin-->
        <span class="s_city_b">
        	<span class="fl">送货至：</span>
            <span class="s_city">
            	<span>重庆</span>
                <div class="s_city_bg">
                	<div class="s_city_t"></div>
                    <div class="s_city_c">
                    	<h2>请选择所在的收货地区</h2>
                        <table border="0" class="c_tab" style="width:235px; margin-top:10px;" cellspacing="0"
                               cellpadding="0">
                          <tr>
                            <th>A</th>
                            <td class="c_h"><span>安徽</span><span>澳门</span></td>
                          </tr>
                          <tr>
                            <th>B</th>
                            <td class="c_h"><span>北京</span></td>
                          </tr>
                          <tr>
                            <th>C</th>
                            <td class="c_h"><span>重庆</span></td>
                          </tr>
                          <tr>
                            <th>F</th>
                            <td class="c_h"><span>福建</span></td>
                          </tr>
                          <tr>
                            <th>G</th>
                            <td class="c_h"><span>广东</span><span>广西</span><span>贵州</span><span>甘肃</span></td>
                          </tr>
                          <tr>
                            <th>H</th>
                            <td class="c_h"><span>河北</span><span>河南</span><span>黑龙江</span><span>海南</span><span>湖北</span><span>湖南</span></td>
                          </tr>
                          <tr>
                            <th>J</th>
                            <td class="c_h"><span>江苏</span><span>吉林</span><span>江西</span></td>
                          </tr>
                          <tr>
                            <th>L</th>
                            <td class="c_h"><span>辽宁</span></td>
                          </tr>
                          <tr>
                            <th>N</th>
                            <td class="c_h"><span>内蒙古</span><span>宁夏</span></td>
                          </tr>
                          <tr>
                            <th>Q</th>
                            <td class="c_h"><span>青海</span></td>
                          </tr>
                          <tr>
                            <th>S</th>
                            <td class="c_h"><span>上海</span><span>山东</span><span>山西</span><span class="c_check">四川</span><span>陕西</span></td>
                          </tr>
                          <tr>
                            <th>T</th>
                            <td class="c_h"><span>台湾</span><span>天津</span></td>
                          </tr>
                          <tr>
                            <th>X</th>
                            <td class="c_h"><span>西藏</span><span>香港</span><span>新疆</span></td>
                          </tr>
                          <tr>
                            <th>Y</th>
                            <td class="c_h"><span>云南</span></td>
                          </tr>
                          <tr>
                            <th>Z</th>
                            <td class="c_h"><span>浙江</span></td>
                          </tr>
                        </table>
                    </div>
                </div>
            </span>
        </span>
        <!--End 所在收货地区 End-->
        <span class="fr">
        	<span class="fl">
                <c:if test="${username != null}">
                    &nbsp;欢迎您，<a href="/jsp/PersonalCenter/Member.jsp">${username}&nbsp;</a><a href="/jsp/UserOrder/UserOrder.jsp">我的订单</a>&nbsp;|
                </c:if>
                <c:if test="${empty username}">
                 你好，请<a href="/jsp/LoginAndEnroll/login.jsp">登录</a>&nbsp; <a href="/jsp/LoginAndEnroll/enroll.jsp" style="color:#ff4e00;">免费注册</a>&nbsp;|&nbsp;</span>
                </c:if>
        	<%--<span class="ss">
            	<div class="ss_list">
                	<a href="#">收藏夹</a>
                    <div class="ss_list_bg">
                    	<div class="s_city_t"></div>
                        <div class="ss_list_c">
                        	<ul>
                            	<li><a href="#">我的收藏夹</a></li>
                                <li><a href="#">我的收藏夹</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="ss_list">
                	<a href="#">客户服务</a>
                    <div class="ss_list_bg">
                    	<div class="s_city_t"></div>
                        <div class="ss_list_c">
                        	<ul>
                            	<li><a href="#">客户服务</a></li>
                                <li><a href="#">客户服务</a></li>
                                <li><a href="#">客户服务</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="ss_list">
                	<a href="#">网站导航</a>
                    <div class="ss_list_bg">
                    	<div class="s_city_t"></div>
                        <div class="ss_list_c">
                        	<ul>
                            	<li><a href="#">网站导航</a></li>
                                <li><a href="#">网站导航</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </span>
            <span class="fl">|&nbsp;关注我们：</span>
            <span class="s_sh"><a href="#" class="sh1">新浪</a><a href="#" class="sh2">微信</a></span>
            <span class="fr">|&nbsp;<a href="#">手机版&nbsp;<img
                    src="http://www.17sucai.com/preview/216556/2016-02-18/尤洪Web/images/s_tel.png"
                    align="middle"/></a></span>--%>
        </span>
    </div>
</div>
<div class="top">
    <div class="logo"><a href="../index.jsp"><img src="../../static/images/logo.png"/></a></div>
    <div class="search">
        <form>
            <input type="text" value="" class="s_ipt"/>
            <input type="submit" value="搜索" class="s_btn"/>
        </form>
        <span class="fl"><a href="#">咖啡</a><a href="#">iphone 6S</a><a href="#">新鲜美食</a><a href="#">蛋糕</a><a href="#">日用品</a><a
                href="#">连衣裙</a></span>
    </div>
    <div class="i_car">
        <div class="car_t">购物车 [ <span>3</span> ]</div>
        <div class="car_bg">
            <!--Begin 购物车未登录 Begin-->
            <c:if test="${empty username}">
                <div class="un_login">还未登录！<a href="/jsp/LoginAndEnroll/login.jsp" style="color:#ff4e00;">马上登录</a>
                    查看购物车！
                </div>
            </c:if>
            <!--End 购物车未登录 End-->
            <!--Begin 购物车已登录 Begin-->
            <c:if test="${username != null}">
                <h4>我的购物车</h4>
            </c:if>

            <ul class="cars">
                <li>
                    <div class="img"><a href="#"><img
                            src="http://www.17sucai.com/preview/216556/2016-02-18/尤洪Web/images/car1.jpg" width="58"
                            height="58"/></a></div>
                    <div class="name"><a href="#">法颂浪漫梦境50ML 香水女士持久清新淡香 送2ML小样3只</a></div>
                    <div class="price"><font color="#ff4e00">￥399</font> X1</div>
                </li>
                <li>
                    <div class="img"><a href="#"><img
                            src="http://www.17sucai.com/preview/216556/2016-02-18/尤洪Web/images/car2.jpg" width="58"
                            height="58"/></a></div>
                    <div class="name"><a href="#">香奈儿（Chanel）邂逅活力淡香水50ml</a></div>
                    <div class="price"><font color="#ff4e00">￥399</font> X1</div>
                </li>
                <li>
                    <div class="img"><a href="#"><img
                            src="http://www.17sucai.com/preview/216556/2016-02-18/尤洪Web/images/car2.jpg" width="58"
                            height="58"/></a></div>
                    <div class="name"><a href="#">香奈儿（Chanel）邂逅活力淡香水50ml</a></div>
                    <div class="price"><font color="#ff4e00">￥399</font> X1</div>
                </li>
            </ul>
            <div class="price_sum">共计&nbsp; <font color="#ff4e00">￥</font><span>1058</span></div>
            <div class="price_a"><a href="/jsp/BuyCar/BuyCar.jsp">去购物车结算</a></div>
            <!--End 购物车已登录 End-->
        </div>
    </div>
</div>
<!--End Header End-->
</body>
</html>