<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<title>付款成功页面</title>
<link rel="stylesheet"  type="text/css" href="/css/amazeui.css"/>
<link href="/css/admin.css" rel="stylesheet" type="text/css">
<link href="/css/demo.css" rel="stylesheet" type="text/css" />

<link href="/css/sustyle.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/js/jquery.js"></script>
    <script type="text/javascript">

        $.ajax({
            type:'post',
            url:'/mainpage/iflogin.do',
            dataType:'json',
            success:function (data) {
                if(data.nicknames=="failure"){
                    location.href="/mainpage/login.do";
                }
                else {
                    document.getElementById("menu-hd").innerHTML='<a href="/mainpage/personcenter.do" target="_top" class="h">Hi ! '+data.nicknames+'</a>';
                }
            },error:function () {
                alert("网络异常");
            }


        });
        $.ajax({
            type:'post',
            url:'/mainpage/selectnumfromcar.do',
            dataType:'json',
            success:function (data) {
                document.getElementById("J_MiniCartNum").innerHTML=data.shopcarcount;
            },error:function () {
                alert("网络异常");
            }
        });

        $.ajax({
            type:'post',
            dataType:'json',
            url:'/mainpage/updateaddress.do',
            success:function (data) {
                document.getElementById("recievers").innerHTML="收货人："+data.reciever;
                document.getElementById("phonenum").innerHTML="联系电话："+data.telephone;
                document.getElementById("provi").innerHTML="收货地址："+data.address+data.concreadd;


            },error:function () {
                alert("网络异常");
            }
        });
        $.ajax({
            type:'post',
            dataType:'json',
            url:'/mainpage/sumprices.do',
            success:function (data) {
                document.getElementById("J_ActualFee").innerHTML="￥"+data.price;
            },error:function () {
                alert(" 网络错误");
            }

        });
    </script>

</head>

<body>


<!--顶部导航条 -->
<div class="am-container header">
  <ul class="message-l">
    <div class="topMessage">
     <div class="menu-hd" id="menu-hd">

     </div></div>
  </ul>
  <ul class="message-r">
    <div class="topMessage home"><div class="menu-hd"><a href="/mainpage/home.do" target="_top" class="h">商城首页</a></div></div>
    <div class="topMessage my-shangcheng"><div class="menu-hd MyShangcheng"><a href="/mainpage/personcenter.do" target="_top">个人中心</a></div></div>
    <div class="topMessage mini-cart"><div class="menu-hd"><a id="mc-menu-hd" href="/mainpage/shopcart.do" target="_top"><span>购物车</span><strong id="J_MiniCartNum" class="h">0</strong></a></div></div>
    <div class="topMessage favorite"><div class="menu-hd"><a href="/mainpage/collection.do" target="_top"><span>收藏夹</span></a></div>
    </div>
  </ul>
</div>



<div class="nav white">

</div>

<div class="clear"></div>



<div class="take-delivery">
 <div class="status">
   <h2>您已成功付款</h2>
   <div class="successInfo">
     <ul>
       <li>付款金额<em id="J_ActualFee">¥9999.90</em></li>
       <div class="user-info">
         <p id="recievers">收货人：jing</p>
         <p id="phonenum">联系电话：10086</p>
           <p id="provi">收货地址：湖北省 xxxxxx</p>
       </div>
                               
     </ul>
     <div class="option">
       <span class="info">您可以</span>
        <a href="/mainpage/order.do" class="J_MakePoint">查看<span>已买到的宝贝</span></a>
     </div>
    </div>
  </div>
</div>


<div class="footer" >
 <div class="footer-hd">
 <p>
 <b>|</b>
 <a href="/mainpage/home.do">商城首页</a>
 <b>|</b>
 <a href="/mainpage/shopcart.do">购物车</a>
 </p>
 </div>
 <div class="footer-bd">
 <p>

 <em> 工大的名义版权所有</em>
 </p>
 </div>
</div>

</body>
</html>
