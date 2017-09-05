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

		<script type="text/javascript">
            $.ajax({
                type:'post',
                url:'/mainpage/iflogin.do',
                dataType:'json',
                success:function (data) {
                    if(data.nicknames=="failure"){}
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
                    document.getElementById("J_MiniCartNum1").innerHTML=data.shopcarcount;
                },error:function () {
                    alert("网络异常");
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
						<a href="/mainpage/login.do" target="_top" class="h">亲，请登录</a>
						<a href="/mainpage/register.do" target="_top">免费注册</a>
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
				</div>
				</ul>
			</div>

			<!--悬浮搜索框-->

			<div class="nav white">

				<div class="search-bar pr">
					<a name="index_none_header_sysc" href="#"></a>
					<form>
						<input id="searchInput" name="index_none_header_sysc" type="text" placeholder="搜索" autocomplete="off">
						<input id="ai-topsearch" class="submit am-btn" value="搜索" index="1" type="button">
					</form>
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
									<img src="/images/guo.png" title="pic" />
								</li>
								<li>
									<img src="/images/guo.png" />
								</li>
								<li>
									<img src="/images/guo.png" />
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
								<a href="/images/guo.png"><img src="/images/guo.png" alt="夏威夷果" rel="/images/guo.png" class="jqzoom" /></a>
							</div>

						</div>






						<div class="clear"></div>
					</div>

					<div class="clearfixRight">

						<!--规格属性-->
						<!--名称-->
						<div class="tb-detail-hd">
							<h1>
								奶油味夏威夷果 奶油口味特产干货干果坚果零食小吃
							</h1>
						</div>
						<div class="tb-detail-list">
							<!--价格-->
							<div class="tb-detail-price">
								<li class="price iteminfo_price">
									<dt>促销价</dt>
									<dd><em>¥</em><b class="sys_item_price">49.90</b>  </dd>
								</li>
								<li class="price iteminfo_mktprice">
									<dt>原价</dt>
									<dd><em>¥</em><b class="sys_item_mktprice">78.00</b></dd>
								</li>
								<div class="clear"></div>
							</div>

							<!--地址-->

							<div class="clear"></div>

							<!--销量-->
							<ul class="tm-ind-panel">
								<li class="tm-ind-item tm-ind-sellCount canClick">
									<div class="tm-indcon"><span class="tm-label">月销量</span><span class="tm-count">1015</span></div>
								</li>
								<li class="tm-ind-item tm-ind-sumCount canClick">
									<div class="tm-indcon"><span class="tm-label">累计销量</span><span class="tm-count">6015</span></div>
								</li>
								<li class="tm-ind-item tm-ind-reviewCount canClick tm-line3">
									<div class="tm-indcon"><span class="tm-label">累计评价</span><span class="tm-count">640</span></div>
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
														<div class="cart-title">口味</div>
														<ul>
															<li class="sku-line selected">奶香味<i></i></li>

														</ul>
													</div>
													<div class="theme-options">
														<div class="cart-title">包装</div>
														<ul>
															<li class="sku-line selected">精品包装<i></i></li>

														</ul>
													</div>
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
														<img src="/images/songzi.jpg"/>
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
										<p>购物满2件不打折，满3件不打折</p>
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
									<a id="LikBuy" title="收藏" onclick="addtocollection(2)">加入收藏</a>
								</div>
							</li>
							<li>
								<div class="clearfix tb-btn tb-btn-basket theme-login">
									<a id="LikBasket" title="加入购物车">加入购物车</a>
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
							<a href="/mainpage/personcenter.do">
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
							<p class="cart_num" id="J_MiniCartNum1">0</p>
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
                    $.ajax({
                        type:'post',
                        url:'/mainpage/checkcollect.do',
                        dataType:'json',
                        data:{"gid":2},
                        success:function (data) {
                            if(data.result=="success"){
                                document.getElementById("LikBuy").innerHTML='加入收藏';
                            }else{
                                document.getElementById("LikBuy").innerHTML='取消收藏';
                            }
                        },error:function () {
                            alert("网络错误");
                        }

                    });
					$("#add").click(function () {
                        if(parseInt(document.getElementById("text_box").value)<1001){
                            document.getElementById("text_box").value=parseInt(document.getElementById("text_box").value)+1;}

                    });
                    $("#min").click(function () {
                        if(parseInt(document.getElementById("text_box").value)>1){
                        document.getElementById("text_box").value=parseInt(document.getElementById("text_box").value)-1;}
                    });
   					 $("#LikBasket").click(function () {
   					     var numbers=document.getElementById("text_box").value;
                         if(numbers>1000){
                             alert("超出库存，请重新输入");
                             return false;
                         }
                         if(numbers<1){
                             alert("数量不能小于0");
                             return false;
                         }
                         if(isNaN(numbers)){
                             alert("非法字符请重新输入");
                             return false;
                         }
							$.ajax({
							    type:'post',
								url:'/mainpage/addtocar.do',
								dataType:'json',
								data:{"gid":2,"numbers":numbers},
								success:function () {
								alert("添加成功");
								location.reload();
                                },error:function () {
                                    location.href="/mainpage/login.do";
                                }

							});

   						  });
                    function addtocollection(num) {
                        $.ajax({
                            type:'post',
                            url:'/mainpage/addtocollect.do',
                            dataType:'json',
                            data:{'goodsnum':num},
                            success:function (data) {
                                if(data.result=="success"){
                                    alert("收藏成功");
                                    document.getElementById("LikBuy").innerHTML='取消收藏';
                                }else{
                                    alert("取消成功");
                                    document.getElementById("LikBuy").innerHTML='加入收藏';
                                }
                            },error:function () {
                                location.href="/mainpage/login.do";
                            }
						});
                    }
                    $("#ai-topsearch").click(function () {
                        var searchword=document.getElementById("searchInput").value;
                        $.ajax({
                            type:'post',
                            url:'/mainpage/searchgoods.do',
                            dataType:'json',
                            data:{"searchresult":searchword},
                            success:function () {
                                location.href='/mainpage/searchresult.do';

                            },error:function () {
                                alert("网络错误");
                            }

                        });

                    });
				</script>
	</body>

</html>