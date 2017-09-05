<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head lang="en">
		<meta charset="UTF-8">
		<title>注册</title>
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<meta name="format-detection" content="telephone=no">
		<meta name="renderer" content="webkit">
		<meta http-equiv="Cache-Control" content="no-siteapp" />

		<link rel="stylesheet" href="/css/amazeui.css" />
		<link href="/css/dlstyle.css" rel="stylesheet" type="text/css">
		<script src="/js/jquery.js"></script>
		<script src="/js/amazeui.js"></script>


	</head>

	<body>

		<div class="login-boxtitle">

		</div>

		<div class="res-banner">
			<div class="res-main">
				<div class="login-banner-bg"><span></span><img src="/images/big.jpg" /></div>
				<div class="login-box">

						<div class="am-tabs" id="doc-my-tabs">
							<ul class="am-tabs-nav am-nav am-nav-tabs am-nav-justify">

								<li><a href="">邮箱注册</a></li>
							</ul>



								<div class="am-tab-panel">
									<form method="post">
										<div class="user-email">
											<label for="email"></label>
											<input type="email" name="email" id="email" placeholder="请输入邮箱账号">
										</div>
										<div class="verification">
											<label for="code"></label>
											<input type="tel" name="code" id="code" placeholder="请输入验证码">
											<a class="btn" href="javascript:void(0);" onclick="sendemailCode();" id="sendmailCode">
												<span id="dyMobileButton">获取</span>
											</a>
										</div>
                 <div class="user-pass">
								    <label for="password"></label>
								    <input type="password" name="password" id="password" placeholder="设置密码">
                 </div>										
                 <div class="user-pass">
								    <label for="passwordRepeat"></label>
								    <input type="password" name="passwordrepeat" id="passwordRepeat" placeholder="确认密码">
                 </div>	
									</form>
										<div class="am-cf">
											<input type="submit" name="" value="注册" id="regis" class="am-btn am-btn-primary am-btn-sm am-fl">
										</div>
								
									<hr>
								</div>

								<script>
									$(function() {
									    $('#doc-my-tabs').tabs();
									  })
								</script>
							<script type="text/javascript">

								$("#regis").click(function () {
                                    var passwprd=document.getElementById("password").value;
                                    var passwordrepeat=document.getElementById("passwordRepeat").value;
								$.ajax({
								    type:'post',
								    url:'/mainpage/checkmailcode.do',
									dataType:'json',
									data:{"ecode":$('#code').val()},
									success:function (data) {
										if(data.result=="success"){
										    if(passwordrepeat==passwprd){
										        half();
											}else{
										        alert("两次输入密码不一致");return false;
											}
										}else{
										    alert("验证码错误");return false;
										}
                                    },error:function () {
										alert("状态异常");
                                    }

								});

                                });
								function half() {
                                    var emails=document.getElementById("email").value;
                                    var password=document.getElementById("passwordRepeat").value;
									$.ajax({
									    type:'post',
									    url:'/mainpage/halfinsert.do',
										dataType:'json',
									    data:{"password":password,"email":emails},
										success:function () {
                                            window.location.href='/mainpage/information.do';
                                        },
										error:function () {
											alert("网络错误");
                                        }

									});

                                }
								function sendemailCode() {
									var emai=document.getElementById("email").value;
                                    var sReg =/^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/;
                                    if (!sReg.test(emai) )
                                    {  alert("Email地址错误！请重新输入。");
                                  		  return false;
                                    }
                                    $.ajax({
                                        type:'post',
                                        url:"/mainpage/sendmail.do",
                                        dataType:"json",
										data:{"mail":emai},
                                        success:function (data) {
                                            if(data.result=="success"){
                                                alert("成功发送");
											}else {
                                                alert("该邮箱已经被注册，请更换邮箱");
											}

                                        },
                                        error:function () {
                                            alert("网络错误");
                                        }
                                    });

                                }

							</script>

							</div>
						</div>

				</div>
			</div>
			
					<div class="footer ">
						<div class="footer-hd ">
							<p>

								<a href="/mainpage/home.do">商城首页</a>
								<b>|</b>
							</p>
						</div>
						<div class="footer-bd ">
							<p>
								<em>© 2017-2027 工大的名义 版权所有. </em>
							</p>
						</div>
					</div>
		</div>
	</body>


</html>