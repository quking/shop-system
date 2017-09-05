<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

		<title>商品页面</title>

		<link href="/css/admin.css" rel="stylesheet" type="text/css" />
		<link href="/css/amazeui.css" rel="stylesheet" type="text/css" />
		<link href="/css/demo.css" rel="stylesheet" type="text/css" />
		<link type="text/css" href="/css/optstyle.css" rel="stylesheet" />
		<link type="text/css" href="/css/style.css" rel="stylesheet" />

		<script type="text/javascript" src="/js/jquery.js"></script>
		<script type="text/javascript" src="/js/quick_links.js"></script>

		<script type="text/javascript" src="/js/amazeui.js"></script>
		<script type="text/javascript" src="/js/jquery.imagezoom.min.js"></script>
		<script type="text/javascript" src="/js/jquery.flexslider.js"></script>
		<script type="text/javascript" src="/js/list.js"></script>

	</head>

	<body>


		<!--顶部导航条 -->
		<div class="am-container header">
			<ul class="message-l">
				<div class="topMessage">
					<div class="menu-hd">

					</div>
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
			</ul>
			</div>

			<!--悬浮搜索框-->

			<div class="nav white">

				<div class="search-bar pr">

				</div>
			</div>

			<div class="clear"></div>
            <b class="line"></b>
			<div class="listMain">

				<!--分类-->
			<div class="nav-table">
					   <div class="long-title"><span class="all-goods">全部分类</span></div>
					   <div class="nav-cont">
							<ul>
								<li class="index"><a href="/mainpage/home.do">首页</a></li>

							</ul>

						</div>
			</div>
				<ol class="am-breadcrumb am-breadcrumb-slash">
					<li><a href="/mainpage/home.do">首页</a></li>
					<li class="am-active">内容</li>
				</ol>
				<script type="text/javascript">
					$(function() {});
					$(window).load(function() {
						$('.flexslider').flexslider({
							animation: "slide",
							start: function(slider) {
								$('body').removeClass('loading');
							}
						});
					});
				</script>
				<div class="scoll">
					<section class="slider">
						<div class="flexslider">
							<ul class="slides">
								<li>
									<img src="/images/huiyaun.png" title="pic" />
								</li>
								<li>
									<img src="/images/huiyuan.png" />
								</li>
								<li>
									<img src="/images/huiyuan.png" />
								</li>
							</ul>
						</div>
					</section>
				</div>

				<!--放大镜-->

				<div class="item-inform">
					<div class="clearfixLeft" id="clearcontent">

						<div class="box">


							<div class="tb-booth tb-pic tb-s310">
								<a href="/images/huiyuan.png"><img src="/images/huiyuan.png" alt="" rel="/images/huiyuan.png" class="jqzoom" /></a>
							</div>

						</div>






						<div class="clear"></div>
					</div>

					<div class="clearfixRight">

						<!--规格属性-->
						<!--名称-->
						<div class="tb-detail-hd">
							<h1>
								汇源100%橙汁青春版1L*5盒浓缩果汁水果饮料整箱礼盒
							</h1>
						</div>
						<div class="tb-detail-list">
							<!--价格-->
							<div class="tb-detail-price">
								<li class="price iteminfo_price">
									<dt>活动价</dt>
									<dd><em>¥</em><b class="sys_item_price">51.90</b>  </dd>
								</li>
								<li class="price iteminfo_mktprice">
									<dt>原价</dt>
									<dd><em>¥</em><b class="sys_item_mktprice">88.00</b></dd>
								</li>
								<div class="clear"></div>
							</div>

							<!--地址-->

							<div class="clear"></div>

							<!--销量-->
							<ul class="tm-ind-panel">
								<li class="tm-ind-item tm-ind-sellCount canClick">
									<div class="tm-indcon"><span class="tm-label">月销量</span><span class="tm-count">453</span></div>
								</li>
								<li class="tm-ind-item tm-ind-sumCount canClick">
									<div class="tm-indcon"><span class="tm-label">累计销量</span><span class="tm-count">915</span></div>
								</li>
								<li class="tm-ind-item tm-ind-reviewCount canClick tm-line3">
									<div class="tm-indcon"><span class="tm-label">累计评价</span><span class="tm-count">340</span></div>
								</li>
							</ul>
							<div class="clear"></div>

							<!--各种规格-->
							<dl class="iteminfo_parameter sys_item_specpara">
								<dt class="theme-login"><div class="cart-title">可选规格<span class="am-icon-angle-right"></span></div></dt>
								<dd>
									<!--操作页面-->

									<div class="theme-popover-mask"></div>

									<div class="theme-popover">
										<div class="theme-span"></div>
										<div class="theme-poptit">
											<a href="javascript:;" title="关闭" class="close">×</a>
										</div>
										<div class="theme-popbod dform">
											<form class="theme-signin" name="loginform" action="" method="post">

												<div class="theme-signin-left">


													<div class="theme-options">
														<div class="cart-title number">数量</div>
														<dd>
															<input id="min" class="am-btn am-btn-default" name="" type="button" value="-" />
															<input id="text_box" name="" type="text" value="1" style="width:30px;" />
															<input id="add" class="am-btn am-btn-default" name="" type="button" value="+" />
															<span id="Stock0" class="tb-hidden">库存<span class="stock">1000</span>件</span>
														</dd>

													</div>
													<div class="clear"></div>

													<div class="btn-op">
														<div class="btn am-btn am-btn-warning">确认</div>
														<div class="btn close am-btn am-btn-warning">取消</div>
													</div>
												</div>
												<div class="theme-signin-right">
													<div class="img-info">
														<img src="../images/songzi.jpg" />
													</div>
													<div class="text-info">
														<span class="J_Price price-now">¥39.00</span>
														<span id="Stock" class="tb-hidden">库存<span class="stock">1000</span>件</span>
													</div>
												</div>

											</form>
										</div>
									</div>

								</dd>
							</dl>
							<div class="clear"></div>
							<!--活动	-->
							<div class="shopPromotion gold">
								<div class="hot">
									<dt class="tb-metatit">店铺优惠</dt>
									<div class="gold-list">
										<p>活动价</p>
									</div>
								</div>
								<div class="clear"></div>

							</div>
						</div>

						<div class="pay">
							<div class="pay-opt">
							<a href="/mainpage/home.do"><span class="am-icon-home am-icon-fw">首页</span></a>
							<a href="/mainpage/collection.do"><span class="am-icon-heart am-icon-fw">收藏</span></a>
							
							</div>
							<li>
								<div class="clearfix tb-btn tb-btn-buy theme-login">
									<a id="LikBuy" title="点此按钮到下一步确认购买信息" href="javascript:warnning();">立即购买</a>
								</div>
							</li>
							<li>
								<div class="clearfix tb-btn tb-btn-basket theme-login">
									<a id="LikBasket" title="加入购物车" href="javascript:warnning();"><i></i>加入购物车</a>
								</div>
							</li>
						</div>

					</div>


				</div>
									<div class="clear"></div>
								</div>
							</div>

						</div>

						<div class="clear"></div>

						<div class="footer">
							<div class="footer-hd">
								<p>

									<a href="/mainpage/home.do">商城首页</a>
									<b>|</b>
									<a href="/mainpage/shopcart.do">购物车</a>
								</p>
							</div>
							<div class="footer-bd">
								<p>
									<em>© 2017-2027 工大的名义版权所有. </em>
								</p>
							</div>
						</div>
					</div>

				</div>
			</div>
			<!--菜单 -->
			<div class=tip>
				<div id="sidebar">
					<div id="wrap">
						<div id="prof" class="item">
							<a href="#">
								<span class="setting"></span>
							</a>
							<div class="ibar_login_box status_login">
								<div class="avatar_box">
									<p class="avatar_imgbox"><img src="/images/no-img_mid_.jpg" /></p>
									<ul class="user_info">

									</ul>
								</div>
								<div class="login_btnbox">
									<a href="/mainpage/order.do" class="login_order">我的订单</a>
									<a href="/mainpage/collection.do" class="login_favorite">我的收藏</a>
								</div>
								<i class="icon_arrow_white"></i>
							</div>
						</div>
						<div id="shopCart" class="item">
							<a href="/mainpage/shopcart.do">
								<span class="message"></span>
							</a>
							<p>
								购物车
							</p>
							<p class="cart_num">0</p>
						</div>
						<div id="brand" class="item">
							<a href="/mainpage/collection.do">
								<span class="wdsc"><img src="/images/wdsc.png" /></span>
							</a>
							<div class="mp_tooltip">
								我的收藏
								<i class="icon_arrow_right_black"></i>
							</div>
						</div>
						<div class="quick_toggle">
							<li class="qtitem">
								<a href="#top" class="return_top"><span class="top"></span></a>
							</li>
						</div>
						<!--回到顶部 -->
						<div id="quick_links_pop" class="quick_links_pop hide"></div>
					</div>

				</div>
			</div>
		<script type="text/javascript">
            function warnning() {
                alert("该商品尚未对外开放。敬请期待");
            }
		</script>
	</body>

</html>