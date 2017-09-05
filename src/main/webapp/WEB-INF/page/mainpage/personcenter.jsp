<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">

		<title>个人中心</title>

		<link href="/css/admin.css" rel="stylesheet" type="text/css">
		<link href="/css/amazeui.css" rel="stylesheet" type="text/css">
		<link href="/css/personal.css" rel="stylesheet" type="text/css">
		<link href="/css/systyle.css" rel="stylesheet" type="text/css">
		<script type="text/javascript" src="/js/jquery-1.7.2.min.js"></script>
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
                            document.getElementById("s-name").innerHTML=data.nicknames;

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



            function loginout() {
                $.ajax({
                    type:'post',
                    url:'/mainpage/loginout.do',
                    dataType:'json',
                    success:function () {
                        location.href="/mainpage/home.do";
                    },
                    error:function () {
                        alert("网络异常");
                    }


                });
            }
		</script>

	</head>

	<body>
		<!--头 -->
		<header>
			<article>
				<div class="mt-logo">
					<!--顶部导航条 -->
					<div class="am-container header">
						<ul class="message-l">
							<div class="topMessage">

							</div>
						</ul>
						<ul class="message-r">
							<div class="topMessage home">
								<div class="menu-hd"><a href="/mainpage/home.do" target="_top" class="h">商城首页</a></div>
							</div>
							<div class="topMessage my-shangcheng">
								<div class="menu-hd MyShangcheng"><a href="/mainpage/personcenter.do" target="_top">个人中心</a></div>
							</div>
							<div class="topMessage mini-cart">
								<div class="menu-hd"><a id="mc-menu-hd" href="/mainpage/shopcart.do" target="_top"><span>购物车</span><strong id="J_MiniCartNum" class="h">0</strong></a></div>
							</div>
							<div class="topMessage favorite">
								<div class="menu-hd"><a href="/mainpage/collection.do" target="_top"><span>收藏夹</span></a></div>
							</div>
							</ul>
						</div>

						<!--悬浮搜索框-->

						<div class="nav white">

						</div>

						<div class="clear"></div>
					</div>
				</div>
			</article>
		</header>
            <div class="nav-table">
					   <div class="long-title"><span class="all-goods">全部分类</span></div>
					   <div class="nav-cont">
							<ul>
								<li class="index"><a href="/mainpage/home.do">首页</a></li>

							</ul>

						</div>
			</div>
			<b class="line"></b>
		<div class="center">
			<div class="col-main">
				<div class="main-wrap">
					<div class="wrap-left">
						<div class="wrap-list">
							<div class="m-user">
								<!--个人信息 -->
								<div class="m-bg"></div>
								<div class="m-userinfo">
									<div class="m-baseinfo">
										<a href="/mainpage/information.do">
											<img src="/images/getAvatar.do.jpg">
										</a>
										<em class="s-name" id="s-name">(小叮当)<span class="vip1"></span></em>
										<div class="s-prestige am-btn am-round">
											</span>会员福利</div>
									</div>
									<div class="m-right">
										<div class="m-address">
											<a href="/mainpage/address.do" class="i-trigger">我的收货地址</a>
										</div>
									</div>
								</div>

								<!--个人资产-->

							</div>
							<div class="box-container-bottom"></div>

							<!--订单 -->
							<div class="m-order">
								<div class="s-bar">
									我的订单
									<a class="i-load-more-item-shadow" href="/mainpage/order.do">全部订单</a>
								</div>
								<ul>

								</ul>
							</div>

							<!--收藏夹 -->
							<div class="m-order">
								<div class="s-bar">我的收藏
									<a class="i-load-more-item-shadow" href="/mainpage/collection.do">全部收藏</a>
								</div>
							</div>
							<div class="m-order">
								<div class="s-bar">我的购物车
									<a class="i-load-more-item-shadow" href="/mainpage/shopcart.do">我的宝贝</a>
								</div>
							</div>
							<div class="m-order">
								<div class="s-bar">我的帐号
									<a class="i-load-more-item-shadow" href="javascript:loginout();">退出</a>
								</div>
							</div>

						</div>
					</div>
					<div class="wrap-right">

						<!-- 日历-->
						<div class="day-list">
							<div class="s-bar">
								<a class="i-history-trigger s-icon" href="#"></a>我的日历
								<a class="i-setting-trigger s-icon" href="#"></a>
							</div>
							<div class="s-care s-care-noweather">
								<div class="s-date">
									<em>1</em>
									<span>星期一</span>
									<span>2017.6</span>
								</div>
							</div>
						</div>
						<!--新品 -->
						<div class="new-goods">
							<div class="s-bar">
								<i class="s-icon"></i>今日新品
							</div>
							<div class="new-goods-info">
								<a class="shop-info" href="/mainpage/introduction4.do" target="_blank">
									<div class="face-img-panel">
										<img src="/images/imgsearch1.jpg" alt="">
									</div>

									<span class="shop-title">剥壳松子</span>
								</a>
								<a class="follow " target="_blank" href="/mainpage/introduction4.do">查看</a>
							</div>
						</div>

						<!--热卖推荐 -->
						<div class="new-goods">
							<div class="s-bar">
								<i class="s-icon"></i>推荐
							</div>
							<div class="new-goods-info">
								<a class="shop-info" href="/mainpage/introduction3.do" target="_blank">
									<div >
										<img src="/images/guo.png" alt="夏威夷果">
									</div>
                                    <span class="one-hot-goods">￥49.90</span>
								</a>
							</div>
						</div>

					</div>
				</div>
				<!--底部-->
				<div class="footer">
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


							<em>© 2017-2027 版权工大的名义</em>
						</p>
					</div>
				</div>

			</div>

			<aside class="menu">
				<ul>
					<li class="person active">
						<a href="/mainpage/personcenter.do">个人中心</a>
					</li>
					<li class="person">
						<a href="/mainpage/personmsg.do">个人资料</a>
						<ul>
							<li> <a href="/mainpage/information.do">个人信息</a></li>
							<li> <a href="/mainpage/safety.do">安全设置</a></li>
							<li> <a href="/mainpage/address.do">收货地址</a></li>
						</ul>
					</li>
					<li class="person">
						<a href="#">我的交易</a>
						<ul>
							<li><a href="/mainpage/order.do">订单管理</a></li>
						</ul>
					</li>


					<li class="person">
						<a href="#">我的小窝</a>
						<ul>
							<li> <a href="/mainpage/collection.do">收藏</a></li>
							<li> <a href="javascript:loginout();">退出帐号</a></li>
						</ul>
					</li>



				</ul>

			</aside>
		</div>
		<!--引导 -->
		<div class="navCir">
			<li><a href="/mainpage/home.do"><i class="am-icon-home "></i>商城首页</a></li>
			<li><a href="/mainpage/shopcart.do">购物车</a></li>

		</div>

	</body>

</html>