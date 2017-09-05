<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">

		<title>订单管理</title>

		<link href="/css/admin.css" rel="stylesheet" type="text/css">
		<link href="/css/amazeui.css" rel="stylesheet" type="text/css">

		<link href="/css/personal.css" rel="stylesheet" type="text/css">
		<link href="/css/orstyle.css" rel="stylesheet" type="text/css">

		<script src="/js/jquery.js"></script>
		<script src="/js/amazeui.js"></script>
		<%--<script type="text/javascript">--%>
			<%--$.ajax({--%>
				<%--type:'post',--%>
				<%--url:'/mainpage/ergodicorders.do',--%>
				<%--dataType:'json',--%>
				<%--success:function (data) {--%>
					<%--for(var i=0;i<data.orderlist.length;i++){--%>
						<%--appenditem(data.orderlist[i]);--%>
					<%--}--%>


                <%--},error:function () {--%>
					<%--alert("网络异常");--%>
                <%--}--%>

			<%--});--%>

			<%--function  appenditem(itemid) {--%>
			    <%--$.ajax({--%>
			        <%--type:'post',--%>
					<%--url:'/mainpage/ergodicorder2.do',--%>
					<%--dataType:'json',--%>
					<%--data:{"orderid":itemid},--%>
					<%--success:function (data) {--%>
			            <%--for(var i=0;i<data.otime.length;i++){--%>
			                <%--insertpage(data.ogid[i],data.oprice[i],data.onum[i],data.otime);--%>
						<%--}--%>


                    <%--},error:function () {--%>
						<%--alert("网络错误");--%>
                    <%--}--%>
				<%--});--%>
            <%--}--%>
            <%--function insertpage(id,price,num,time) {--%>
			    <%--if(id=="1"){--%>
			        <%----%>
				<%--}--%>
				<%----%>
            <%--}--%>
		<%--</script>--%>

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

					<div class="user-order">

						<!--标题 -->
						<div class="am-cf am-padding">
							<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">订单管理</strong> / <small>Order</small></div>
						</div>
						<hr/>

						<div class="am-tabs am-tabs-d2 am-margin" data-am-tabs>

							<ul class="am-avg-sm-5 am-tabs-nav am-nav am-nav-tabs">
								<li class="am-active"><a href="#tab1">所有订单</a></li>
							</ul>

							<div class="am-tabs-bd">
								<div class="am-tab-panel am-fade am-in am-active" id="tab1">
									<div class="order-top">
										<div class="th th-item">
											<td class="td-inner">商品</td>
										</div>
										<div class="th th-price">
											<td class="td-inner">单价</td>
										</div>
										<div class="th th-number">
											<td class="td-inner">数量</td>
										</div>
										<div class="th th-operation">
											<td class="td-inner">&nbsp;</td>
										</div>
										<div class="th th-amount">
											<td class="td-inner">合计</td>
										</div>
										<div class="th th-status">
											<td class="td-inner">交易状态</td>
										</div>
										<div class="th th-change">
											<td class="td-inner">交易操作</td>
										</div>
									</div>

									<div class="order-main">
										<div class="order-list">
											
											<!--交易成功-->

											<div class="order-status5">
												<div class="order-title">
													<div class="dd-num">订单编号：<a id="orderid">1601430</a></div>
													<span>成交时间：2015-12-20</span>
												</div>


												<div class="order-content"><div class="order-left">


													<ul class="item-list">
													<li class="td td-item">
														<div class="item-pic"><a href="#" class="J_MakePoint">
															<img src="/images/kouhong.jpg_80x80.jpg" class="itempic J_ItemImg"></a></div>
														<div class="item-info"><div class="item-basic-info"><a href="#">
															<p>美康粉黛醉美唇膏 持久保湿滋润防水不掉色</p>
															<p class="info-little">颜色：12#川南玛瑙<br/>包装：裸装 </p>
														</a></div></div></li>
													<li class="td td-price"><div class="item-price">333.00</div></li>
													<li class="td td-number"><div class="item-number"><span>×</span>2</div>
													</li>
													<li class="td td-operation">
														<div class="item-operation"></div></li>

													</ul>


												</div>

													<div class="order-right"><li class="td td-amount"><div class="item-amount">合计：676.00<p>含运费：<span>0.00</span></p></div></li><div class="move-right"><li class="td td-status"><div class="item-status"><p class="Mystatus">交易成功</p><p class="order-info">货到付款</p><p class="order-info">已签收</p></div></li><li class="td td-change"><div class="am-btn am-btn-danger anniu">删除订单</div></li></div></div>



													</div>
											</div>


											<!--交易失败-->



											<!--不同状态订单-->
											<div class="order-status3">
												<div class="order-title">
													<div class="dd-num">订单编号：<a href="javascript:;">1601430</a></div>
													<span>成交时间：2017-2-20</span>

												</div>
												<div class="order-content">
													<div class="order-left">



														<ul class="item-list">
															<li class="td td-item">
																<div class="item-pic">
																	<a href="#" class="J_MakePoint">
																		<img src="/images/kouhong.jpg_80x80.jpg" class="itempic J_ItemImg">
																	</a>
																</div>
																<div class="item-info">
																	<div class="item-basic-info">
																		<a href="#">
																			<p>美康粉黛醉美唇膏 持久保湿滋润防水不掉色</p>
																			<p class="info-little">颜色：12#川南玛瑙
																				<br/>包装：裸装 </p>
																		</a>
																	</div>
																</div>
															</li>
															<li class="td td-price">
																<div class="item-price">
																	333.00
																</div>
															</li>
															<li class="td td-number">
																<div class="item-number">
																	<span>×</span>2
																</div>
															</li>

														</ul>




														<ul class="item-list">
															<li class="td td-item">
																<div class="item-pic">
																	<a href="#" class="J_MakePoint">
																		<img src="/images/kouhong.jpg_80x80.jpg" class="itempic J_ItemImg">
																	</a>
																</div>
																<div class="item-info">
																	<div class="item-basic-info">
																		<a href="#">
																			<p>美康粉黛醉美唇膏 持久保湿滋润防水不掉色</p>
																			<p class="info-little">颜色：12#川南玛瑙
																				<br/>包装：裸装 </p>
																		</a>
																	</div>
																</div>
															</li>
															<li class="td td-price">
																<div class="item-price">
																	333.00
																</div>
															</li>
															<li class="td td-number">
																<div class="item-number">
																	<span>×</span>2
																</div>
															</li>

														</ul>







														<ul class="item-list">
															<li class="td td-item">
																<div class="item-pic">
																	<a href="#" class="J_MakePoint">
																		<img src="/images/62988.jpg_80x80.jpg" class="itempic J_ItemImg">
																	</a>
																</div>
																<div class="item-info">
																	<div class="item-basic-info">
																		<a href="#">
																			<p>礼盒袜子女秋冬 纯棉袜加厚 韩国可爱 </p>
																			<p class="info-little">颜色分类：李清照
																				<br/>尺码：均码</p>
																		</a>
																	</div>
																</div>
															</li>
															<li class="td td-price">
																<div class="item-price">
																	333.00
																</div>
															</li>
															<li class="td td-number">
																<div class="item-number">
																	<span>×</span>2
																</div>
															</li>

														</ul>



													</div>


													<div class="order-right">
														<li class="td td-amount">
															<div class="item-amount">
																合计：676.00
																<p>含运费：<span>10.00</span></p>
															</div>
														</li>
														<div class="move-right">
															<li class="td td-status">
																<div class="item-status">
																	<p class="Mystatus">交易成功</p>
																	<p class="order-info">货到付款</p>
																	<p class="order-info">已签收</p>
																</div>
															</li>
															<li class="td td-change">
																<div class="am-btn am-btn-danger anniu">
																	删除订单</div>
															</li>
														</div>
													</div>

												</div>
												</div>
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

							<a href="/mainpage/home.do">商城首页</a>
							<b>|</b>
							<a href="/mainpage/shopcart.do">购物车</a>

						</p>
					</div>
					<div class="footer-bd">
						<p>
							<em>© 2016-2026 工大的名义 版权所有.</em>
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
						<a href="#">个人资料</a>
						<ul>
							<li> <a href="/mainpage/information.do">个人信息</a></li>
							<li> <a href="/mainpage/safety.do">安全设置</a></li>
							<li> <a href="/mainpage/address.do">收货地址</a></li>
						</ul>
					</li>
					<li class="person">
						<a href="#">我的交易</a>
						<ul>
							<li class="active"><a href="/mainpage/order.do">订单管理</a></li>
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