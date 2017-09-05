<!<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">

		<title>验证邮箱</title>

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
						<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">绑定邮箱</strong> / <small>Email</small></div>
					</div>
					<hr/>
					<!--进度条-->
					<div class="m-progress">
						<div class="m-progress-list">
							<span class="step-1 step">
                                <em class="u-progress-stage-bg"></em>
                                <i class="u-stage-icon-inner">1<em class="bg"></em></i>
                                <p class="stage-name">验证邮箱</p>
                            </span>
							<span class="step-2 step" id="chgreen">
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
							<label for="user-email" class="am-form-label">验证邮箱</label>
							<div class="am-form-content">
								<input type="email" id="user-email" placeholder="请输入邮箱地址">
							</div>
						</div>
						<div class="am-form-group code">
							<label for="user-code" class="am-form-label">验证码</label>
							<div class="am-form-content">
								<input type="tel" id="user-code" placeholder="验证码">
							</div>
							<a class="btn" href="javascript:void(0);" id="sendMobileCode">
								<div class="am-btn am-btn-danger">获取验证码</div>
							</a>
						</div>
						<div class="info-btn">
							<div class="am-btn am-btn-danger" id="saxech">保存修改</div>
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
							<b>|</b>

						</p>
					</div>
					<div class="footer-bd">
						<p>



							<em>© 2017-2027 版权工大的名义所有</em>
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
		$("#sendMobileCode").click(function () {
            var email=document.getElementById("user-email").value;
            var sReg =/^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/;
            if (!sReg.test(email) )
            {  alert("Email地址错误！请重新输入。");
                return false;
            }
            $.ajax({
                type:'post',
                url:"/mainpage/sendmail.do",
                dataType:"json",
                data:{"mail":email},
                success:function (data) {
                    if(data.result=="success"){
                        alert("成功发送");
					}else{
                        alert("该邮箱已被注册请更换邮箱");
					}

                },
                error:function () {
                    alert("网络错误");
                }
            });
        });
$("#saxech").click(function () {
	var input=document.getElementById("user-email").value;
	var codes=document.getElementById("user-code").value;
    $.ajax({
        type:'post',
        url:'/mainpage/checkmailcode.do',
        dataType:'json',
        data:{"ecode":codes,"input":input},
        success:function (data) {
            if(data.result=="success"){
                chemail();
            }else{
                alert("验证码错误");return false;
            }
        }

    });

});
function chemail() {
    var input=document.getElementById("user-email").value;
	$.ajax({
	    type:'post',
	    url:'/mainpage/chemail.do',
		dataType:'json',
		data:{"input":input},
		success:function (data) {
            var c=document.getElementById("chgreen");
             c.className="step-1 step";
		alert("修改成功");
		location.href="mainpage/safety.do";

        },error:function () {
			alert("网络异常");
        }


	});
}

	</script>

	</body>

</html>