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
				url:'/mainpage/ergodicorders.do',
				dataType:'json',
				success:function (data) {
					for(var i=0;i<data.orderlist.length;i++){
						appenditem(data.orderlist[i],data.ordertime[i],i,data.pricess[i]);
					}
                },error:function () {
					alert("网络异常");
                }

			});

			function  appenditem(itemid,itemtime,numbers,sumprice) {
                var prices=0;
                var items=document.getElementById("olist");
                items.innerHTML+='<div class="order-status5"><div class="order-title"><div class="dd-num">订单编号：<a id="orderid">'+itemid+'</a></div><span>成交时间：'+itemtime+'</span></div><div class="order-content"><div class="order-left" id='+numbers+'></div><div class="order-right"><li class="td td-amount"><div class="item-amount">合计：'+sumprice+'0<p>含运费：<span>0.00</span></p></div></li><div class="move-right"><li class="td td-status"><div class="item-status"><p class="Mystatus">交易成功</p><p class="order-info">货到付款</p><p class="order-info">已签收</p></div></li><li class="td td-change"><div class="am-btn am-btn-danger anniu" onclick="removeorder('+itemid+')">删除订单</div></li></div></div>';

                $.ajax({
			        type:'post',
					url:'/mainpage/ergodicorder2.do',
					dataType:'json',
					data:{"orderid":itemid},
					success:function (data) {
			            for(var i=0;i<data.oprice.length;i++){
							insertpage(data.ogid[i],data.oprice[i],data.onum[i],numbers);
						}
                    },error:function () {
						alert("网络错误");
                    }
				});
            }
            function insertpage(id,price,num,shu) {
			    if(id=="1"){
			        document.getElementById(shu).innerHTML+='<ul class="item-list"><li class="td td-item"><div class="item-pic"><a href="/goodspage/introduction4.do" class="J_MakePoint"><img src="/images/song80.png" class="itempic J_ItemImg"></a></div><div class="item-info"><div class="item-basic-info"><a href="/goodspage/introduction4.do"><p>良品铺子手剥松子 开口东北手拨红松子</p><p class="info-little">口味：奶香味<br/>包装：精品包装</p></a></div></div></li><li class="td td-price"><div class="item-price">56.90</div></li><li class="td td-number"><div class="item-number"><span>×</span>'+num+'</div></li><li class="td td-operation"><div class="item-operation"></div></li></ul>';
				}
				if(id=="2"){
                    document.getElementById(shu).innerHTML+='<ul class="item-list"><li class="td td-item"><div class="item-pic"><a href="/goodspage/introduction3.do" class="J_MakePoint"><img src="/images/guo80.png" class="itempic J_ItemImg"></a></div><div class="item-info"><div class="item-basic-info"><a href="/goodspage/introduction3.do"><p>奶油味夏威夷果 奶油口味特产干货干果坚果零食小吃</p><p class="info-little">口味：奶香味<br/>包装：精品包装</p></a></div></div></li><li class="td td-price"><div class="item-price">49.90</div></li><li class="td td-number"><div class="item-number"><span>×</span>'+num+'</div></li><li class="td td-operation"><div class="item-operation"></div></li></ul>';
				}
				if(id=="3"){
                    document.getElementById(shu).innerHTML+='<ul class="item-list"><li class="td td-item"><div class="item-pic"><a href="/goodspage/yuwan.do" class="J_MakePoint"><img src="/images/yu80.png" class="itempic J_ItemImg"></a></div><div class="item-info"><div class="item-basic-info"><a href="/goodspage/yuwan.do"><p>良品铺子即食鱼丸零食 香辣味小吃休闲食品特产鱼麻辣烧烤味100g</p><p class="info-little">口味：麻辣<br/>包装：精品包装</p></a></div></div></li><li class="td td-price"><div class="item-price">16.90</div></li><li class="td td-number"><div class="item-number"><span>×</span>'+num+'</div></li><li class="td td-operation"><div class="item-operation"></div></li></ul>';

                }
                if(id=="4"){
                    document.getElementById(shu).innerHTML+='<ul class="item-list"><li class="td td-item"><div class="item-pic"><a href="/goodspage/bread.do" class="J_MakePoint"><img src="/images/bread80.png" class="itempic J_ItemImg"></a></div><div class="item-info"><div class="item-basic-info"><a href="/goodspage/bread.do"><p>良品铺子蒸蛋软面包零食点心糕点 </p><p class="info-little">口味：原味<br/>包装：精品包装</p></a></div></div></li><li class="td td-price"><div class="item-price">33.90</div></li><li class="td td-number"><div class="item-number"><span>×</span>'+num+'</div></li><li class="td td-operation"><div class="item-operation"></div></li></ul>';

                }
                if(id=="5"){
                    document.getElementById(shu).innerHTML+='<ul class="item-list"><li class="td td-item"><div class="item-pic"><a href="/goodspage/zao.do" class="J_MakePoint"><img src="/images/zao80.png" class="itempic J_ItemImg"></a></div><div class="item-info"><div class="item-basic-info"><a href="/goodspage/zao.do"><p>良品铺子脆枣无核果干</p><p class="info-little">口味：原味<br/>包装：精品包装</p></a></div></div></li><li class="td td-price"><div class="item-price">19.90</div></li><li class="td td-number"><div class="item-number"><span>×</span>'+num+'</div></li><li class="td td-operation"><div class="item-operation"></div></li></ul>';

                }
                if(id=="6"){
                    document.getElementById(shu).innerHTML+='<ul class="item-list"><li class="td td-item"><div class="item-pic"><a href="/goodspage/bull.do" class="J_MakePoint"><img src="/images/beef80.png" class="itempic J_ItemImg"></a></div><div class="item-info"><div class="item-basic-info"><a href="/goodspage/bull.do"><p>良品铺子牛肉粒五香香辣小吃</p><p class="info-little">口味：五香<br/>包装：精品包装</p></a></div></div></li><li class="td td-price"><div class="item-price">15.90</div></li><li class="td td-number"><div class="item-number"><span>×</span>'+num+'</div></li><li class="td td-operation"><div class="item-operation"></div></li></ul>';

                }
                if(id=="7"){
                    document.getElementById(shu).innerHTML+='<ul class="item-list"><li class="td td-item"><div class="item-pic"><a href="/goodspage/yellowfish.do" class="J_MakePoint"><img src="/images/huangyu80.png" class="itempic J_ItemImg"></a></div><div class="item-info"><div class="item-basic-info"><a href="/goodspage/yellowfish.do"><p>良品铺子香辣小黄鱼小吃零食</p><p class="info-little">口味：香辣<br/>包装：精品包装</p></a></div></div></li><li class="td td-price"><div class="item-price">18.90</div></li><li class="td td-number"><div class="item-number"><span>×</span>'+num+'</div></li><li class="td td-operation"><div class="item-operation"></div></li></ul>';

                }
                if(id=="8"){
                    document.getElementById(shu).innerHTML+='<ul class="item-list"><li class="td td-item"><div class="item-pic"><a href="/goodspage/wangb.do" class="J_MakePoint"><img src="/images/huafu80.png" class="itempic J_ItemImg"></a></div><div class="item-info"><div class="item-basic-info"><a href="/goodspage/wangb.do"><p>良品铺子华夫饼干糕点面包零食</p><p class="info-little">口味：原味<br/>包装：精品包装</p></a></div></div></li><li class="td td-price"><div class="item-price">27.90</div></li><li class="td td-number"><div class="item-number"><span>×</span>'+num+'</div></li><li class="td td-operation"><div class="item-operation"></div></li></ul>';

                }
                if(id=="9"){
                    document.getElementById(shu).innerHTML+='<ul class="item-list"><li class="td td-item"><div class="item-pic"><a href="/goodspage/duck.do" class="J_MakePoint"><img src="/images/duckb80.png" class="itempic J_ItemImg"></a></div><div class="item-info"><div class="item-basic-info"><a href="/goodspage/duck.do"><p>良品铺子麻辣鸭脖子零食小吃</p><p class="info-little">口味：麻辣<br/>包装：精品包装</p></a></div></div></li><li class="td td-price"><div class="item-price">18.90</div></li><li class="td td-number"><div class="item-number"><span>×</span>'+num+'</div></li><li class="td td-operation"><div class="item-operation"></div></li></ul>';

                }
                if(id=="10"){
                    document.getElementById(shu).innerHTML+='<ul class="item-list"><li class="td td-item"><div class="item-pic"><a href="/goodspage/saurce.do" class="J_MakePoint"><img src="/images/chang80.png" class="itempic J_ItemImg"></a></div><div class="item-info"><div class="item-basic-info"><a href="/goodspage/saurce.do"><p>良品铺子肉枣小香肠零食香辣熟食小吃</p><p class="info-little">口味：麻辣<br/>包装：精品包装</p></a></div></div></li><li class="td td-price"><div class="item-price">29.90</div></li><li class="td td-number"><div class="item-number"><span>×</span>'+num+'</div></li><li class="td td-operation"><div class="item-operation"></div></li></ul>';

                }
                if(id=="11"){
                    document.getElementById(shu).innerHTML+='<ul class="item-list"><li class="td td-item"><div class="item-pic"><a href="/goodspage/tui.do" class="J_MakePoint"><img src="/images/tui80.png" class="itempic J_ItemImg"></a></div><div class="item-info"><div class="item-basic-info"><a href="/goodspage/tui.do"><p>良品铺子奥尔良鸡腿零食熟食小吃</p><p class="info-little">口味：香辣<br/>包装：精品包装</p></a></div></div></li><li class="td td-price"><div class="item-price">24.90</div></li><li class="td td-number"><div class="item-number"><span>×</span>'+num+'</div></li><li class="td td-operation"><div class="item-operation"></div></li></ul>';

                }
                if(id=="12"){
                    document.getElementById(shu).innerHTML+='<ul class="item-list"><li class="td td-item"><div class="item-pic"><a href="/goodspage/jeal.do" class="J_MakePoint"><img src="/images/jeal80.png" class="itempic J_ItemImg"></a></div><div class="item-info"><div class="item-basic-info"><a href="/goodspage/jeal.do"><p>良品铺子芒果果肉果冻布丁零食</p><p class="info-little">口味：芒果<br/>包装：精品包装</p></a></div></div></li><li class="td td-price"><div class="item-price">13.90</div></li><li class="td td-number"><div class="item-number"><span>×</span>'+num+'</div></li><li class="td td-operation"><div class="item-operation"></div></li></ul>';

                }

            }
            function removeorder(itemid) {
			    $.ajax({
			        type:'post',
					url:'/mainpage/removeorder.do',
					dataType:'json',
					data:{"orderid":itemid},
					success:function () {
                        location.reload();
                    },error:function () {
						alert('网络错误');
                    }
				});

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
										<div class="order-list" id="olist">
											

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