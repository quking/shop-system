<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">

		<title>我的收藏</title>

		<link href="/css/admin.css" rel="stylesheet" type="text/css">
		<link href="/css/amazeui.css" rel="stylesheet" type="text/css">

		<link href="/css/personal.css" rel="stylesheet" type="text/css">
		<link href="/css/colstyle.css" rel="stylesheet" type="text/css">
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
			    type:'post',
				url:'/mainpage/ergodic.do',
				dataType:'json',
				success:function (data) {
					for(var i=0;i<data.gidlist.length;i++){
					    listcollection(data.gidlist[i]);
					}
                },error:function () {
                    alert("网络错误");
                }
			});
			function listcollection(num) {
				var content=document.getElementById("contents");
				if(num=="1"){
				    content.innerHTML+='<div class="s-item-wrap"><div class="s-item"><div class="s-pic"><a href="/goodspage/introduction4.do" class="s-pic-link"><img src="/images/hongsong220.png" alt="良品铺子手剥松子 开口东北手拨红松子" title="良品铺子手剥松子 开口东北手拨红松子" class="s-pic-img s-guess-item-img"></a></div><div class="s-info"><div class="s-title"><a href="/goodspage/introduction4.do" title="良品铺子手剥松子 开口东北手拨红松子">良品铺子手剥松子 开口东北手拨红松子</a></div><div class="s-price-box"><span class="s-price"><em class="s-price-sign">¥</em><em class="s-value">56.90</em></span><span class="s-history-price"><em class="s-price-sign">¥</em><em class="s-value">88.00</em></span></div></div><div class="s-tp"><a onclick="concelcollect(1)"><span class="ui-btn-loading-before">取消收藏</span></a><i class="am-icon-shopping-cart"></i><a href="/goodspage/introduction4.do"><span class="ui-btn-loading-before buy">查看详情</span></a></div></div></div>';
				}
				if(num=="2"){
				    content.innerHTML+='<div class="s-item-wrap"><div class="s-item"><div class="s-pic"><a href="/goodspage/introduction3.do" class="s-pic-link"><img src="/images/cheshi.png" alt="奶油味夏威夷果 奶油口味特产干货干果坚果零食小吃" title="奶油味夏威夷果 奶油口味特产干货干果坚果零食小吃" class="s-pic-img s-guess-item-img"></a></div><div class="s-info"><div class="s-title"><a href="/goodspage/introduction3.do" title="奶油味夏威夷果 奶油口味特产干货干果">奶油味夏威夷果 奶油口味特产干货干果</a></div><div class="s-price-box"><span class="s-price"><em class="s-price-sign">¥</em><em class="s-value">49.90</em></span><span class="s-history-price"><em class="s-price-sign">¥</em><em class="s-value">78.00</em></span></div></div><div class="s-tp"><a onclick="concelcollect(2)"><span class="ui-btn-loading-before">取消收藏</span></a><i class="am-icon-shopping-cart"></i><a href="/goodspage/introduction3.do"><span class="ui-btn-loading-before buy">查看详情</span></a></div></div></div>';
				}
				if(num=="3"){
				    content.innerHTML+='<div class="s-item-wrap"><div class="s-item"><div class="s-pic"><a href="/goodspage/yuwan.do" class="s-pic-link"><img src="/images/yuwan220.png" alt="良品铺子即食鱼丸零食 香辣味小吃休闲食品特产鱼麻辣烧烤味100g" title="良品铺子即食鱼丸零食 香辣味小吃休闲食品特产鱼麻辣烧烤味100g" class="s-pic-img s-guess-item-img"></a></div><div class="s-info"><div class="s-title"><a href="/goodspage/yuwan.do" title="良品铺子即食鱼丸零食 香辣味小吃休闲食品">良品铺子即食鱼丸零食 香辣味小吃休闲食品</a></div><div class="s-price-box"><span class="s-price"><em class="s-price-sign">¥</em><em class="s-value">16.90</em></span><span class="s-history-price"><em class="s-price-sign">¥</em><em class="s-value">38.00</em></span></div></div><div class="s-tp"><a onclick="concelcollect(3)"><span class="ui-btn-loading-before">取消收藏</span></a><i class="am-icon-shopping-cart"></i><a href="/goodspage/yuwan.do"><span class="ui-btn-loading-before buy">查看详情</span></a></div></div></div>';
				}
				if(num=="4"){
				    content.innerHTML+='<div class="s-item-wrap"><div class="s-item"><div class="s-pic"><a href="/goodspage/bread.do" class="s-pic-link"><img src="/images/mian220.png" alt="良品铺子蒸蛋糕软面包营养早餐面包小蛋糕零食点心糕点食品1000g" title="良品铺子蒸蛋糕软面包营养早餐面包小蛋糕零食点心糕点食品1000g" class="s-pic-img s-guess-item-img"></a></div><div class="s-info"><div class="s-title"><a href="/goodspage/bread.do" title="良品铺子蒸蛋糕软面包营养早餐面包小蛋糕零食">良品铺子蒸蛋糕软面包营养早餐面包小蛋糕零食</a></div><div class="s-price-box"><span class="s-price"><em class="s-price-sign">¥</em><em class="s-value">33.90</em></span><span class="s-history-price"><em class="s-price-sign">¥</em><em class="s-value">48.00</em></span></div></div><div class="s-tp"><a onclick="concelcollect(4)"><span class="ui-btn-loading-before">取消收藏</span></a><i class="am-icon-shopping-cart"></i><a href="/goodspage/bread.do"><span class="ui-btn-loading-before buy">查看详情</span></a></div></div></div>';
				}
				if(num=="5"){
				   content.innerHTML+='<div class="s-item-wrap"><div class="s-item"><div class="s-pic"><a href="/goodspage/zao.do" class="s-pic-link"><img src="/images/zao220.png" alt="良品铺子脆冬枣无核酥脆脆枣黄骅冬枣子红枣无核枣枣类果干零食" title="良品铺子脆冬枣无核酥脆脆枣黄骅冬枣子红枣无核枣枣类果干零食" class="s-pic-img s-guess-item-img"></a></div><div class="s-info"><div class="s-title"><a href="/goodspage/zao.do" title="良品铺子脆冬枣无核酥脆脆枣黄骅冬枣子红枣">良品铺子脆冬枣无核酥脆脆枣黄骅冬枣子红枣无核枣</a></div><div class="s-price-box"><span class="s-price"><em class="s-price-sign">¥</em><em class="s-value">19.90</em></span><span class="s-history-price"><em class="s-price-sign">¥</em><em class="s-value">38.00</em></span></div></div><div class="s-tp"><a onclick="concelcollect(5)"><span class="ui-btn-loading-before">取消收藏</span></a><i class="am-icon-shopping-cart"></i><a href="/goodspage/zao.do"><span class="ui-btn-loading-before buy">查看详情</span></a></div></div></div>';
				}
				if(num=="6"){
				    content.innerHTML+='<div class="s-item-wrap"><div class="s-item"><div class="s-pic"><a href="/goodspage/bull.do" class="s-pic-link"><img src="/images/beef220.png" alt="良品铺子牛肉粒五香味香辣牛肉干独立小包装特产零食风味小吃袋装" title="良品铺子牛肉粒五香味香辣牛肉干独立小包装特产零食风味小吃袋装" class="s-pic-img s-guess-item-img"></a></div><div class="s-info"><div class="s-title"><a href="/goodspage/bull.do" title="良品铺子牛肉粒五香味香辣牛肉干独立小包">良品铺子牛肉粒五香味香辣牛肉干独立小包装特产零</a></div><div class="s-price-box"><span class="s-price"><em class="s-price-sign">¥</em><em class="s-value">15.90</em></span><span class="s-history-price"><em class="s-price-sign">¥</em><em class="s-value">38.00</em></span></div></div><div class="s-tp"><a onclick="concelcollect(6)"><span class="ui-btn-loading-before">取消收藏</span></a><i class="am-icon-shopping-cart"></i><a href="/goodspage/bull.do"><span class="ui-btn-loading-before buy">查看详情</span></a></div></div></div>';
				}
				if(num=="7"){
				    content.innerHTML+='<div class="s-item-wrap"><div class="s-item"><div class="s-pic"><a href="/goodspage/yellowfish.do" class="s-pic-link"><img src="/images/fish220.png" alt="良品铺子香酥小黄鱼舟山特产香辣味小吃小黄鱼干零食即食海鲜袋装" title="4折抢购!十二生肖925银女戒指,时尚开口女戒" class="s-pic-img s-guess-item-img"></a></div><div class="s-info"><div class="s-title"><a href="/goodspage/yellowfish.do" title="良品铺子香酥小黄鱼舟山特产香辣味小吃">良品铺子香酥小黄鱼舟山特产香辣味小吃小黄鱼干零食</a></div><div class="s-price-box"><span class="s-price"><em class="s-price-sign">¥</em><em class="s-value">18.90</em></span><span class="s-history-price"><em class="s-price-sign">¥</em><em class="s-value">38.00</em></span></div></div><div class="s-tp"><a onclick="concelcollect(7)"><span class="ui-btn-loading-before">取消收藏</span></a><i class="am-icon-shopping-cart"></i><a href="/goodspage/yellowfish.do"><span class="ui-btn-loading-before buy">查看详情</span></a></div></div></div>';
				}
				if(num=='8'){
				    content.innerHTML+='<div class="s-item-wrap"><div class="s-item"><div class="s-pic"><a href="/goodspage/wangb.do" class="s-pic-link"><img src="/images/huafu220.png" alt="良品铺子奶香华夫饼干糕点面包 早餐食品点心零食小吃原味240g" title="良品铺子奶香华夫饼干糕点面包 早餐食品点心零食小吃原味240g" class="s-pic-img s-guess-item-img"></a></div><div class="s-info"><div class="s-title"><a href="/goodspage/wangb.do" title="良品铺子奶香华夫饼干糕点面包 早餐食品点心">良品铺子奶香华夫饼干糕点面包 早餐食品点心</a></div><div class="s-price-box"><span class="s-price"><em class="s-price-sign">¥</em><em class="s-value">27.90</em></span><span class="s-history-price"><em class="s-price-sign">¥</em><em class="s-value">38.00</em></span></div></div><div class="s-tp"><a onclick="concelcollect(8)"><span class="ui-btn-loading-before">取消收藏</span></a><i class="am-icon-shopping-cart"></i><a href="/goodspage/wangb.do"><span class="ui-btn-loading-before buy">查看详情</span></a></div></div></div>';
				}
				if(num=='9'){
				    content.innerHTML+='<div class="s-item-wrap"><div class="s-item"><div class="s-pic"><a href="/goodspage/duck.do" class="s-pic-link"><img src="/images/yabo220.png" alt="良品铺子麻辣鸭脖子 甜辣味真空小包装香辣卤味零食休闲小吃熟食" title="良品铺子麻辣鸭脖子 甜辣味真空小包装香辣卤味零食休闲小吃熟食" class="s-pic-img s-guess-item-img"></a></div><div class="s-info"><div class="s-title"><a href="/goodspage/duck.do" title="良品铺子麻辣鸭脖子 甜辣味真空小包装香辣卤味零食">良品铺子麻辣鸭脖子 甜辣味真空小包装香辣卤味</a></div><div class="s-price-box"><span class="s-price"><em class="s-price-sign">¥</em><em class="s-value">18.90</em></span><span class="s-history-price"><em class="s-price-sign">¥</em><em class="s-value">38.00</em></span></div></div><div class="s-tp"><a onclick="concelcollect(9)"><span class="ui-btn-loading-before">取消收藏</span></a><i class="am-icon-shopping-cart"></i><a href="/goodspage/duck.do"><span class="ui-btn-loading-before buy">查看详情</span></a></div></div></div>';
				}
				if(num=='10'){
                    content.innerHTML+='<div class="s-item-wrap"><div class="s-item"><div class="s-pic"><a href="/goodspage/saurce.do" class="s-pic-link"><img src="/images/chang220.png" alt="良品铺子肉枣小香肠好吃的零食小吃" title="良品铺子肉枣小香肠好吃的零食小吃" class="s-pic-img s-guess-item-img"></a></div><div class="s-info"><div class="s-title"><a href="/goodspage/saurce.do" title="良品铺子肉枣小香肠好吃的零食小吃">良品铺子肉枣小香肠好吃的零食小吃</a></div><div class="s-price-box"><span class="s-price"><em class="s-price-sign">¥</em><em class="s-value">29.90</em></span><span class="s-history-price"><em class="s-price-sign">¥</em><em class="s-value">48.00</em></span></div></div><div class="s-tp"><a onclick="concelcollect(10)"><span class="ui-btn-loading-before">取消收藏</span></a><i class="am-icon-shopping-cart"></i><a href="/goodspage/saurce.do"><span class="ui-btn-loading-before buy">查看详情</span></a></div></div></div>';
                }
                if(num=='11'){
				    content.innerHTML+='<div class="s-item-wrap"><div class="s-item"><div class="s-pic"><a href="/goodspage/tui.do" class="s-pic-link"><img src="/images/tui220.png" alt="奥尔良鸡腿零食熟食小吃 " title="奥尔良鸡腿零食熟食小吃 " class="s-pic-img s-guess-item-img"></a></div><div class="s-info"><div class="s-title"><a href="/goodspage/tui.do" title="奥尔良鸡腿零食熟食小吃 ">奥尔良鸡腿零食熟食小吃 </a></div><div class="s-price-box"><span class="s-price"><em class="s-price-sign">¥</em><em class="s-value">24.90</em></span><span class="s-history-price"><em class="s-price-sign">¥</em><em class="s-value">48.00</em></span></div></div><div class="s-tp"><a onclick="concelcollect(11)"><span class="ui-btn-loading-before">取消收藏</span></a><i class="am-icon-shopping-cart"></i><a href="/goodspage/tui.do"><span class="ui-btn-loading-before buy">查看详情</span></a></div></div></div>';
				}
				if(num=='12'){
                    content.innerHTML+='<div class="s-item-wrap"><div class="s-item"><div class="s-pic"><a href="/goodspage/jeal.do" class="s-pic-link"><img src="/images/jeal220.png" alt="芒果果肉果冻布丁零食" title="芒果果肉果冻布丁零食" class="s-pic-img s-guess-item-img"></a></div><div class="s-info"><div class="s-title"><a href="/goodspage/jeal.do" title="芒果果肉果冻布丁零食 ">芒果果肉果冻布丁零食</a></div><div class="s-price-box"><span class="s-price"><em class="s-price-sign">¥</em><em class="s-value">13.90</em></span><span class="s-history-price"><em class="s-price-sign">¥</em><em class="s-value">48.00</em></span></div></div><div class="s-tp"><a onclick="concelcollect(12)"><span class="ui-btn-loading-before">取消收藏</span></a><i class="am-icon-shopping-cart"></i><a href="/goodspage/jeal.do"><span class="ui-btn-loading-before buy">查看详情</span></a></div></div></div>';
				}

            }

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

							<div class="search-bar pr">
								<a name="index_none_header_sysc" href="#"></a>
								<form>
									<input id="searchInput" name="index_none_header_sysc" type="text" placeholder="搜索" autocomplete="off">
									<input id="ai-topsearch" class="submit am-btn" value="搜索" index="1" type="button">
								</form>
							</div>
						</div>

						<div class="clear"></div>
					</div>
				</div>
			</article>
		</header>
			<b class="line"></b>
		<div class="center">
			<div class="col-main">
				<div class="main-wrap">

					<div class="user-collection">
						<!--标题 -->
						<div class="am-cf am-padding">
							<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">我的收藏</strong> / <small>My&nbsp;Collection</small></div>
						</div>
						<hr/>

						<div class="you-like">
							<div class="s-bar">
								我的收藏
								<a class="am-badge am-badge-danger am-round">降价</a>
								<a class="am-badge am-badge-danger am-round">下架</a>
							</div>
							<div class="s-content" id="contents">
							</div>
						</div>

					</div>

				</div>
				<!--底部-->
				<div class="footer">
					<div class="footer-hd">
						<p>
							<a href="/mainpage/home.do">商城首页</a>
							<b>|</b>
							<a href="/mainpage/shopcar.do">购物车</a>

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
							<li class="active"> <a href="/mainpage/collection.do">收藏</a></li>

						</ul>
					</li>

				</ul>

			</aside>
		</div>
<script type="text/javascript">
	function concelcollect(num) {
		$.ajax({
		    type:'post',
			url:'/mainpage/deletecollect.do',
			dataType:'json',
			data:{"goodid":num},
			success:function () {
				location.reload();
            },error:function () {
				alert("网络错误");
            }
		});
    }

</script>
	</body>

</html>