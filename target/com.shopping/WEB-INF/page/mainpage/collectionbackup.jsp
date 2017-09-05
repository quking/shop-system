<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">

		<title>我的收藏</title>

		<link href="/css/admin.css" rel="stylesheet" type="text/css">
		<link href="/css/amazeui.css" rel="stylesheet" type="text/css">

		<link href="/css/personal.css" rel="stylesheet" type="text/css">
		<link href="/css/colstyle.css" rel="stylesheet" type="text/css">

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
								<div class="menu-hd">
									<a href="#" target="_top" class="h">亲，请登录</a>
									<a href="#" target="_top">免费注册</a>
								</div>
							</div>
						</ul>
						<ul class="message-r">
							<div class="topMessage home">
								<div class="menu-hd"><a href="#" target="_top" class="h">商城首页</a></div>
							</div>
							<div class="topMessage my-shangcheng">
								<div class="menu-hd MyShangcheng"><a href="#" target="_top"><i class="am-icon-user am-icon-fw"></i>个人中心</a></div>
							</div>
							<div class="topMessage mini-cart">
								<div class="menu-hd"><a id="mc-menu-hd" href="#" target="_top"><i class="am-icon-shopping-cart  am-icon-fw"></i><span>购物车</span><strong id="J_MiniCartNum" class="h">0</strong></a></div>
							</div>
							<div class="topMessage favorite">
								<div class="menu-hd"><a href="#" target="_top"><i class="am-icon-heart am-icon-fw"></i><span>收藏夹</span></a></div>
						</ul>
						</div>

						<!--悬浮搜索框-->

						<div class="nav white">
							<div class="logoBig">
								<li><img src="../images/logobig.png" /></li>
							</div>

							<div class="search-bar pr">
								<a name="index_none_header_sysc" href="#"></a>
								<form>
									<input id="searchInput" name="index_none_header_sysc" type="text" placeholder="搜索" autocomplete="off">
									<input id="ai-topsearch" class="submit am-btn" value="搜索" index="1" type="submit">
								</form>
							</div>
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
								<li class="index"><a href="#">首页</a></li>
                                <li class="qc"><a href="#">闪购</a></li>
                                <li class="qc"><a href="#">限时抢</a></li>
                                <li class="qc"><a href="#">团购</a></li>
                                <li class="qc last"><a href="#">大包装</a></li>
							</ul>
						    <div class="nav-extra">
						    	<i class="am-icon-user-secret am-icon-md nav-user"></i><b></b>我的福利
						    	<i class="am-icon-angle-right" style="padding-left: 10px;"></i>
						    </div>
						</div>
			</div>
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
							<div class="s-content">



								<div class="s-item-wrap"><div class="s-item"><div class="s-pic"><a href="/goodspage/zao.do" class="s-pic-link"><img src="/images/zao.png" alt="良品铺子脆冬枣无核酥脆脆枣黄骅冬枣子红枣无核枣枣类果干零食" title="良品铺子脆冬枣无核酥脆脆枣黄骅冬枣子红枣无核枣枣类果干零食" class="s-pic-img s-guess-item-img"></a></div><div class="s-info"><div class="s-title"><a href="/goodspage/zao.do" title="良品铺子脆冬枣无核酥脆脆枣黄骅冬枣子红枣无核枣枣类果干零食">良品铺子脆冬枣无核酥脆脆枣黄骅冬枣子红枣无核枣枣类果干零食</a></div><div class="s-price-box"><span class="s-price"><em class="s-price-sign">¥</em><em class="s-value">19.90</em></span><span class="s-history-price"><em class="s-price-sign">¥</em><em class="s-value">38.00</em></span></div></div><div class="s-tp"><a onclick="concelcollect(5)"><span class="ui-btn-loading-before">取消收藏</span></a><i class="am-icon-shopping-cart"></i><a href="/goodspage/zao.do"><span class="ui-btn-loading-before buy">查看详情</span></a></div></div></div>

								<div class="s-item-wrap">
									<div class="s-item">

										<div class="s-pic">
											<a href="#" class="s-pic-link">
												<img src="/images/0-item_pic.jpg_220x220.jpg" alt="包邮s925纯银项链女吊坠短款锁骨链颈链日韩猫咪银饰简约夏配饰" title="包邮s925纯银项链女吊坠短款锁骨链颈链日韩猫咪银饰简约夏配饰" class="s-pic-img s-guess-item-img">
											</a>
										</div>
										<div class="s-info">
											<div class="s-title"><a href="#" title="包邮s925纯银项链女吊坠短款锁骨链颈链日韩猫咪银饰简约夏配饰">包邮s925纯银项链女吊坠短款锁骨链颈链日韩猫咪银饰简约夏配饰</a></div>
											<div class="s-price-box">
												<span class="s-price"><em class="s-price-sign">¥</em><em class="s-value">42.50</em></span>
												<span class="s-history-price"><em class="s-price-sign">¥</em><em class="s-value">68.00</em></span>
											</div>
											<div class="s-extra-box">
												<span class="s-comment">好评: 98.03%</span>
												<span class="s-sales">月销: 219</span>
											</div>
										</div>
										<div class="s-tp">
											<span class="ui-btn-loading-before">找相似</span>
											<i class="am-icon-shopping-cart"></i>
											<span class="ui-btn-loading-before buy">加入购物车</span>
											<p>
												<a href="javascript:;" class="c-nodo J_delFav_btn">取消收藏</a>
											</p>
										</div>
									</div>
								</div>



								<div class="s-item-wrap">
									<div class="s-item">

										<div class="s-pic">
											<a href="#" class="s-pic-link">
												<img src="../images/1-item_pic.jpg_220x220.jpg" alt="s925纯银千纸鹤锁骨链短款简约时尚韩版素银项链小清新秋款女配饰" title="s925纯银千纸鹤锁骨链短款简约时尚韩版素银项链小清新秋款女配饰" class="s-pic-img s-guess-item-img">
											</a>
										</div>
										<div class="s-info">
											<div class="s-title"><a href="#" title="s925纯银千纸鹤锁骨链短款简约时尚韩版素银项链小清新秋款女配饰">s925纯银千纸鹤锁骨链短款简约时尚韩版素银项链小清新秋款女配饰</a></div>
											<div class="s-price-box">
												<span class="s-price"><em class="s-price-sign">¥</em><em class="s-value">49.90</em></span>
												<span class="s-history-price"><em class="s-price-sign">¥</em><em class="s-value">88.00</em></span>
											</div>

										</div>
										<div class="s-tp">
											<span class="ui-btn-loading-before">找相似</span>
											<i class="am-icon-shopping-cart"></i>
											<span class="ui-btn-loading-before buy">加入购物车</span>

										</div>
									</div>
								</div>








								<div class="s-item-wrap"><div class="s-item"><div class="s-pic"><a href="/goodspage/zao.do" class="s-pic-link"><img src="/images/zao.png" alt="良品铺子脆冬枣无核酥脆脆枣黄骅冬枣子红枣无核枣枣类果干零食" title="良品铺子脆冬枣无核酥脆脆枣黄骅冬枣子红枣无核枣枣类果干零食" class="s-pic-img s-guess-item-img"></a></div><div class="s-info"><div class="s-title"><a href="/goodspage/zao.do" title="良品铺子脆冬枣无核酥脆脆枣黄骅冬枣子红枣无核枣枣类果干零食">良品铺子脆冬枣无核酥脆脆枣黄骅冬枣子红枣无核枣枣类果干零食</a></div><div class="s-price-box"><span class="s-price"><em class="s-price-sign">¥</em><em class="s-value">19.90</em></span><span class="s-history-price"><em class="s-price-sign">¥</em><em class="s-value">38.00</em></span></div></div><div class="s-tp"><a onclick="concelcollect(5)"><span class="ui-btn-loading-before">取消收藏</span></a><i class="am-icon-shopping-cart"></i><a href="/goodspage/zao.do"><span class="ui-btn-loading-before buy">查看详情</span></a></div></div></div>




								<div class="s-item-wrap"><div class="s-item"><div class="s-pic"><a href="/goodspage/bull.do" class="s-pic-link"><img src="/images/bull.png" alt="良品铺子牛肉粒五香味香辣牛肉干独立小包装特产零食风味小吃袋装" title="良品铺子牛肉粒五香味香辣牛肉干独立小包装特产零食风味小吃袋装" class="s-pic-img s-guess-item-img"></a></div><div class="s-info"><div class="s-title"><a href="/goodspage/bull.do" title="良品铺子牛肉粒五香味香辣牛肉干独立小包装特产零食风味小吃袋装">良品铺子牛肉粒五香味香辣牛肉干独立小包装特产零食风味小吃袋装</a></div><div class="s-price-box"><span class="s-price"><em class="s-price-sign">¥</em><em class="s-value">15.90</em></span><span class="s-history-price"><em class="s-price-sign">¥</em><em class="s-value">38.00</em></span></div></div><div class="s-tp"><a onclick="concelcollect(6)"><span class="ui-btn-loading-before">取消收藏</span></a><i class="am-icon-shopping-cart"></i><a href="/goodspage/bull.do"><span class="ui-btn-loading-before buy">查看详情</span></a></div></div></div>






								<div class="s-item-wrap">
									<div class="s-item">

										<div class="s-pic">
											<a href="#" class="s-pic-link">
												<img src="/images/cheshi.png" alt="s925纯银千纸鹤锁骨链短款简约时尚韩版素银项链小清新秋款女配饰" title="s925纯银千纸鹤锁骨链短款简约时尚韩版素银项链小清新秋款女配饰" class="s-pic-img s-guess-item-img">
											</a>
										</div>
										<div class="s-info">
											<div class="s-title"><a href="#" title="s925纯银千纸鹤锁骨链短款简约时尚韩版素银项链小清新秋款女配饰">s925纯银千纸鹤锁骨链短款简约时尚韩版素银项链小清新秋款女配饰</a></div>
											<div class="s-price-box">
												<span class="s-price"><em class="s-price-sign">¥</em><em class="s-value">49.90</em></span>
												<span class="s-history-price"><em class="s-price-sign">¥</em><em class="s-value">88.00</em></span>
											</div>
										</div>
										<div class="s-tp">
											<span class="ui-btn-loading-before">找相似</span>
											<i class="am-icon-shopping-cart"></i>
											<span class="ui-btn-loading-before buy">加入购物车</span>

										</div>
									</div>
								</div>


								<div class="s-item-wrap"><div class="s-item"><div class="s-pic"><a href="/goodspage/zao.do" class="s-pic-link"><img src="/images/zao220.png" alt="良品铺子脆冬枣无核酥脆脆枣黄骅冬枣子红枣无核枣枣类果干零食" title="良品铺子脆冬枣无核酥脆脆枣黄骅冬枣子红枣无核枣枣类果干零食" class="s-pic-img s-guess-item-img"></a></div><div class="s-info"><div class="s-title"><a href="/goodspage/zao.do" title="良品铺子脆冬枣无核酥脆脆枣黄骅冬枣子红枣无核枣枣类果干零食">良品铺子脆冬枣无核酥脆脆枣黄骅冬枣子红枣无核枣枣类果干零食</a></div><div class="s-price-box"><span class="s-price"><em class="s-price-sign">¥</em><em class="s-value">19.90</em></span><span class="s-history-price"><em class="s-price-sign">¥</em><em class="s-value">38.00</em></span></div></div><div class="s-tp"><a onclick="concelcollect(5)"><span class="ui-btn-loading-before">取消收藏</span></a><i class="am-icon-shopping-cart"></i><a href="/goodspage/zao.do"><span class="ui-btn-loading-before buy">查看详情</span></a></div></div></div>

								<div class="s-item-wrap"><div class="s-item"><div class="s-pic"><a href="/goodspage/bull.do" class="s-pic-link"><img src="/images/bull.png" alt="良品铺子牛肉粒五香味香辣牛肉干独立小包装特产零食风味小吃袋装" title="良品铺子牛肉粒五香味香辣牛肉干独立小包装特产零食风味小吃袋装" class="s-pic-img s-guess-item-img"></a></div><div class="s-info"><div class="s-title"><a href="/goodspage/bull.do" title="良品铺子牛肉粒五香味香辣牛肉干独立小包装特产零食风味小吃袋装">良品铺子牛肉粒五香味香辣牛肉干独立小包装特产零食风味小吃袋装</a></div><div class="s-price-box"><span class="s-price"><em class="s-price-sign">¥</em><em class="s-value">15.90</em></span><span class="s-history-price"><em class="s-price-sign">¥</em><em class="s-value">38.00</em></span></div><div class="s-extra-box"><span class="s-comment">好评: 99.74%</span><span class="s-sales">月销: 69</span></div></div><div class="s-tp"><a onclick="concelcollect(6)"><span class="ui-btn-loading-before">取消收藏</span></a><i class="am-icon-shopping-cart"></i><a href="/goodspage/bull.do"><span class="ui-btn-loading-before buy">查看详情</span></a></div></div></div>
								<div class="s-item-wrap"><div class="s-item"><div class="s-pic"><a href="/goodspage/yellowfish.do" class="s-pic-link"><img src="/images/fish220.png" alt="良品铺子香酥小黄鱼舟山特产香辣味小吃小黄鱼干零食即食海鲜袋装" title="4折抢购!十二生肖925银女戒指,时尚开口女戒" class="s-pic-img s-guess-item-img"></a></div><div class="s-info"><div class="s-title"><a href="/goodspage/yellowfish.do" title="良品铺子香酥小黄鱼舟山特产香辣味小吃小黄鱼干零食即食海鲜袋装">良品铺子香酥小黄鱼舟山特产香辣味小吃小黄鱼干零食即食海鲜袋装</a></div><div class="s-price-box"><span class="s-price"><em class="s-price-sign">¥</em><em class="s-value">18.90</em></span><span class="s-history-price"><em class="s-price-sign">¥</em><em class="s-value">38.00</em></span></div></div><div class="s-tp"><a onclick="concelcollect(7)"><span class="ui-btn-loading-before">取消收藏</span></a><i class="am-icon-shopping-cart"></i><a href="/goodspage/yellowfish.do"><span class="ui-btn-loading-before buy">查看详情</span></a></div></div></div>
								<div class="s-item-wrap"><div class="s-item"><div class="s-pic"><a href="/goodspage/wangb.do" class="s-pic-link"><img src="/images/huafu220.png" alt="良品铺子奶香华夫饼干糕点面包 早餐食品点心零食小吃原味240g" title="良品铺子奶香华夫饼干糕点面包 早餐食品点心零食小吃原味240g" class="s-pic-img s-guess-item-img"></a></div><div class="s-info"><div class="s-title"><a href="/goodspage/wangb.do" title="良品铺子奶香华夫饼干糕点面包 早餐食品点心零食小吃原味240g">良品铺子奶香华夫饼干糕点面包 早餐食品点心零食小吃原味240g</a></div><div class="s-price-box"><span class="s-price"><em class="s-price-sign">¥</em><em class="s-value">27.90</em></span><span class="s-history-price"><em class="s-price-sign">¥</em><em class="s-value">38.00</em></span></div></div><div class="s-tp"><a onclick="concelcollect(8)"><span class="ui-btn-loading-before">取消收藏</span></a><i class="am-icon-shopping-cart"></i><a href="/goodspage/wangb.do"><span class="ui-btn-loading-before buy">查看详情</span></a></div></div></div>
								<div class="s-item-wrap"><div class="s-item"><div class="s-pic"><a href="/goodspage/wangb.do" class="s-pic-link"><img src="/images/huafu220.png" alt="良品铺子奶香华夫饼干糕点面包 早餐食品点心零食小吃原味240g" title="良品铺子奶香华夫饼干糕点面包 早餐食品点心零食小吃原味240g" class="s-pic-img s-guess-item-img"></a></div><div class="s-info"><div class="s-title"><a href="/goodspage/wangb.do" title="良品铺子奶香华夫饼干糕点面包 早餐食品点心零食小吃原味240g">良品铺子奶香华夫饼干糕点面包 早餐食品点心零食小吃原味240g</a></div><div class="s-price-box"><span class="s-price"><em class="s-price-sign">¥</em><em class="s-value">27.90</em></span><span class="s-history-price"><em class="s-price-sign">¥</em><em class="s-value">38.00</em></span></div></div><div class="s-tp"><a onclick="concelcollect(8)"><span class="ui-btn-loading-before">取消收藏</span></a><i class="am-icon-shopping-cart"></i><a href="/goodspage/wangb.do"><span class="ui-btn-loading-before buy">查看详情</span></a></div></div></div>
								<div class="s-item-wrap"><div class="s-item"><div class="s-pic"><a href="/goodspage/wangb.do" class="s-pic-link"><img src="/images/huafu220.png" alt="良品铺子奶香华夫饼干糕点面包 早餐食品点心零食小吃原味240g" title="良品铺子奶香华夫饼干糕点面包 早餐食品点心零食小吃原味240g" class="s-pic-img s-guess-item-img"></a></div><div class="s-info"><div class="s-title"><a href="/goodspage/wangb.do" title="良品铺子奶香华夫饼干糕点面包 早餐食品点心零食小吃原味240g">良品铺子奶香华夫饼干糕点面包 早餐食品点心零食小吃原味240g</a></div><div class="s-price-box"><span class="s-price"><em class="s-price-sign">¥</em><em class="s-value">27.90</em></span><span class="s-history-price"><em class="s-price-sign">¥</em><em class="s-value">38.00</em></span></div></div><div class="s-tp"><a onclick="concelcollect(8)"><span class="ui-btn-loading-before">取消收藏</span></a><i class="am-icon-shopping-cart"></i><a href="/goodspage/wangb.do"><span class="ui-btn-loading-before buy">查看详情</span></a></div></div></div>



								<div class="s-item-wrap">
									<div class="s-item">

										<div class="s-pic">
											<a href="#" class="s-pic-link">
												<img src="../images/-0-saturn_solar.jpg_220x220.jpg" alt="4折抢购!十二生肖925银女戒指,时尚开口女戒" title="4折抢购!十二生肖925银女戒指,时尚开口女戒" class="s-pic-img s-guess-item-img">
											</a>
										</div>
										<div class="s-info">
											<div class="s-title"><a href="#" title="4折抢购!十二生肖925银女戒指,时尚开口女戒">4折抢购!十二生肖925银女戒指,时尚开口女戒</a></div>
											<div class="s-price-box">
												<span class="s-price"><em class="s-price-sign">¥</em><em class="s-value">378.00</em></span>
												<span class="s-history-price"><em class="s-price-sign">¥</em><em class="s-value">1888.00</em></span>
											</div>
											<div class="s-extra-box">
												<span class="s-comment">好评: 99.93%</span>
												<span class="s-sales">月销: 278</span>
											</div>
										</div>
										<div class="s-tp">
											<span class="ui-btn-loading-before">找相似</span>
											<i class="am-icon-shopping-cart"></i>
											<span class="ui-btn-loading-before buy">加入购物车</span>
											<p>
												<a href="javascript:;" class="c-nodo J_delFav_btn">取消收藏</a>
											</p>
										</div>
									</div>
								</div>

							</div>


						</div>

					</div>

				</div>
				<!--底部-->
				<div class="footer">
					<div class="footer-hd">
						<p>
							<a href="#">恒望科技</a>
							<b>|</b>
							<a href="#">商城首页</a>
							<b>|</b>
							<a href="#">支付宝</a>
							<b>|</b>
							<a href="#">物流</a>
						</p>
					</div>
					<div class="footer-bd">
						<p>
							<a href="#">关于恒望</a>
							<a href="#">合作伙伴</a>
							<a href="#">联系我们</a>
							<a href="#">网站地图</a>
							<em>© 2015-2025 Hengwang.com 版权所有. 更多模板 <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></em>
						</p>
					</div>
				</div>
			</div>

			<aside class="menu">
				<ul>
					<li class="person">
						<a href="index.html">个人中心</a>
					</li>
					<li class="person">
						<a href="#">个人资料</a>
						<ul>
							<li> <a href="information.html">个人信息</a></li>
							<li> <a href="safety.html">安全设置</a></li>
							<li> <a href="address.html">收货地址</a></li>
						</ul>
					</li>
					<li class="person">
						<a href="#">我的交易</a>
						<ul>
							<li><a href="order.html">订单管理</a></li>
							<li> <a href="change.html">退款售后</a></li>
						</ul>
					</li>
					<li class="person">
						<a href="#">我的资产</a>
						<ul>
							<li> <a href="coupon.html">优惠券 </a></li>
							<li> <a href="bonus.html">红包</a></li>
							<li> <a href="bill.html">账单明细</a></li>
						</ul>
					</li>

					<li class="person">
						<a href="#">我的小窝</a>
						<ul>
							<li class="active"> <a href="collection.html">收藏</a></li>
							<li> <a href="foot.html">足迹</a></li>
							<li> <a href="comment.html">评价</a></li>
							<li> <a href="news.html">消息</a></li>
						</ul>
					</li>

				</ul>

			</aside>
		</div>

	</body>

</html>