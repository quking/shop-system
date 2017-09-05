<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">

		<title>安全设置</title>

		<link href="/css/admin.css" rel="stylesheet" type="text/css">
		<link href="/css/amazeui.css" rel="stylesheet" type="text/css">

		<link href="/css/personal.css" rel="stylesheet" type="text/css">
		<link href="/css/infstyle.css" rel="stylesheet" type="text/css">
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
                    document.getElementById("menu-hd").innerHTML='<a href="/mainpage/personcenter.do" target="_top" class="h">Hi ! '+data.nicknames+'</a>';
                    document.getElementById("username").innerHTML=data.nicknames;

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

					<!--标题 -->
					<div class="user-safety">
						<div class="am-cf am-padding">
							<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">账户安全</strong> / <small>Set&nbsp;up&nbsp;Safety</small></div>
						</div>
						<hr/>

						<!--头像 -->
						<div class="user-infoPic">

							<div class="filePic">
								<img class="am-circle am-img-thumbnail" src="/images/getAvatar.do.jpg" alt="" />
							</div>

							<p class="am-form-help">头像</p>

							<div class="info-m">
								<div><b>用户名：<i id="username">小叮当</i></b></div>
								<div class="u-level">
									<span class="rank r2">
							             <s class="vip1"></s><a class="classes" href="#">金牌会员</a>
						            </span>
								</div>
								<div class="u-safety">
									<a href="/mainpage/safety.do">
									 账户安全
									<span class="u-profile"><i class="bc_ee0000" style="width: 60px;" width="0">中</i></span>
									</a>
								</div>
							</div>
						</div>

						<div class="check">
							<ul>
								<li>
									<i class="i-safety-lock"></i>
									<div class="m-left">
										<div class="fore1">登录密码</div>
										<div class="fore2"><small>为保证您购物安全，建议您定期更改密码以保护账户安全。</small></div>
									</div>
									<div class="fore3">
										<a href="/mainpage/password.do">
											<div class="am-btn am-btn-secondary">修改</div>
										</a>
									</div>
								</li>
								<li>
									<i class="i-safety-mail"></i>
									<div class="m-left">
										<div class="fore1">邮箱验证</div>
										<div class="fore2"><small>您验证的邮箱：可用于快速找回登录密码</small></div>
									</div>
									<div class="fore3">
										<a href="/mainpage/email.do">
											<div class="am-btn am-btn-secondary">换绑</div>
										</a>
									</div>
								</li>
								<li>
									<i class="i-safety-idcard"></i>
									<div class="m-left">
										<div class="fore1">实名认证</div>
										<div class="fore2"><small>用于提升账号的安全性和信任级别，认证后不能修改认证信息。</small></div>
									</div>
									<div class="fore3">
										<a href="/mainpage/idcard.do">
											<div class="am-btn am-btn-secondary">认证</div>
										</a>
									</div>
								</li>
							</ul>
						</div>

					</div>
				</div>
				<!--底部-->
				<div class="footer">
					<div class="footer-hd">
						<p>

							<a href="/mainpage/home.do">商城首页</a>
							<b>|</b>
							<a href="/mainpage/shopcart.do">购物车</a>
							<b>|</b>
						</p>
					</div>
					<div class="footer-bd">
						<p>

							<em>© 2017-2027 工大的名义版权所有.</em>
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
							<li class="active"> <a href="/mainpage/safety.do">安全设置</a></li>
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

						</ul>
					</li>

				</ul>

			</aside>
		</div>

	</body>

</html>