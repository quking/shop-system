<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">

	<head lang="en">
		<meta charset="UTF-8">
		<title>登录</title>
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<meta name="format-detection" content="telephone=no">
		<meta name="renderer" content="webkit">
		<meta http-equiv="Cache-Control" content="no-siteapp" />

		<link rel="stylesheet" href="/css/amazeui.css" />
		<link href="/css/dlstyle.css" rel="stylesheet" type="text/css">
		<script type="text/javascript" src="/js/jquery.js"></script>
	</head>

	<body>

		<div class="login-boxtitle">

		</div>

		<div class="login-banner">
			<div class="login-main">
				<div class="login-banner-bg"><span></span><img src="/images/big.jpg" /></div>
				<div class="login-box">

							<h3 class="title">登录商城</h3>

							<div class="clear"></div>
						
						<div class="login-form">
						  <form>
							   <div class="user-name">
								    <label for="username"></label>
								    <input type="text" name="username" id="username" placeholder="邮箱/用户名">
                 </div>
                 <div class="user-pass">
								    <label for="password"></label>
								    <input type="password" name="upassword" id="password" placeholder="请输入密码">
                 </div>
              </form>
           </div>
            <div class="login-links">
                <label for="remember-me"><input id="remember-me" type="checkbox">记住密码</label>
								<a href="/mainpage/forgetpassword.do" class="am-fr">忘记密码?</a>
								<a href="/mainpage/register.do" class="zcnext am-fr am-btn-default">注册</a>
								<br />
            </div>
								<div class="am-cf">
									<input type="submit" id="loading" value="登 录" class="am-btn am-btn-primary am-btn-sm">
								</div>
				</div>
			</div>
		</div>


					<div class="footer ">
						<div class="footer-hd ">
							<p>
								<a href="/mainpage/home.do">商城首页</a>
								<b>|</b>
								<a href="/mainpage/personcenter.do">个人中心</a>
							</p>
						</div>
						<div class="footer-bd ">
							<p>


								<em>© 2017-2027 工大的名义 版权所有. </em>
							</p>
						</div>
				</div>
		<script type="text/javascript">
			$("#loading").click(function () {
				$.ajax({
				    type:'post',
					url:'/mainpage/logincheck.do',
					dataType:'json',
					data:{"username":$("#username").val(),"password":$("#password").val()},
					success:function (data) {
				        if(data.result=="success"){
				            window.location.href="/mainpage/home.do";
						}else{
				            alert("帐号或者密码错误");
						}

                    },
					error:function () {
						alert("网络错误");
                    }


				});
            });

		</script>
	</body>

</html>