<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

	<title>首页</title>

	<link href="/css/amazeui.css" rel="stylesheet" type="text/css" />
	<link href="/css/admin.css" rel="stylesheet" type="text/css" />
	<link href="/css/demo.css" rel="stylesheet" type="text/css" />
	<link href="/css/hmstyle.css" rel="stylesheet" type="text/css"/>
	<link href="/css/skin.css" rel="stylesheet" type="text/css" />
	<script src="/js/jquery.js"></script>
	<script src="/js/amazeui.js"></script>
	<script type="text/javascript">
        function loginout() {
            $.ajax({
                type:'post',
                url:'/mainpage/loginout.do',
                dataType:'json',
                success:function () {
                    location.reload();
                },
                error:function () {
                    alert("网络异常");
                }


            });
        }

        $.ajax({
            type:'post',
            url:'/mainpage/iflogin.do',
            dataType:'json',
            success:function (data) {
                if(data.nicknames=="failure"){}
                else {
                    var zhaohu = document.getElementById("zhaohu");
                    zhaohu.innerHTML = data.nicknames;
                    document.getElementById("loginandregister").innerHTML = '<a class="am-btn-warning btn" href="/mainpage/shopcart.do" id="logins">购物车</a> <a class="am-btn-warning btn" href="/mainpage/collection.do" id="registers">收藏</a>';
                    document.getElementById("menu-hd").innerHTML='<a href="/mainpage/personcenter.do" target="_top" class="h">Hello ! my dear '+data.nicknames+'</a>';
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
                document.getElementById("J_MiniCartNum1").innerHTML=data.shopcarcount;
            },error:function () {
                alert("网络异常");
            }
        });

	</script>

</head>

<body>
<div class="hmtop">
	<!--顶部导航条 -->
	<div class="am-container header">
		<ul class="message-l">
			<div class="topMessage">
				<div class="menu-hd" id="menu-hd">
					<a href="/mainpage/login.do" target="_top" class="h">亲，请登录</a>
					<a href="/mainpage/register.do" target="_top">免费注册</a>
				</div>
			</div>
		</ul>
		<ul class="message-r">
			<div class="topMessage my-shangcheng">
				<div class="menu-hd MyShangcheng"><a href="/mainpage/personcenter.do" target="_top">个人中心</a></div>
			</div>
			<div class="topMessage mini-cart">
				<div class="menu-hd"><a id="mc-menu-hd" href="/mainpage/shopcart.do" target="_top"><span>购物车</span><strong id="J_MiniCartNum" class="h">0</strong></a></div>
			</div>
			<div class="topMessage favorite">
				<div class="menu-hd"><a href="/mainpage/collection.do" target="_top"><span>收藏夹</span></a></div>
			</div>
			<div class="topMessage favorite">
				<div class="menu-hd"><a href="javascript:loginout();" target="_top"><span>退出</span></a></div>
			</div>
		</ul>
	</div>

	<!--悬浮搜索框-->

	<div class="nav white">
		<div class="search-bar pr">

			<form>
				<input id="searchInput" name="sousuo" type="text" placeholder="搜索" autocomplete="off">
				<input id="ai-topsearch" class="submit am-btn" value="搜索" index="1" type="button">
			</form>
		</div>
	</div>

	<div class="clear"></div>
</div>
<div class="banner">
	<!--轮播 -->
	<div class="am-slider am-slider-default scoll" data-am-flexslider id="demo-slider-0">
		<ul class="am-slides">
			<li class="banner1"><a href="/goodspage/lunbo1.do"><img src="/images/lh.png"/></a></li>
			<li class="banner2"><a href="/goodspage/lunbo2.do"><img src="/images/mt.png" /></a></li>
			<li class="banner3"><a href="/goodspage/lunbo3.do"><img src="/images/choco.png" /></a></li>
			<li class="banner4"><a href="/goodspage/lunbo4.do"><img src="/images/ad4.jpg" /></a></li>

		</ul>
	</div>
	<div class="clear"></div>
</div>
<div class="shopNav">
	<div class="slideall">

		<div class="long-title"><span class="all-goods">全部分类</span></div>
		<div class="nav-cont">

		</div>

		<!--侧边导航 -->
		<div id="nav" class="navfull">
			<div class="area clearfix">
				<div class="category-content" id="guide_2">

					<div class="category">
						<ul class="category-list" id="js_climit_li">
							<li class="appliance js_toggle relative first">
								<div class="category-info">
									<h3 class="category-name b-category-name"><i><img src="/images/cake.png"></i><a class="ml-22" title="点心">零食/饮料</a></h3>
									<em>&gt;</em></div>
								<div class="menu-item menu-in top">
									<div class="area-in">
										<div class="area-bg">
											<div class="menu-srot">
												<div class="sort-side">
													<dl class="dl-sort">
														<dt><span title="零食">零食</span></dt>
														<dd><a title="小黄鱼" href="/goodspage/yellowfish.do"><span>小黄鱼</span></a></dd>
														<dd><a title="鳕鱼肠" href="/goodspage/introduction.do"><span>鳕鱼肠</span></a></dd>
														<dd><a title="夏威夷果" href="/goodspage/introduction3.do"><span>夏威夷果</span></a></dd>
														<dd><a title="东北松子" href="/goodspage/introduction4.do"><span>松子</span></a></dd>
														<dd><a title="小香肠" href="/goodspage/saurce.do"><span>小香肠</span></a></dd>
														<dd><a title="鸡腿" href="/goodspage/tui.do"><span>鸡腿</span></a></dd>
														<dd><a title="饼干" href="/goodspage/wangb.do"><span>华夫饼干</span></a></dd>

													</dl>
													<dl class="dl-sort">
														<dt><span title="点心">点心</span></dt>
														<dd><a title="巧克力" href="/goodspage/introduction2.do"><span>德芙巧克力</span></a></dd>
														<dd><a title="果冻" href="/goodspage/jeal.do"><span>果冻</span></a></dd>
														<dd><a title="果汁" href="/goodspage/lunbo4.do"><span>果汁</span></a></dd>
														<dd><a title="鱼丸" href="/goodspage/yuwan.do"><span>鱼丸</span></a></dd>
														<dd><a title="酸枣" href="/goodspage/zao.do"><span>酸枣</span></a></dd>
													</dl>

												</div>
												<div class="brand-side">
													<dl class="dl-sort"><dt><span>实力商家</span></dt>
														<dd><a rel="nofollow" title="三只松鼠" target="_blank" href="https://sanzhisongshu.tmall.com/shop/view_shop.htm?spm=a230r.7195193.1997079397.2.iCupb1" rel="nofollow"><span  class="red" >三只松鼠</span></a></dd>
														<dd><a rel="nofollow" title="良品铺子" target="_blank" href="https://liangpinpuzi.tmall.com/shop/view_shop.htm?spm=a230r.7195193.1997079397.2.94ribd" rel="nofollow"><span >良品铺子</span></a></dd>
														<dd><a rel="nofollow" title="百草园" target="_blank" href="https://baicaowei.tmall.com/shop/view_shop.htm?spm=a230r.7195193.1997079397.2.jpW7F1" rel="nofollow"><span  class="red" >百草味</span></a></dd>

													</dl>
												</div>
											</div>
										</div>
									</div>
								</div>
								<b class="arrow"></b>
							</li>
							<li class="appliance js_toggle relative">
								<div class="category-info">
									<h3 class="category-name b-category-name"><i><img src="/images/cookies.png"></i><a class="ml-22" title="饼干、膨化">饼干/膨化</a></h3>
									<em>&gt;</em></div>
								<div class="menu-item menu-in top">
									<div class="area-in">
										<div class="area-bg">
											<div class="menu-srot">
												<div class="sort-side">
													<dl class="dl-sort">
														<dt><span title="小吃">小吃</span></dt>
														<dd><a title="巧克力" href="/goodspage/introduction2.do"><span>德芙巧克力</span></a></dd>
														<dd><a title="果冻" href="/goodspage/jeal.do"><span>果冻</span></a></dd>
														<dd><a title="果汁" href="/goodspage/lunbo4.do"><span>果汁</span></a></dd>
														<dd><a title="鱼丸" href="/goodspage/yuwan.do"><span>鱼丸</span></a></dd>
														<dd><a title="酸枣" href="/goodspage/zao.do"><span>酸枣</span></a></dd>
													</dl>
													<dl class="dl-sort">
														<dt><span title="小零食">小零食</span></dt>
														<dd><a title="小黄鱼" href="/goodspage/yellowfish.do"><span>小黄鱼</span></a></dd>
														<dd><a title="鳕鱼肠" href="/goodspage/introduction.do"><span>鳕鱼肠</span></a></dd>
														<dd><a title="夏威夷果" href="/goodspage/introduction3.do"><span>夏威夷果</span></a></dd>
														<dd><a title="东北松子" href="/goodspage/introduction4.do"><span>松子</span></a></dd>
														<dd><a title="小香肠" href="/goodspage/saurce.do"><span>小香肠</span></a></dd>
														<dd><a title="鸡腿" href="/goodspage/tui.do"><span>鸡腿</span></a></dd>
														<dd><a title="饼干" href="/goodspage/wangb.do"><span>华夫饼干</span></a></dd>

													</dl>
													<dl class="dl-sort">
														<dt><span title="小吃">小吃</span></dt>
														<dd><a title="小黄鱼" href="/goodspage/yellowfish.do"><span>小黄鱼</span></a></dd>
														<dd><a title="鳕鱼肠" href="/goodspage/introduction.do"><span>鳕鱼肠</span></a></dd>
														<dd><a title="夏威夷果" href="/goodspage/introduction3.do"><span>夏威夷果</span></a></dd>
														<dd><a title="东北松子" href="/goodspage/introduction4.do"><span>松子</span></a></dd>
														<dd><a title="小香肠" href="/goodspage/saurce.do"><span>小香肠</span></a></dd>
														<dd><a title="鸡腿" href="/goodspage/tui.do"><span>鸡腿</span></a></dd>
														<dd><a title="饼干" href="/goodspage/wangb.do"><span>华夫饼干</span></a></dd>

													</dl>
												</div>
												<div class="brand-side">

												</div>
											</div>
										</div>
									</div>
								</div>
								<b class="arrow"></b>
							</li>
							<li class="appliance js_toggle relative">
								<div class="category-info">
									<h3 class="category-name b-category-name"><i><img src="/images/meat.png"></i><a class="ml-22" title="熟食、肉类">零食/小吃</a></h3>
									<em>&gt;</em></div>
								<div class="menu-item menu-in top">
									<div class="area-in">
										<div class="area-bg">
											<div class="menu-srot">
												<div class="sort-side">
													<dl class="dl-sort">
														<dt><span title="零食">零食</span></dt>
														<dd><a title="巧克力" href="/goodspage/introduction2.do"><span>德芙巧克力</span></a></dd>
														<dd><a title="果冻" href="/goodspage/jeal.do"><span>果冻</span></a></dd>
														<dd><a title="果汁" href="/goodspage/lunbo4.do"><span>果汁</span></a></dd>
														<dd><a title="鱼丸" href="/goodspage/yuwan.do"><span>鱼丸</span></a></dd>
														<dd><a title="酸枣" href="/goodspage/zao.do"><span>酸枣</span></a></dd>
													</dl>
													<dl class="dl-sort">
														<dt><span title="小吃">小吃</span></dt>
														<dd><a title="小黄鱼" href="/goodspage/yellowfish.do"><span>小黄鱼</span></a></dd>
														<dd><a title="鳕鱼肠" href="/goodspage/introduction.do"><span>鳕鱼肠</span></a></dd>
														<dd><a title="夏威夷果" href="/goodspage/introduction3.do"><span>夏威夷果</span></a></dd>
														<dd><a title="东北松子" href="/goodspage/introduction4.do"><span>松子</span></a></dd>
														<dd><a title="小香肠" href="/goodspage/saurce.do"><span>小香肠</span></a></dd>
														<dd><a title="鸡腿" href="/goodspage/tui.do"><span>鸡腿</span></a></dd>
														<dd><a title="饼干" href="/goodspage/wangb.do"><span>华夫饼干</span></a></dd>
														<dd><a title="铜锣烧" href="#"><span>铜锣烧</span></a></dd>
													</dl>
													<dl class="dl-sort">
														<dt><span title="小香肠">小零食</span></dt>
														<dd><a title="巧克力" href="/goodspage/introduction2.do"><span>德芙巧克力</span></a></dd>
														<dd><a title="果冻" href="/goodspage/jeal.do"><span>果冻</span></a></dd>
														<dd><a title="果汁" href="/goodspage/lunbo4.do"><span>果汁</span></a></dd>
														<dd><a title="鱼丸" href="/goodspage/yuwan.do"><span>鱼丸</span></a></dd>
														<dd><a title="酸枣" href="/goodspage/zao.do"><span>酸枣</span></a></dd>
													</dl>
												</div>
												<div class="brand-side">
													<dl class="dl-sort"><dt><span>实力商家</span></dt>
														<dd><a rel="nofollow" title="三只松鼠" target="_blank" href="https://sanzhisongshu.tmall.com/shop/view_shop.htm?spm=a230r.7195193.1997079397.2.iCupb1" rel="nofollow"><span  class="red" >三只松鼠</span></a></dd>
														<dd><a rel="nofollow" title="良品铺子" target="_blank" href="https://liangpinpuzi.tmall.com/shop/view_shop.htm?spm=a230r.7195193.1997079397.2.94ribd" rel="nofollow"><span >良品铺子</span></a></dd>
														<dd><a rel="nofollow" title="百草园" target="_blank" href="https://baicaowei.tmall.com/shop/view_shop.htm?spm=a230r.7195193.1997079397.2.jpW7F1" rel="nofollow"><span  class="red" >百草味</span></a></dd>

													</dl>
												</div>
											</div>
										</div>
									</div>
								</div>
								<b class="arrow"></b>
							</li>
							<li class="appliance js_toggle relative">
								<div class="category-info">
									<h3 class="category-name b-category-name"><i><img src="/images/bamboo.png"></i><a class="ml-22" title="素食、卤味">素食/卤味</a></h3>
									<em>&gt;</em></div>
								<div class="menu-item menu-in top">
									<div class="area-in">
										<div class="area-bg">
											<div class="menu-srot">
												<div class="sort-side">
													<dl class="dl-sort">
														<dt><span title="小零食">小零食</span></dt>
														<dd><a title="巧克力" href="/goodspage/introduction2.do"><span>德芙巧克力</span></a></dd>
														<dd><a title="果冻" href="/goodspage/jeal.do"><span>果冻</span></a></dd>
														<dd><a title="果汁" href="/goodspage/lunbo4.do"><span>果汁</span></a></dd>
														<dd><a title="鱼丸" href="/goodspage/yuwan.do"><span>鱼丸</span></a></dd>
														<dd><a title="酸枣" href="/goodspage/zao.do"><span>酸枣</span></a></dd>
													</dl>
													<dl class="dl-sort">
														<dt><span title="干笋">干笋</span></dt>
														<dd><a title="巧克力" href="/goodspage/introduction2.do"><span>德芙巧克力</span></a></dd>
														<dd><a title="果冻" href="/goodspage/jeal.do"><span>果冻</span></a></dd>
														<dd><a title="果汁" href="/goodspage/lunbo4.do"><span>果汁</span></a></dd>
														<dd><a title="鱼丸" href="/goodspage/yuwan.do"><span>鱼丸</span></a></dd>
														<dd><a title="酸枣" href="/goodspage/zao.do"><span>酸枣</span></a></dd>
													</dl>
													<dl class="dl-sort">
														<dt><span title="鸭脖">鸭脖</span></dt>
														<dd><a title="小黄鱼" href="/goodspage/yellowfish.do"><span>小黄鱼</span></a></dd>
														<dd><a title="鳕鱼肠" href="/goodspage/introduction.do"><span>鳕鱼肠</span></a></dd>
														<dd><a title="夏威夷果" href="/goodspage/introduction3.do"><span>夏威夷果</span></a></dd>
														<dd><a title="东北松子" href="/goodspage/introduction4.do"><span>松子</span></a></dd>
														<dd><a title="小香肠" href="/goodspage/saurce.do"><span>小香肠</span></a></dd>
														<dd><a title="鸡腿" href="/goodspage/tui.do"><span>鸡腿</span></a></dd>
														<dd><a title="饼干" href="/goodspage/wangb.do"><span>华夫饼干</span></a></dd>
													</dl>
												</div>
												<div class="brand-side">
													<dl class="dl-sort"><dt><span>实力商家</span></dt>
														<dd><a rel="nofollow" title="三只松鼠" target="_blank" href="https://sanzhisongshu.tmall.com/shop/view_shop.htm?spm=a230r.7195193.1997079397.2.iCupb1" rel="nofollow"><span  class="red" >三只松鼠</span></a></dd>
														<dd><a rel="nofollow" title="良品铺子" target="_blank" href="https://liangpinpuzi.tmall.com/shop/view_shop.htm?spm=a230r.7195193.1997079397.2.94ribd" rel="nofollow"><span >良品铺子</span></a></dd>
														<dd><a rel="nofollow" title="百草园" target="_blank" href="https://baicaowei.tmall.com/shop/view_shop.htm?spm=a230r.7195193.1997079397.2.jpW7F1" rel="nofollow"><span  class="red" >百草味</span></a></dd>

													</dl>
												</div>
											</div>
										</div>
									</div>
								</div>
								<b class="arrow"></b>
							</li>
							<li class="appliance js_toggle relative">
								<div class="category-info">
									<h3 class="category-name b-category-name"><i><img src="/images/nut.png"></i><a class="ml-22" title="坚果、炒货">坚果/炒货</a></h3>
									<em>&gt;</em></div>
								<div class="menu-item menu-in top">
									<div class="area-in">
										<div class="area-bg">
											<div class="menu-srot">
												<div class="sort-side">
													<dl class="dl-sort">
														<dt><span title="蛋糕">坚果</span></dt>
														<dd><a title="巧克力" href="/goodspage/introduction2.do"><span>德芙巧克力</span></a></dd>
														<dd><a title="果冻" href="/goodspage/jeal.do"><span>果冻</span></a></dd>
														<dd><a title="果汁" href="/goodspage/lunbo4.do"><span>果汁</span></a></dd>
														<dd><a title="鱼丸" href="/goodspage/yuwan.do"><span>鱼丸</span></a></dd>
														<dd><a title="酸枣" href="/goodspage/zao.do"><span>酸枣</span></a></dd>
													</dl>
													<dl class="dl-sort">
														<dt><span title="小面包">小面包</span></dt>
														<dd><a title="小黄鱼" href="/goodspage/yellowfish.do"><span>小黄鱼</span></a></dd>
														<dd><a title="鳕鱼肠" href="/goodspage/introduction.do"><span>鳕鱼肠</span></a></dd>
														<dd><a title="夏威夷果" href="/goodspage/introduction3.do"><span>夏威夷果</span></a></dd>
														<dd><a title="东北松子" href="/goodspage/introduction4.do"><span>松子</span></a></dd>
														<dd><a title="小香肠" href="/goodspage/saurce.do"><span>小香肠</span></a></dd>
														<dd><a title="鸡腿" href="/goodspage/tui.do"><span>鸡腿</span></a></dd>
														<dd><a title="饼干" href="/goodspage/wangb.do"><span>华夫饼干</span></a></dd>

													</dl>
												</div>
												<div class="brand-side">
													<dl class="dl-sort"><dt><span>实力商家</span></dt>
														<dd><a rel="nofollow" title="三只松鼠" target="_blank" href="https://sanzhisongshu.tmall.com/shop/view_shop.htm?spm=a230r.7195193.1997079397.2.iCupb1" rel="nofollow"><span  class="red" >三只松鼠</span></a></dd>
														<dd><a rel="nofollow" title="良品铺子" target="_blank" href="https://liangpinpuzi.tmall.com/shop/view_shop.htm?spm=a230r.7195193.1997079397.2.94ribd" rel="nofollow"><span >良品铺子</span></a></dd>
														<dd><a rel="nofollow" title="百草园" target="_blank" href="https://baicaowei.tmall.com/shop/view_shop.htm?spm=a230r.7195193.1997079397.2.jpW7F1" rel="nofollow"><span  class="red" >百草味</span></a></dd>

													</dl>
												</div>
											</div>
										</div>
									</div>
								</div>
								<b class="arrow"></b>
							</li>
							<li class="appliance js_toggle relative">
								<div class="category-info">
									<h3 class="category-name b-category-name"><i><img src="/images/candy.png"></i><a class="ml-22" title="糖果、蜜饯">糖果/蜜饯</a></h3>
									<em>&gt;</em></div>
								<div class="menu-item menu-in top">
									<div class="area-in">
										<div class="area-bg">
											<div class="menu-srot">
												<div class="sort-side">
													<dl class="dl-sort">
														<dt><span title="糖果">小面包</span></dt>
														<dd><a title="巧克力" href="/goodspage/introduction2.do"><span>德芙巧克力</span></a></dd>
														<dd><a title="果冻" href="/goodspage/jeal.do"><span>果冻</span></a></dd>
														<dd><a title="果汁" href="/goodspage/lunbo4.do"><span>果汁</span></a></dd>
														<dd><a title="鱼丸" href="/goodspage/yuwan.do"><span>鱼丸</span></a></dd>
														<dd><a title="酸枣" href="/goodspage/zao.do"><span>酸枣</span></a></dd>
													</dl>
													<dl class="dl-sort">
														<dt><span title="蜜饯">小吃</span></dt>
														<dd><a title="小黄鱼" href="/goodspage/yellowfish.do"><span>小黄鱼</span></a></dd>
														<dd><a title="鳕鱼肠" href="/goodspage/introduction.do"><span>鳕鱼肠</span></a></dd>
														<dd><a title="夏威夷果" href="/goodspage/introduction3.do"><span>夏威夷果</span></a></dd>
														<dd><a title="东北松子" href="/goodspage/introduction4.do"><span>松子</span></a></dd>
														<dd><a title="小香肠" href="/goodspage/saurce.do"><span>小香肠</span></a></dd>
														<dd><a title="鸡腿" href="/goodspage/tui.do"><span>鸡腿</span></a></dd>
														<dd><a title="饼干" href="/goodspage/wangb.do"><span>华夫饼干</span></a></dd>

													</dl>
												</div>
												<div class="brand-side">
													<dl class="dl-sort"><dt><span>实力商家</span></dt>
														<dd><a rel="nofollow" title="三只松鼠" target="_blank" href="https://sanzhisongshu.tmall.com/shop/view_shop.htm?spm=a230r.7195193.1997079397.2.iCupb1" rel="nofollow"><span  class="red" >三只松鼠</span></a></dd>
														<dd><a rel="nofollow" title="良品铺子" target="_blank" href="https://liangpinpuzi.tmall.com/shop/view_shop.htm?spm=a230r.7195193.1997079397.2.94ribd" rel="nofollow"><span >良品铺子</span></a></dd>
														<dd><a rel="nofollow" title="百草园" target="_blank" href="https://baicaowei.tmall.com/shop/view_shop.htm?spm=a230r.7195193.1997079397.2.jpW7F1" rel="nofollow"><span  class="red" >百草味</span></a></dd>

													</dl>
												</div>
											</div>
										</div>
									</div>
								</div>
								<b class="arrow"></b>
							</li>
							<li class="appliance js_toggle relative">
								<div class="category-info">
									<h3 class="category-name b-category-name"><i><img src="/images/chocolate.png"></i><a class="ml-22" title="巧克力">巧克力</a></h3>
									<em>&gt;</em></div>
								<div class="menu-item menu-in top">
									<div class="area-in">
										<div class="area-bg">
											<div class="menu-srot">
												<div class="sort-side">
													<dl class="dl-sort">
														<dt><span title="蛋糕">巧克力</span></dt>
														<dd><a title="巧克力" href="/goodspage/introduction2.do"><span>德芙巧克力</span></a></dd>
														<dd><a title="果冻" href="/goodspage/jeal.do"><span>果冻</span></a></dd>
														<dd><a title="果汁" href="/goodspage/lunbo4.do"><span>果汁</span></a></dd>
														<dd><a title="鱼丸" href="/goodspage/yuwan.do"><span>鱼丸</span></a></dd>
														<dd><a title="酸枣" href="/goodspage/zao.do"><span>酸枣</span></a></dd>
													</dl>
													<dl class="dl-sort">
														<dt><span title="蛋糕">果冻</span></dt>
														<dd><a title="小黄鱼" href="/goodspage/yellowfish.do"><span>小黄鱼</span></a></dd>
														<dd><a title="鳕鱼肠" href="/goodspage/introduction.do"><span>鳕鱼肠</span></a></dd>
														<dd><a title="夏威夷果" href="/goodspage/introduction3.do"><span>夏威夷果</span></a></dd>
														<dd><a title="东北松子" href="/goodspage/introduction4.do"><span>松子</span></a></dd>
														<dd><a title="小香肠" href="/goodspage/saurce.do"><span>小香肠</span></a></dd>
														<dd><a title="鸡腿" href="/goodspage/tui.do"><span>鸡腿</span></a></dd>
														<dd><a title="饼干" href="/goodspage/wangb.do"><span>华夫饼干</span></a></dd>

													</dl>
												</div>
												<div class="brand-side">
													<dl class="dl-sort"><dt><span>实力商家</span></dt>
														<dd><a rel="nofollow" title="三只松鼠" target="_blank" href="https://sanzhisongshu.tmall.com/shop/view_shop.htm?spm=a230r.7195193.1997079397.2.iCupb1" rel="nofollow"><span  class="red" >三只松鼠</span></a></dd>
														<dd><a rel="nofollow" title="良品铺子" target="_blank" href="https://liangpinpuzi.tmall.com/shop/view_shop.htm?spm=a230r.7195193.1997079397.2.94ribd" rel="nofollow"><span >良品铺子</span></a></dd>
														<dd><a rel="nofollow" title="百草园" target="_blank" href="https://baicaowei.tmall.com/shop/view_shop.htm?spm=a230r.7195193.1997079397.2.jpW7F1" rel="nofollow"><span  class="red" >百草味</span></a></dd>

													</dl>
												</div>
											</div>
										</div>
									</div>
								</div>
								<b class="arrow"></b>
							</li>
							<li class="appliance js_toggle relative">
								<div class="category-info">
									<h3 class="category-name b-category-name"><i><img src="/images/fish.png"></i><a class="ml-22" title="海味、河鲜">海味/河鲜</a></h3>
									<em>&gt;</em></div>
								<div class="menu-item menu-in top">
									<div class="area-in">
										<div class="area-bg">
											<div class="menu-srot">
												<div class="sort-side">
													<dl class="dl-sort">
														<dt><span title="海带丝">小黄鱼系列</span></dt>
														<dd><a title="小黄鱼" href="/goodspage/yellowfish.do"><span>小黄鱼</span></a></dd>
														<dd><a title="鳕鱼肠" href="/goodspage/introduction.do"><span>鳕鱼肠</span></a></dd>
														<dd><a title="夏威夷果" href="/goodspage/introduction3.do"><span>夏威夷果</span></a></dd>
														<dd><a title="东北松子" href="/goodspage/introduction4.do"><span>松子</span></a></dd>
														<dd><a title="小香肠" href="/goodspage/saurce.do"><span>小香肠</span></a></dd>
														<dd><a title="鸡腿" href="/goodspage/tui.do"><span>鸡腿</span></a></dd>
														<dd><a title="饼干" href="/goodspage/wangb.do"><span>华夫饼干</span></a></dd>
													</dl>
													<dl class="dl-sort">
														<dt><span title="小鱼干">小鱼丸</span></dt>
														<dd><a title="巧克力" href="/goodspage/introduction2.do"><span>德芙巧克力</span></a></dd>
														<dd><a title="果冻" href="/goodspage/jeal.do"><span>果冻</span></a></dd>
														<dd><a title="果汁" href="/goodspage/lunbo4.do"><span>果汁</span></a></dd>
														<dd><a title="鱼丸" href="/goodspage/yuwan.do"><span>鱼丸</span></a></dd>
														<dd><a title="酸枣" href="/goodspage/zao.do"><span>酸枣</span></a></dd>
													</dl>
													<dl class="dl-sort">
														<dt><span title="酸枣">酸枣</span></dt>
														<dd><a title="巧克力" href="/goodspage/introduction2.do"><span>德芙巧克力</span></a></dd>
														<dd><a title="果冻" href="/goodspage/jeal.do"><span>果冻</span></a></dd>
														<dd><a title="果汁" href="/goodspage/lunbo4.do"><span>果汁</span></a></dd>
														<dd><a title="鱼丸" href="/goodspage/yuwan.do"><span>鱼丸</span></a></dd>
														<dd><a title="酸枣" href="/goodspage/zao.do"><span>酸枣</span></a></dd>
													</dl>
												</div>
												<div class="brand-side">
													<dl class="dl-sort"><dt><span>实力商家</span></dt>
														<dd><a rel="nofollow" title="三只松鼠" target="_blank" href="https://sanzhisongshu.tmall.com/shop/view_shop.htm?spm=a230r.7195193.1997079397.2.iCupb1" rel="nofollow"><span  class="red" >三只松鼠</span></a></dd>
														<dd><a rel="nofollow" title="良品铺子" target="_blank" href="https://liangpinpuzi.tmall.com/shop/view_shop.htm?spm=a230r.7195193.1997079397.2.94ribd" rel="nofollow"><span >良品铺子</span></a></dd>
														<dd><a rel="nofollow" title="百草园" target="_blank" href="https://baicaowei.tmall.com/shop/view_shop.htm?spm=a230r.7195193.1997079397.2.jpW7F1" rel="nofollow"><span  class="red" >百草味</span></a></dd>

													</dl>
												</div>
											</div>
										</div>
									</div>
								</div>
								<b class="arrow"></b>
							</li>
							<li class="appliance js_toggle relative">
								<div class="category-info">
									<h3 class="category-name b-category-name"><i><img src="/images/tea.png"></i><a class="ml-22" title="坚果类">松子</a></h3>
									<em>&gt;</em></div>
								<div class="menu-item menu-in top">
									<div class="area-in">
										<div class="area-bg">
											<div class="menu-srot">
												<div class="sort-side">
													<dl class="dl-sort">
														<dt><span title="蛋糕">华夫饼干</span></dt>
														<dd><a title="小黄鱼" href="/goodspage/yellowfish.do"><span>小黄鱼</span></a></dd>
														<dd><a title="鳕鱼肠" href="/goodspage/introduction.do"><span>鳕鱼肠</span></a></dd>
														<dd><a title="夏威夷果" href="/goodspage/introduction3.do"><span>夏威夷果</span></a></dd>
														<dd><a title="东北松子" href="/goodspage/introduction4.do"><span>松子</span></a></dd>
														<dd><a title="小香肠" href="/goodspage/saurce.do"><span>小香肠</span></a></dd>
														<dd><a title="鸡腿" href="/goodspage/tui.do"><span>鸡腿</span></a></dd>
														<dd><a title="饼干" href="/goodspage/wangb.do"><span>华夫饼干</span></a></dd>

													</dl>
													<dl class="dl-sort">
														<dt><span title="蛋糕">小点心</span></dt>
														<dd><a title="小黄鱼" href="/goodspage/yellowfish.do"><span>小黄鱼</span></a></dd>
														<dd><a title="鳕鱼肠" href="/goodspage/introduction.do"><span>鳕鱼肠</span></a></dd>
														<dd><a title="夏威夷果" href="/goodspage/introduction3.do"><span>夏威夷果</span></a></dd>
														<dd><a title="东北松子" href="/goodspage/introduction4.do"><span>松子</span></a></dd>
														<dd><a title="小香肠" href="/goodspage/saurce.do"><span>小香肠</span></a></dd>
														<dd><a title="鸡腿" href="/goodspage/tui.do"><span>鸡腿</span></a></dd>
														<dd><a title="饼干" href="/goodspage/wangb.do"><span>华夫饼干</span></a></dd>

													</dl>
												</div>
												<div class="brand-side">
													<dl class="dl-sort"><dt><span>实力商家</span></dt>
														<dd><a rel="nofollow" title="三只松鼠" target="_blank" href="https://sanzhisongshu.tmall.com/shop/view_shop.htm?spm=a230r.7195193.1997079397.2.iCupb1" rel="nofollow"><span  class="red" >三只松鼠</span></a></dd>
														<dd><a rel="nofollow" title="良品铺子" target="_blank" href="https://liangpinpuzi.tmall.com/shop/view_shop.htm?spm=a230r.7195193.1997079397.2.94ribd" rel="nofollow"><span >良品铺子</span></a></dd>
														<dd><a rel="nofollow" title="百草园" target="_blank" href="https://baicaowei.tmall.com/shop/view_shop.htm?spm=a230r.7195193.1997079397.2.jpW7F1" rel="nofollow"><span  class="red" >百草味</span></a></dd>

													</dl>
												</div>
											</div>
										</div>
									</div>
								</div>
								<b class="arrow"></b>
							</li>
							<li class="appliance js_toggle relative last">
								<div class="category-info">
									<h3 class="category-name b-category-name"><i><img src="/images/package.png"></i><a class="ml-22" title="品牌、礼包">品牌/礼包</a></h3>
									<em>&gt;</em></div>
								<div class="menu-item menu-in top">
									<div class="area-in">
										<div class="area-bg">
											<div class="menu-srot">
												<div class="sort-side">
													<dl class="dl-sort">
														<dt><span title="优惠">优惠件</span></dt>
														<dd><a title="小黄鱼" href="/goodspage/yellowfish.do"><span>小黄鱼</span></a></dd>
														<dd><a title="鳕鱼肠" href="/goodspage/introduction.do"><span>鳕鱼肠</span></a></dd>
														<dd><a title="夏威夷果" href="/goodspage/introduction3.do"><span>夏威夷果</span></a></dd>
														<dd><a title="东北松子" href="/goodspage/introduction4.do"><span>松子</span></a></dd>
														<dd><a title="小香肠" href="/goodspage/saurce.do"><span>小香肠</span></a></dd>
														<dd><a title="鸡腿" href="/goodspage/tui.do"><span>鸡腿</span></a></dd>
														<dd><a title="饼干" href="/goodspage/wangb.do"><span>华夫饼干</span></a></dd>
														<dd><a title="铜锣烧" href="#"><span>铜锣烧</span></a></dd>
													</dl>
													<dl class="dl-sort">
														<dt><span title="两件套">大包装</span></dt>
														<dd><a title="巧克力" href="/goodspage/introduction2.do"><span>德芙巧克力</span></a></dd>
														<dd><a title="果冻" href="/goodspage/jeal.do"><span>果冻</span></a></dd>
														<dd><a title="果汁" href="/goodspage/lunbo4.do"><span>果汁</span></a></dd>
														<dd><a title="鱼丸" href="/goodspage/yuwan.do"><span>鱼丸</span></a></dd>
														<dd><a title="酸枣" href="/goodspage/zao.do"><span>酸枣</span></a></dd>
													</dl>
												</div>
												<div class="brand-side">
													<dl class="dl-sort"><dt><span>实力商家</span></dt>
														<dd><a rel="nofollow" title="三只松鼠" target="_blank" href="https://sanzhisongshu.tmall.com/shop/view_shop.htm?spm=a230r.7195193.1997079397.2.iCupb1" rel="nofollow"><span  class="red" >三只松鼠</span></a></dd>
														<dd><a rel="nofollow" title="良品铺子" target="_blank" href="https://liangpinpuzi.tmall.com/shop/view_shop.htm?spm=a230r.7195193.1997079397.2.94ribd" rel="nofollow"><span >良品铺子</span></a></dd>
														<dd><a rel="nofollow" title="百草园" target="_blank" href="https://baicaowei.tmall.com/shop/view_shop.htm?spm=a230r.7195193.1997079397.2.jpW7F1" rel="nofollow"><span  class="red" >百草味</span></a></dd>

													</dl>
												</div>
											</div>
										</div>
									</div>
								</div>

							</li>
						</ul>
					</div>
				</div>

			</div>
		</div>


		<!--轮播-->

		<script type="text/javascript">
            (function() {
                $('.am-slider').flexslider();
            });
            $(document).ready(function() {
                $("li").hover(function() {
                    $(".category-content .category-list li.first .menu-in").css("display", "none");
                    $(".category-content .category-list li.first").removeClass("hover");
                    $(this).addClass("hover");
                    $(this).children("div.menu-in").css("display", "block")
                }, function() {
                    $(this).removeClass("hover")
                    $(this).children("div.menu-in").css("display", "none")
                });
            })
		</script>



		<!--小导航 -->
		<div class="am-g am-g-fixed smallnav">

			<div class="am-u-sm-3">
				<a href="/mainpage/personcenter.do"><img src="/images/mansmall.jpg" />
					<div class="title">个人中心</div>
				</a>
			</div>

		</div>

		<!--走马灯 -->

		<div class="marqueen">
			<span class="marqueen-title">校园头条</span>
			<div class="demo">

				<ul>
					<li class="title-first"><a target="_blank" href="#">
						<img src="/images/TJ2.jpg"></img>
						<span>[特惠]</span>商城爆品1分秒
					</a></li>
					<li class="title-first"><a target="_blank" href="#">
						<span>[公告]</span>校园微商场12月份正式上线
						<img src="/images/TJ.jpg"></img>
						<p>XXXXXXXXXXXXXXXXXX</p>
					</a></li>

					<div class="mod-vip">
						<div class="m-baseinfo">
							<a href="/mainpage/personcenter.do">
								<img src="/images/getAvatar.do.jpg">
							</a>
							<em>
								Hi,<span class="s-name" id="zhaohu">同学</span>
								<p>欢迎使用校园微商城</p>
							</em>
						</div>
						<div class="member-logout" id="loginandregister">
							<a class="am-btn-warning btn" href="/mainpage/login.do">登录</a>
							<a class="am-btn-warning btn" href="/mainpage/register.do">注册</a>
						</div>
						<div class="member-login">
							<a href="#"><strong>0</strong>待收货</a>
							<a href="#"><strong>0</strong>待发货</a>
							<a href="#"><strong>0</strong>待付款</a>
							<a href="#"><strong>0</strong>待评价</a>
						</div>
						<div class="clear"></div>
					</div>

					<li><a target="_blank" href="#"><span>[特惠]</span>北湖校区331超市开张了</a></li>
					<li><a target="_blank" href="#"><span>[公告]</span>南湖食堂3楼推出特惠套餐</a></li>
					<li><a target="_blank" href="#"><span>[特惠]</span>林园校区母亲节推出感恩套餐</a></li>

				</ul>
				<div class="advTip"><img src="/images/advTip.jpg"/></div>
			</div>
		</div>
		<div class="clear"></div>
	</div>
	<script type="text/javascript">
        if ($(window).width() < 640) {
            function autoScroll(obj) {
                $(obj).find("ul").animate({
                    marginTop: "-39px"
                }, 500, function() {
                    $(this).css({
                        marginTop: "0px"
                    }).find("li:first").appendTo(this);
                })
            }
            $(function() {
                setInterval('autoScroll(".demo")', 3000);
            })
        }
	</script>
</div>
<div class="shopMainbg">
	<div class="shopMain" id="shopmain">

		<!--今日推荐 -->

		<div class="am-g am-g-fixed recommendation">
			<div class="clock am-u-sm-3">
				<img src="/images/2017.png "></img>
				<p>今日<br>推荐</p>
			</div>
			<div class="am-u-sm-4 am-u-lg-3 ">
				<div class="info ">
					<h3>真的有鱼</h3>
					<h4>开年福利篇</h4>
				</div>
				<div class="recommendationMain one">
					<a href="/goodspage/introduction.do"><img src="/images/tj.png "></img></a>
				</div>
			</div>
			<div class="am-u-sm-4 am-u-lg-3 ">
				<div class="info ">
					<h3>夏威夷海岸</h3>
					<h4>大西洋彼岸风情</h4>
				</div>
				<div class="recommendationMain two">
					<a href="/goodspage/introduction3.do"><img src="/images/tj1.png "></img>
				</div>
			</div>
			<div class="am-u-sm-4 am-u-lg-3 ">
				<div class="info ">
					<h3>纵享丝滑</h3>
					<h4>爱她就请她吃DOVE</h4>
				</div>
				<div class="recommendationMain three">
					<a href="/goodspage/introduction2.do"><img src="/images/tj2.png "></img>
				</div>
			</div>

		</div>
		<div class="clear "></div>


		<div class="clear "></div>
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

				<em>© 2017-2027 工大的名义 版权所有 </em>
			</p>
		</div>
	</div>

</div>
</div>
<!--引导 -->
<div class="navCir">
	<li class="active"><a href="/mainpage/home.do"><i class="am-icon-home "></i>首页</a></li>
	<li><a href="/mainpage/shopcart.do"><i class="am-icon-shopping-basket"></i>购物车</a></li>
	<li><a href="/mainpage/personcenter.do"><i class="am-icon-user"></i>我的</a></li>
</div>


<!--菜单 -->
<div class=tip>
	<div id="sidebar">
		<div id="wrap">
			<div id="prof" class="item ">
				<a href="/mainpage/personcenter.do">
					<span class="setting "></span>
				</a>
				<div class="ibar_login_box status_login ">
					<div class="avatar_box ">
						<p class="avatar_imgbox "><img src="/images/no-img_mid_.jpg " /></p>
						<ul class="user_info ">

						</ul>
					</div>
					<div class="login_btnbox ">
						<a href="/mainpage/order.do" class="login_order ">我的订单</a>
						<a href="/mainpage/collection.do" class="login_favorite ">我的收藏</a>
					</div>
					<i class="icon_arrow_white "></i>
				</div>

			</div>
			<div id="shopCart " class="item ">
				<a href="/mainpage/shopcart.do">
					<span class="message "></span>
				</a>
				<p>
					购物车
				</p>
				<p class="cart_num " id="J_MiniCartNum1">0</p>
			</div>



			<div id="brand " class="item ">
				<a href="/mainpage/collection.do">
					<span class="wdsc "><img src="/images/wdsc.png " /></span>
				</a>
				<div class="mp_tooltip ">
					我的收藏
					<i class="icon_arrow_right_black "></i>
				</div>
			</div>



			<div class="quick_toggle ">

				<!--二维码 -->
				<li class="qtitem ">
					<a href="#none "><span class="mpbtn_qrcode "></span></a>
					<div class="mp_qrcode " style="display:none; "><img src="/images/weixin_code_145.png " /><i class="icon_arrow_white "></i></div>
				</li>
				<li class="qtitem ">
					<a href="#top " class="return_top "><span class="top "></span></a>
				</li>
			</div>

			<!--回到顶部 -->
			<div id="quick_links_pop " class="quick_links_pop hide "></div>

		</div>

	</div>
	<div id="prof-content " class="nav-content ">
		<div class="nav-con-close ">
			<i class="am-icon-angle-right am-icon-fw "></i>
		</div>
		<div>
			我
		</div>
	</div>
	<div id="shopCart-content " class="nav-content ">
		<div class="nav-con-close ">
			<i class="am-icon-angle-right am-icon-fw "></i>
		</div>
		<div>
			购物车
		</div>
	</div>

	<div id="brand-content " class="nav-content ">
		<div class="nav-con-close ">
			<i class="am-icon-angle-right am-icon-fw "></i>
		</div>
		<div>
			收藏
		</div>
	</div>

</div>
<script type="text/javascript">
    $("#ai-topsearch").click(function () {
        var searchword=document.getElementById("searchInput").value;
        $.ajax({
            type:'post',
            url:'/mainpage/searchgoods.do',
            dataType:'json',
            data:{"searchresult":searchword},
            success:function () {
                window.location.href='/mainpage/searchresult.do';

            },error:function () {
                alert("网络错误");
            }

        });

    });


</script>
<script>
    window.jQuery || document.write('<script src="/js/jquery.js "><\/script>');
</script>
<script type="text/javascript " src="/js/quick_links.js "></script>
</body>

</html>