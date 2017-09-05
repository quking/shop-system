<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">

		<title>修改密码</title>

		<link href="/css/admin.css" rel="stylesheet" type="text/css">
		<link href="/css/amazeui.css" rel="stylesheet" type="text/css">

		<link href="/css/personal.css" rel="stylesheet" type="text/css">
		<link href="/css/stepstyle.css" rel="stylesheet" type="text/css">

		<script type="text/javascript" src="/js/jquery-1.7.2.min.js"></script>
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

					<div class="am-cf am-padding">
						<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">修改密码</strong> / <small>Password</small></div>
					</div>
					<hr/>
					<!--进度条-->
					<div class="m-progress">
						<div class="m-progress-list">
							<span class="step-1 step">
                                <em class="u-progress-stage-bg"></em>
                                <i class="u-stage-icon-inner">1<em class="bg"></em></i>
                                <p class="stage-name">重置密码</p>
                            </span>
							<span class="step-2 step">
                                <em class="u-progress-stage-bg"></em>
                                <i class="u-stage-icon-inner">2<em class="bg"></em></i>
                                <p class="stage-name">完成</p>
                            </span>
							<span class="u-progress-placeholder"></span>
						</div>
						<div class="u-progress-bar total-steps-2">
							<div class="u-progress-bar-inner"></div>
						</div>
					</div>
					<form class="am-form am-form-horizontal">
						<div class="am-form-group">
							<label for="user-old-password" class="am-form-label">原密码</label>
							<div class="am-form-content">
								<input type="password" id="user-old-password" placeholder="请输入原登录密码">
							</div>
						</div>
						<div class="am-form-group">
							<label for="user-new-password" class="am-form-label">新密码</label>
							<div class="am-form-content">
								<input type="password" id="user-new-password" placeholder="由数字、字母组合">
							</div>
						</div>
						<div class="am-form-group">
							<label for="user-confirm-password" class="am-form-label">确认密码</label>
							<div class="am-form-content">
								<input type="password" id="user-confirm-password" placeholder="请再次输入上面的密码">
							</div>
						</div>
						<div class="info-btn">
							<div class="am-btn am-btn-danger" id="savech">保存修改</div>
						</div>

					</form>

				</div>
				<!--底部-->
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

							<em>© 2017-2027 工大的名义 版权所有.</em>
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
<script type="text/javascript">
		$("#savech").click(function () {
		var newpsw=document.getElementById("user-new-password").value;
		var confire=document.getElementById("user-confirm-password").value;
		if(newpsw==confire){
		    updatepsw();
		}else{
		    alert("两次密码不一致");
		    return false;
		}

        });
		function updatepsw() {
            var confire=document.getElementById("user-confirm-password").value;

            $.ajax({
                type:'post',
				url:'/mainpage/chpassword.do',
				dataType:'json',
				data:{'password':confire,'oldpsw':$('#user-old-password').val()},
				success:function (data) {
					if(data.result=="success"){
					    window.location.href="/mainpage/home.do";
					}else
					    alert("旧密码错误");
                },error:function (data) {

                    alert('网络异常');
                }
			});
        }

</script>
	</body>

</html>