<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">

		<title>个人资料</title>

		<link href="/css/admin.css" rel="stylesheet" type="text/css">
		<link href="/css/amazeui.css" rel="stylesheet" type="text/css">

		<link href="/css/personal.css" rel="stylesheet" type="text/css">
		<link href="/css/infstyle.css" rel="stylesheet" type="text/css">
		<script src="/js/jquery.js" type="text/javascript"></script>
		<script src="/js/amazeui.js" type="text/javascript"></script>
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
                        document.getElementById("nickedname").innerHTML=data.nicknames;
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
                type: 'post',
                url: '/mainpage/showinformation.do',
                dataType: 'json',
                success: function (data) {
                    document.getElementById("depart").value = data.address;
                    document.getElementById("telephone").value = data.tel;
                    document.getElementById("real-name").value = data.realname;
                    document.getElementById("user-idcard").value = data.idcard;
                    document.getElementById("safe-mail").value = data.email;

                }, error: function () {
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
						</div>
			</div>
			<b class="line"></b>
		<div class="center">
			<div class="col-main">
				<div class="main-wrap">

					<div class="user-info">
						<!--标题 -->
						<div class="am-cf am-padding">
							<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">个人资料</strong> / <small>Personal&nbsp;information</small></div>
						</div>
						<hr/>

						<!--头像 -->
						<div class="user-infoPic">

							<div class="filePic">
								<input type="file" class="inputPic" allowexts="gif,jpeg,jpg,png,bmp" accept="image/*">
								<img class="am-circle am-img-thumbnail" src="/images/getAvatar.do.jpg" alt="" />
							</div>

							<p class="am-form-help">头像</p>

							<div class="info-m">
								<div><b>用户名：<i id="nickedname">小叮当</i></b></div>
								<div class="u-level">
									<span class="rank r2">
							             <s class="vip1"></s><a class="classes" href="#">黄金会员</a>
						            </span>
								</div>
								<div class="u-safety">
									<a href="/mainpage/safety.do">
									 账户安全
									<span class="u-profile">中</span>
									</a>
								</div>
							</div>
						</div>

						<!--个人信息 -->
						<div class="info-main">
							<form class="am-form am-form-horizontal">

								<div class="am-form-group">
									<label class="am-form-label">地区</label>
									<div class="am-form-content">
										<input type="text" id="depart" disabled="disabled">

									</div>
								</div>

								<div class="am-form-group">
									<label  class="am-form-label">联系电话</label>
									<div class="am-form-content">
										<input type="text" id="telephone" disabled="disabled">

									</div>
								</div>

								<div class="am-form-group">
									<label  class="am-form-label">真实姓名</label>
									<div class="am-form-content">
										<input type="text" id="real-name" disabled="disabled">

									</div>
								</div>

								<div class="am-form-group">
									<label class="am-form-label">身份证</label>
									<div class="am-form-content">
										<input id="user-idcard" type="text" disabled="disabled">
									</div>
								</div>
								<div class="am-form-group">
									<label  class="am-form-label">安全邮箱</label>
									<div class="am-form-content">
										<input type="text" id="safe-mail" disabled="disabled">

									</div>
								</div>

							</form>
						</div>

					</div>

				</div>
				<!--底部-->
				<div class="footer">
					<div class="footer-hd">
						<p>
							<a href="/mainpage/home.do">商城首页</a>
							<b>|</b>
							<a href="/mainpage/personcenter.do">个人中心</a>
							<b>|</b>

						</p>
					</div>
					<div class="footer-bd">
						<p>

							<em>© 2017-2027   版权:工大的名义</em>
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
					<a href="/mainpage/personmsg.do" class="active">个人资料</a>
						<ul>
							 <li><a href="/mainpage/information.do">个人信息</a></li>
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
							<li><a href="/mainpage/shopcart.do">购物车</a></li>
						</ul>
					</li>

				</ul>

			</aside>
		</div>

	</body>

</html>