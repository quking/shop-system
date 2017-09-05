<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">

		<title>地址管理</title>

		<link href="/css/admin.css" rel="stylesheet" type="text/css">
		<link href="/css/amazeui.css" rel="stylesheet" type="text/css">
		<link href="/css/personal.css" rel="stylesheet" type="text/css">
		<link href="/css/addstyle.css" rel="stylesheet" type="text/css">
		<link href="/css/main.css" rel="stylesheet" type="text/css">
		<link href="/css/bootstrap.css" rel="stylesheet" type="text/css">
		<link href="/css/city-picker.css" rel="stylesheet" type="text/css">
		<script src="/js/jquery.js" type="text/javascript"></script>
		<script type="text/javascript" src="/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="/js/city-picker.data.js"></script>
		<script type="text/javascript" src="/js/city-picker.js"></script>
		<script type="text/javascript" src="/js/main.js"></script>
		<script src="/js/amazeui.js"></script>
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
								<div class="menu-hd" id="menu-hd">
									<a href="#" target="_top" class="h">亲，请登录</a>
									<a href="#" target="_top">免费注册</a>
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

					<div class="user-address">
						<!--标题 -->
						<div class="am-cf am-padding">
							<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">地址管理</strong> / <small>Address&nbsp;list</small></div>
						</div>
						<hr/>
						<div class="clear"></div>
						<!--例子-->
						<div class="am-modal am-modal-no-btn" id="doc-modal-1">

							<div class="add-dress">
								<hr/>

								<div class="am-u-md-12 am-u-lg-8" style="margin-top: 20px;">
									<form class="am-form am-form-horizontal">

										<div class="am-form-group">
											<label for="user-name" class="am-form-label">收货人</label>
											<div class="am-form-content">
												<input type="text" id="user-name" placeholder="收货人">
											</div>
										</div>


										<div class="am-form-group">
											<label for="city-picker3" class="am-form-label">所在地</label>
											<div class="am-form-content address">
												<input id="city-picker3" class="form-control" readonly type="text" value="吉林省/长春市/宽城区" data-toggle="city-picker">
											</div>
										</div>
										<div class="am-form-group">
											<label for="user-name" class="am-form-label">具体地址</label>
											<div class="am-form-content">
												<input type="text" id="conceptadd" placeholder="具体地址">
											</div>
										</div>


										<div class="am-form-group">
											<div class="am-u-sm-9 am-u-sm-push-3">
												<a class="am-btn am-btn-danger" id="save">保存</a>
											</div>
										</div>
									</form>
								</div>

							</div>

						</div>

					</div>

					<script type="text/javascript">
						$(document).ready(function() {							
							$(".new-option-r").click(function() {
								$(this).parent('.user-addresslist').addClass("defaultAddr").siblings().removeClass("defaultAddr");
							});
							
							var $ww = $(window).width();
							if($ww>640) {
								$("#doc-modal-1").removeClass("am-modal am-modal-no-btn")
							}
							
						})
					</script>

					<div class="clear"></div>

				</div>
				<!--底部-->
				<div class="footer">
					<div class="footer-hd">
						<p>
							<b>|</b>
							<a href="/mainpage/home.do">商城首页</a>
							<b>|</b>
							<a href="/mainpage/shopcart.do">购物车</a>
							<b>|</b>

						</p>
					</div>
					<div class="footer-bd">
						<p>


							<a href="/mainpage/home.do">商城首页</a>
							<a href="/mainpage/shopcart.do">购物车</a>
							<em>© 2017-2027 工大的名义版权所有. </em>
						</p>
					</div>
				</div>
			</div>

			<aside class="menu">
				<ul>
					<li class="person">
						<a href="/mainpage/personcenter.do">个人中心</a>
					</li>
					<li class="person">
						<a href="/mainpage/personmsg.do">个人资料</a>
						<ul>
							<li> <a href="/mainpage/information.do">个人信息</a></li>
							<li> <a href="/mainpage/safety.do">安全设置</a></li>
							<li class="active"> <a href="/mainpage/address.do">收货地址</a></li>
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
							<li><a href="/mainpage/shopcart.do">购物车</a></li>
						</ul>
					</li>

				</ul>

			</aside>
		</div>
	<script type="text/javascript">
	$("#save").click(function () {
		$.ajax({
		    type:'post',
			url:'/mainpage/addressmana.do',
			dataType:'json',
			data:{"reciever":$("#user-name").val(),"address":$("#city-picker3").val(),"concreadd":$("#conceptadd").val()},
			success:function (data) {
			alert("成功保存");
            },error:function () {
				alert("网络异常");
            }


		});

    });

	</script>

	</body>

</html>