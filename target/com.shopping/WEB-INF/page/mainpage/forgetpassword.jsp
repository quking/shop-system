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
					   <div class="long-title"><span class="all-goods"><a href="/mainpage/home.do" style="color: white;font-size: large">回到首页</a></span></div>
					   <div class="nav-cont">


						</div>
			</div>
			<b class="line"></b>
		<div class="center">
			<div class="col-main">
				<div class="main-wrap">

					<div class="am-cf am-padding">
						<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">找回密码</strong> / <small>Email</small></div>
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
							<span class="step-1 step" id="chgreen">
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
							<label for="user-email" class="am-form-label">用户邮箱</label>
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
						<div class="am-form-group">
							<label for="user-password" class="am-form-label">新密码</label>
							<div class="am-form-content">
								<input type="password" id="user-password" placeholder="请输入新的密码">
							</div>
						</div>
						<div class="am-form-group">
							<label for="user-password2" class="am-form-label">确认密码</label>
							<div class="am-form-content">
								<input type="password" id="user-password2" placeholder="重新输入上面的密码">
							</div>
						</div>
						<div class="info-btn">
							<div class="am-btn am-btn-danger" id="saxech">确认找回</div>
						</div>

					</form>

				</div>
				<!--底部-->
				<div class="footer">
					<div class="footer-hd">
						<p>


							<a href="/mainpage/home.do">商城首页</a>
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
                url:"/mainpage/forgetpsw.do",
                dataType:"json",
                data:{"mail":email},
                success:function (data) {
                    if(data.result=="success"){
                        alert("成功发送");
					}else{
                        alert("该邮箱没有被注册过，请检查邮箱是否正确");
					}

                },
                error:function () {
                    alert("网络错误");
                }
            });
        });
$("#saxech").click(function () {
	var codes=document.getElementById("user-code").value;
    var input1=document.getElementById("user-password").value;
    var input2=document.getElementById("user-password2").value;
    if(input1!=input2){
        alert("两次输入密码不一致，请重新检查");
        return false;
	}
    $.ajax({
        type:'post',
        url:'/mainpage/checkmailcode.do',
        dataType:'json',
        data:{"ecode":codes},
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
    var email=document.getElementById("user-email").value;
    var input2=document.getElementById("user-password2").value;
	$.ajax({
	    type:'post',
	    url:'/mainpage/findbackpsw.do',
		dataType:'json',
		data:{"emaill":email,"passwordss":input2},
		success:function (data) {
	        alert("成功找回");
			location.href="/mainpage/login.do";

        },error:function () {
			alert("网络异常");
        }


	});
}

	</script>

	</body>

</html>