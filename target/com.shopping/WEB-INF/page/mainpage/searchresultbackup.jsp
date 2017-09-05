<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

		<title>搜索页面</title>

		<link href="/css/amazeui.css" rel="stylesheet" type="text/css" />
		<link href="/css/admin.css" rel="stylesheet" type="text/css" />

		<link href="/css/demo.css" rel="stylesheet" type="text/css" />

		<link href="/css/seastyle.css" rel="stylesheet" type="text/css" />

		<script type="text/javascript" src="/js/jquery-1.7.2.min.js"></script>
		<script type="text/javascript" src="/js/script.js"></script>
		<script type="text/javascript">
			$.ajax({
			   type:'post',
				url:'/mainpage/showresult.do',
				dataType:'json',
				success:function (data) {
			       for(var i=0;i<data.arrays.length;i++){
			           appends(data.arrays[i]);
				   }
                },error:function () {
				alert("网络异常");
                }
			});
			function appends(num){
			    var item=document.getElementById("project");
			    if(num=="1"){
			        item.innerHTML="<i><div class="i-pic limit"> <img src="/images/imgsearch1.jpg" /><a href="/goodspage/introduction4.do"><p class="title fl">【良品铺子旗舰店】手剥松子218g 坚果炒货零食新货巴西松子包邮</p></a> <p class="price fl"><b>¥</b><strong>56.90</strong></p><p class="number fl">销量<span>19010</span> </p> </div></i>";
				}

			}
		</script>
	</head>

	<body>

		<!--顶部导航条 -->
		<div class="am-container header">
			<ul class="message-l">
				<div class="topMessage">
					<div class="menu-hd">
						<a href="/mainpage/login.do" target="_top" class="h">亲，请登录</a>
						<a href="/mainpage/register.do" target="_top">免费注册</a>
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
						<input id="ai-topsearch" class="submit am-btn"  value="搜索" index="1" type="submit">
					</form>
				</div>
			</div>

			<div class="clear"></div>
			<b class="line"></b>
           <div class="search">
			<div class="search-list">
			<div class="nav-table">
					   <div class="long-title"><span class="all-goods">全部分类</span></div>
					   <div class="nav-cont">
							<ul>
								<li class="index"><a href="/mainpage/home.do">首页</a></li>
                                <li class="qc"><a href="#">闪购</a></li>
                                <li class="qc"><a href="#">限时抢</a></li>
                                <li class="qc"><a href="#">团购</a></li>
                                <li class="qc last"><a href="#">大包装</a></li>
							</ul>
						    <div class="nav-extra">
						    	<b></b>我的福利
						    	<i class="am-icon-angle-right" style="padding-left: 10px;"></i>
						    </div>
						</div>
			</div>
			
				
					<div class="am-g am-g-fixed">
						<div class="am-u-sm-12 am-u-md-12">
	                  	<div class="theme-popover">														
							<div class="searchAbout">
								<span class="font-pale">相关搜索：</span>
								<a title="坚果" href="#">零食</a>
								<a title="瓜子" href="#">瓜子</a>
								<a title="鸡腿" href="#">豆干</a>

							</div>
							<ul class="select">
								<p class="title font-normal">
									<span class="fl">松子</span>
									<span class="total fl">搜索到<strong class="num">8</strong>件相关商品</span>
								</p>
								<div class="clear"></div>
								<li class="select-result">
									<dl>
										<dt>已选</dt>
										<dd class="select-no"></dd>
										<p class="eliminateCriteria">清除</p>
									</dl>
								</li>
								<div class="clear"></div>
								<li class="select-list">
									<dl id="select2">
										<dt class="am-badge am-round">种类</dt>
										<div class="dd-conent">
											<dd class="select-all selected"><a href="#">全部</a></dd>
											<dd><a href="#">零食</a></dd>
											<dd><a href="#">计算机专业书籍</a></dd>

										</div>
									</dl>
								</li>
					        
							</ul>
							<div class="clear"></div>
                        </div>
							<div class="search-content">
								<div class="clear"></div>

								<ul class="am-avg-sm-2 am-avg-md-3 am-avg-lg-4 boxes" id="project">
									<li>
										<div class="i-pic limit">
										<img src="/images/imgsearch1.jpg" />
											<a href="/goodspage/introduction4.do"><p class="title fl">【良品铺子旗舰店】手剥松子218g 坚果炒货零食新货巴西松子包邮</p></a>
											<p class="price fl">
												<b>¥</b>
												<strong>56.90</strong>
											</p>
											<p class="number fl">
												销量<span>19010</span>
											</p>
										</div>
									</li>
									<li>
										<div class="i-pic limit">
											
											<img src="/images/xiawei.png" />
											<a href="/goodspage/introduction3.do"><p class="title fl">奶油味夏威夷果 奶油口味特产干货</p></a>
											<p class="price fl">
												<b>¥</b>
												<strong>49.90</strong>
											</p>
											<p class="number fl">
												销量<span>11100</span>
											</p>
										</div>
									</li>
									<li>
										<div class="i-pic limit">
											
											<img src="/images/wan.png" />
											<a href="/goodspage/yuwan.do"><p class="title fl">即食鱼丸零食 香辣味小吃休闲食品特产鱼麻辣烧烤味</p></a>
											<p class="price fl">
												<b>¥</b>
												<strong>16.90</strong>
											</p>
											<p class="number fl">
												销量<span>8110</span>
											</p>
										</div>
									</li>
									<li>
										<div class="i-pic limit">
											
											<img src="/images/pean.png" />
											<a href="/goodspage/bread.do"><p class="title fl">良品铺子蒸蛋糕软面包营养早餐面包小蛋糕零食点心糕点食品1000g</p></a>
											<p class="price fl">
												<b>¥</b>
												<strong>33.90</strong>
											</p>
											<p class="number fl">
												销量<span>11110</span>
											</p>
										</div>
									</li>
									<li>
										<div class="i-pic limit">
											
											<img src="/images/zao.png" />
											<a href="/goodspage/zao.do"><p class="title fl">良品铺子脆冬枣无核酥脆脆枣黄骅冬枣枣子红枣无核枣枣类果干零食</p></a>
											<p class="price fl">
												<b>¥</b>
												<strong>19.90</strong>
											</p>
											<p class="number fl">
												销量<span>12210</span>
											</p>
										</div>
									</li>
									<li>
										<div class="i-pic limit">
											
											<img src="/images/bull.png" />
											<a href="/goodspage/bull.do"><p class="title fl">良品铺子牛肉粒五香味香辣牛肉干独立小包装特产零食风味小吃袋装</p></a>
											<p class="price fl">
												<b>¥</b>
												<strong>15.90</strong>
											</p>
											<p class="number fl">
												销量<span>11190</span>
											</p>
										</div>
									</li>
									<li>
										<div class="i-pic limit">
											
											<img src="/images/huangyu.png" />
											<a href="/goodspage/yellowfish.do"><p class="title fl">良品铺子香酥小黄鱼舟山特产香辣味小吃小黄鱼干零食即食海鲜袋装</p></a>
											<p class="price fl">
												<b>¥</b>
												<strong>18.90</strong>
											</p>
											<p class="number fl">
												销量<span>31110</span>
											</p>
										</div>
									</li>
									<li>
										<div class="i-pic limit">
											
											<img src="/images/wang.png" />
											<a href="/goodspage/wangb.do"><p class="title fl">良品铺子奶香华夫饼干糕点面包 早餐食品点心零食小吃原味240g </p></a>
											<p class="price fl">
												<b>¥</b>
												<strong>27.90</strong>
											</p>
											<p class="number fl">
												销量<span>16100</span>
											</p>
										</div>
									</li>
									<li>
										<div class="i-pic limit">

											<img src="/images/duck.png" />
											<a href="/goodspage/duck.do"><p class="title fl">良品铺子麻辣鸭脖子 甜辣味真空小包装香辣卤味零食休闲小吃熟食 </p></a>
											<p class="price fl">
												<b>¥</b>
												<strong>18.90</strong>
											</p>
											<p class="number fl">
												销量<span>16100</span>
											</p>
										</div>
									</li>
									<li>
										<div class="i-pic limit">

											<img src="/images/saurce.png" />
											<a href="/goodspage/saurce.do"><p class="title fl">良品铺子肉枣小香肠好吃的零食小吃迷你烤肠肉类熟食即食香辣肉脯 </p></a>
											<p class="price fl">
												<b>¥</b>
												<strong>29.90</strong>
											</p>
											<p class="number fl">
												销量<span>16100</span>
											</p>
										</div>
									</li>

									<li>
										<div class="i-pic limit">

											<img src="/images/tui.png" />
											<a href="/goodspage/tui.do"><p class="title fl">良品铺子小鸡腿奥尔良鸡腿零食真空鸡翅根肉类熟食卤味小吃小包装 </p></a>
											<p class="price fl">
												<b>¥</b>
												<strong>24.90</strong>
											</p>
											<p class="number fl">
												销量<span>16100</span>
											</p>
										</div>
									</li>
									<li>
										<div class="i-pic limit">

											<img src="/images/jeal.png" />
											<a href="/goodspage/jeal.do"><p class="title fl">良品铺子果肉果冻大礼包芒果布丁夏天零食椰果水果蓝莓山竹多口味</p></a>
											<p class="price fl">
												<b>¥</b>
												<strong>13.90</strong>
											</p>
											<p class="number fl">
												销量<span>16100</span>
											</p>
										</div>
									</li>
								</ul>
							</div>
							<div class="search-side">

								<div class="side-title">
									经典搭配
								</div>

								<li>
									<div class="i-pic check">
										<img src="/images/ejava.png" />
										<a href="/goodspage/ejava.do"><p class="check-title">高效  java</p></a>
										<p class="price fl">
											<b>¥</b>
											<strong>33.90</strong>
										</p>
										<p class="number fl">
											销量<span>510</span>
										</p>
									</div>
								</li>
								<li>

								</li>
								<li>

								</li>




							</div>
							<div class="clear"></div>


						</div>
					</div>
					<div class="footer">
						<div class="footer-hd">
							<p>
								<b>|</b>
								<a href="home.do">商城首页</a>
								<b>|</b>
								<a href="shopcart.do">购物车</a>

							</p>
						</div>
						<div class="footer-bd">
							<p>

								<em>© 2017-2027 工大的名义 版权所有.</em>
							</p>
						</div>
					</div>
				</div>

			</div>

		<!--引导 -->
		<div class="navCir">
			<li><a href="home.do"><i class="am-icon-home "></i>首页</a></li>
			<li><a href="shopcart.do"><i class="am-icon-shopping-basket"></i>购物车</a></li>
			<li><a href="personcenter.do"><i class="am-icon-user"></i>我的</a></li>
		</div>

		<!--菜单 -->
		<div class=tip>
			<div id="sidebar">
				<div id="wrap">
					<div id="prof" class="item">
						<a href="#">
							<span class="setting"></span>
						</a>
						<div class="ibar_login_box status_login">
							<div class="avatar_box">
								<p class="avatar_imgbox"><img src="/images/no-img_mid_.jpg" /></p>
								<ul class="user_info">
									<li>用户名：sl1903</li>
									<li>级&nbsp;别：普通会员</li>
								</ul>
							</div>
							<div class="login_btnbox">
								<a href="order.do" class="login_order">我的订单</a>
								<a href="collection.do" class="login_favorite">我的收藏</a>
							</div>
							<i class="icon_arrow_white"></i>
						</div>

					</div>
					<div id="shopCart" class="item">
						<a href="shopcart.do">
							<span class="message"></span>
						</a>
						<p>
							购物车
						</p>
						<p class="cart_num">0</p>
					</div>


					<div id="brand" class="item">
						<a href="collection.do">
							<span class="wdsc"><img src="/images/wdsc.png" /></span>
						</a>
						<div class="mp_tooltip">
							我的收藏
							<i class="icon_arrow_right_black"></i>
						</div>
					</div>

					<div class="quick_toggle">

						<!--二维码 -->
						<li class="qtitem">
							<a href="#none"><span class="mpbtn_qrcode"></span></a>
							<div class="mp_qrcode" style="display:none;"><img src="/images/weixin_code_145.png" /><i class="icon_arrow_white"></i></div>
						</li>
						<li class="qtitem">
							<a href="#top" class="return_top"><span class="top"></span></a>
						</li>
					</div>

					<!--回到顶部 -->
					<div id="quick_links_pop" class="quick_links_pop hide"></div>

				</div>

			</div>
			<div id="prof-content" class="nav-content">
				<div class="nav-con-close">
					<i class="am-icon-angle-right am-icon-fw"></i>
				</div>
				<div>
					我
				</div>
			</div>
			<div id="shopCart-content" class="nav-content">
				<div class="nav-con-close">
					<i class="am-icon-angle-right am-icon-fw"></i>
				</div>
				<div>
					购物车
				</div>
			</div>
			<div id="brand-content" class="nav-content">
				<div class="nav-con-close">
					<i class="am-icon-angle-right am-icon-fw"></i>
				</div>
				<div>
					收藏
				</div>
			</div>
		</div>
		<script>
			window.jQuery || document.write('<script src="/js/jquery.js"><\/script>');
		</script>

<div class="theme-popover-mask"></div>

	</body>

</html>