<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0 ,minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

		<title>结算页面</title>

		<link href="/css/amazeui.css" rel="stylesheet" type="text/css" />

		<link href="/css/demo.css" rel="stylesheet" type="text/css" />
		<link href="/css/cartstyle.css" rel="stylesheet" type="text/css" />

		<link href="/css/jsstyle.css" rel="stylesheet" type="text/css" />

		<script type="text/javascript" src="/js/address.js"></script>
		<script type="text/javascript" src="/js/jquery.js"></script>
		<script type="text/javascript" src="/js/jquery.cityselect.js"></script>
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
				dataType:'json',
				url:'/mainpage/updateaddress.do',
				success:function (data) {
                    document.getElementById("recievers").innerHTML=data.reciever;
                    document.getElementById("phonenum").innerHTML=data.telephone;
                    document.getElementById("provi").innerHTML=data.address;
                    document.getElementById("describ").innerHTML=data.concreadd;
                    document.getElementById("reciever").innerHTML=data.reciever;
                    document.getElementById("tele").innerHTML=data.telephone;
                    document.getElementById("provv").innerHTML=data.address;
                    document.getElementById("conred").innerHTML=data.concreadd;


                },error:function () {
				alert("网络异常");
                }
			});

			$.ajax({
			   type:'post',
				dataType:'json',
				url:'/mainpage/showreadyorder.do',
				success:function (data) {
			      document.getElementById("J_ActualFee").innerHTML=data.sumprice;
					for(var i=0;i<data.gidarray.length;i++){
					    showitem(data.gidarray[i],data.goodnum[i]);
					}
                },error:function () {
					alert("您已经付款此订单，请不要重复提交");
                }

			});
			function showitem(num,goodnum) {
			    var content=document.getElementById("payTable");
				if(num=="1"){
                    content.innerHTML+='<tr class="item-list"><div class="bundle  bundle-last"><div class="bundle-main"><ul class="item-content clearfix"><div class="pay-phone"><li class="td td-item"><div class="item-pic"><a href="/goodspage/introduction4.do" class="J_MakePoint"><img src="/images/song80.png" class="itempic J_ItemImg"></a></div><div class="item-info"><div class="item-basic-info"><a href="/goodspage/introduction4.do" class="item-title J_MakePoint" data-point="tbcart.8.11">良品铺子手剥松子 开口东北手拨红松子</a></div></div></li><li class="td td-info"><div class="item-props"><span class="sku-line">口味：原味</span><span class="sku-line">包装：精品包装</span></div></li><li class="td td-price"><div class="item-price price-promo-promo"><div class="price-content"><em class="J_Price price-now">56.90</em></div></div></li></div><li class="td td-amount"><div class="amount-wrapper "><div class="item-amount "><span class="phone-title">购买数量</span><div class="sl"><input class="text_box" name="goodsnumber" type="text" value='+goodnum+' style="width:30px;" readonly="readonly" /></div></div></div></li><li class="td td-sum"><div class="td-inner"><em tabindex="0" class="J_ItemSum number" id="items1" name="sprice">'+parseFloat(goodnum*56.9).toFixed(1)+'</em></div></li></ul><div class="clear"></div></div></div></tr><div class="clear"></div>';
				}
				if(num=="2"){
				    content.innerHTML+='<tr class="item-list"><div class="bundle  bundle-last"><div class="bundle-main"><ul class="item-content clearfix"><div class="pay-phone"><li class="td td-item"><div class="item-pic"><a href="/goodspage/introduction3.do" class="J_MakePoint"><img src="/images/guo80.png" class="itempic J_ItemImg"></a></div><div class="item-info"><div class="item-basic-info"><a href="/goodspage/introduction3.do" class="item-title J_MakePoint" data-point="tbcart.8.11">奶油味夏威夷果 奶油口味特产干货干果坚果零食小吃</a></div></div></li><li class="td td-info"><div class="item-props"><span class="sku-line">口味：奶香味</span><span class="sku-line">包装：精品包装</span></div></li><li class="td td-price"><div class="item-price price-promo-promo"><div class="price-content"><em class="J_Price price-now">49.90</em></div></div></li></div><li class="td td-amount"><div class="amount-wrapper "><div class="item-amount "><span class="phone-title">购买数量</span><div class="sl"><input class="text_box" name="goodsnumber" type="text" value='+goodnum+' style="width:30px;" readonly="readonly" /></div></div></div></li><li class="td td-sum"><div class="td-inner"><em tabindex="0" class="J_ItemSum number" name="sprice">'+parseFloat(goodnum*49.9).toFixed(1)+'</em></div></li></ul><div class="clear"></div></div></div></tr><div class="clear"></div>';
				}
				if(num=="3"){
                    content.innerHTML+='<tr class="item-list"><div class="bundle  bundle-last"><div class="bundle-main"><ul class="item-content clearfix"><div class="pay-phone"><li class="td td-item"><div class="item-pic"><a href="/goodspage/yuwan.do" class="J_MakePoint"><img src="/images/yu80.png" class="itempic J_ItemImg"></a></div><div class="item-info"><div class="item-basic-info"><a href="/goodspage/yuwan.do" class="item-title J_MakePoint" data-point="tbcart.8.11">良品铺子即食鱼丸零食 香辣味小吃休闲食品特产鱼麻辣烧烤味100g</a></div></div></li><li class="td td-info"><div class="item-props"><span class="sku-line">口味：麻辣</span><span class="sku-line">包装：精品包装</span></div></li><li class="td td-price"><div class="item-price price-promo-promo"><div class="price-content"><em class="J_Price price-now">16.90</em></div></div></li></div><li class="td td-amount"><div class="amount-wrapper "><div class="item-amount "><span class="phone-title">购买数量</span><div class="sl"><input class="text_box" name="goodsnumber" type="text" value='+goodnum+' style="width:30px;" readonly="readonly" /></div></div></div></li><li class="td td-sum"><div class="td-inner"><em tabindex="0" class="J_ItemSum number" name="sprice">'+parseFloat(goodnum*16.9).toFixed(1)+'</em></div></li></ul><div class="clear"></div></div></div></tr><div class="clear"></div>';
                }
                if(num=="4"){
                    content.innerHTML+='<tr class="item-list"><div class="bundle  bundle-last"><div class="bundle-main"><ul class="item-content clearfix"><div class="pay-phone"><li class="td td-item"><div class="item-pic"><a href="/goodspage/bread.do" class="J_MakePoint"><img src="/images/bread80.png" class="itempic J_ItemImg"></a></div><div class="item-info"><div class="item-basic-info"><a href="/goodspage/bread.do" class="item-title J_MakePoint" data-point="tbcart.8.11">良品铺子蒸蛋软面包零食点心糕点 </a></div></div></li><li class="td td-info"><div class="item-props"><span class="sku-line">口味：奶香味</span><span class="sku-line">包装：精品包装</span></div></li><li class="td td-price"><div class="item-price price-promo-promo"><div class="price-content"><em class="J_Price price-now">33.90</em></div></div></li></div><li class="td td-amount"><div class="amount-wrapper "><div class="item-amount "><span class="phone-title">购买数量</span><div class="sl"><input class="text_box" name="goodsnumber" type="text" value='+goodnum+' style="width:30px;" readonly="readonly"/></div></div></div></li><li class="td td-sum"><div class="td-inner"><em tabindex="0" class="J_ItemSum number" name="sprice">'+parseFloat(goodnum*33.9).toFixed(1)+'</em></div></li></ul><div class="clear"></div></div></div></tr><div class="clear"></div>';
                }
                if(num=='5'){
                    content.innerHTML+='<tr class="item-list"><div class="bundle  bundle-last"><div class="bundle-main"><ul class="item-content clearfix"><div class="pay-phone"><li class="td td-item"><div class="item-pic"><a href="/goodspage/zao.do" class="J_MakePoint"><img src="/images/zao80.png" class="itempic J_ItemImg"></a></div><div class="item-info"><div class="item-basic-info"><a href="/goodspage/zao.do" class="item-title J_MakePoint" data-point="tbcart.8.11">良品铺子脆枣无核果干  </a></div></div></li><li class="td td-info"><div class="item-props"><span class="sku-line">口味：原味</span><span class="sku-line">包装：精品包装</span></div></li><li class="td td-price"><div class="item-price price-promo-promo"><div class="price-content"><em class="J_Price price-now">19.90</em></div></div></li></div><li class="td td-amount"><div class="amount-wrapper "><div class="item-amount "><span class="phone-title">购买数量</span><div class="sl"><input class="text_box" name="goodsnumber" type="text" value='+goodnum+' style="width:30px;" readonly="readonly"/></div></div></div></li><li class="td td-sum"><div class="td-inner"><em tabindex="0" class="J_ItemSum number" name="sprice">'+parseFloat(goodnum*19.9).toFixed(1)+'</em></div></li></ul><div class="clear"></div></div></div></tr><div class="clear"></div>';
				}
				if(num=='6'){
                    content.innerHTML+='<tr class="item-list"><div class="bundle  bundle-last"><div class="bundle-main"><ul class="item-content clearfix"><div class="pay-phone"><li class="td td-item"><div class="item-pic"><a href="/goodspage/bull.do" class="J_MakePoint"><img src="/images/beef80.png" class="itempic J_ItemImg"></a></div><div class="item-info"><div class="item-basic-info"><a href="/goodspage/bull.do" class="item-title J_MakePoint" data-point="tbcart.8.11">良品铺子牛肉粒五香香辣小吃</a></div></div></li><li class="td td-info"><div class="item-props"><span class="sku-line">口味：原味</span><span class="sku-line">包装：精品包装</span></div></li><li class="td td-price"><div class="item-price price-promo-promo"><div class="price-content"><em class="J_Price price-now">15.90</em></div></div></li></div><li class="td td-amount"><div class="amount-wrapper "><div class="item-amount "><span class="phone-title">购买数量</span><div class="sl"><input class="text_box" name="goodsnumber" type="text" value='+goodnum+' style="width:30px;" readonly="readonly"/></div></div></div></li><li class="td td-sum"><div class="td-inner"><em tabindex="0" class="J_ItemSum number" name="sprice">'+parseFloat(goodnum*15.9).toFixed(1)+'</em></div></li></ul><div class="clear"></div></div></div></tr><div class="clear"></div>';
                }
                if(num=='7'){
				    content.innerHTML+='<tr class="item-list"><div class="bundle  bundle-last"><div class="bundle-main"><ul class="item-content clearfix"><div class="pay-phone"><li class="td td-item"><div class="item-pic"><a href="/goodspage/yellowfish.do" class="J_MakePoint"><img src="/images/huangyu80.png" class="itempic J_ItemImg"></a></div><div class="item-info"><div class="item-basic-info"><a href="/goodspage/yellowfish.do" class="item-title J_MakePoint" data-point="tbcart.8.11">良品铺子香辣小黄鱼小吃零食</a></div></div></li><li class="td td-info"><div class="item-props"><span class="sku-line">口味：麻辣</span><span class="sku-line">包装：精品包装</span></div></li><li class="td td-price"><div class="item-price price-promo-promo"><div class="price-content"><em class="J_Price price-now">18.90</em></div></div></li></div><li class="td td-amount"><div class="amount-wrapper "><div class="item-amount "><span class="phone-title">购买数量</span><div class="sl"><input class="text_box" name="goodsnumber" type="text" value='+goodnum+' style="width:30px;" readonly="readonly"/></div></div></div></li><li class="td td-sum"><div class="td-inner"><em tabindex="0" class="J_ItemSum number" name="sprice">'+parseFloat(goodnum*18.9).toFixed(1)+'</em></div></li></ul><div class="clear"></div></div></div></tr><div class="clear"></div>';
                }
                if(num=='8'){
                    content.innerHTML+='<tr class="item-list"><div class="bundle  bundle-last"><div class="bundle-main"><ul class="item-content clearfix"><div class="pay-phone"><li class="td td-item"><div class="item-pic"><a href="/goodspage/wangb.do" class="J_MakePoint"><img src="/images/huafu80.png" class="itempic J_ItemImg"></a></div><div class="item-info"><div class="item-basic-info"><a href="/goodspage/wangb.do" class="item-title J_MakePoint" data-point="tbcart.8.11">良品铺子华夫饼干糕点面包零食</a></div></div></li><li class="td td-info"><div class="item-props"><span class="sku-line">口味：原味</span><span class="sku-line">包装：精品包装</span></div></li><li class="td td-price"><div class="item-price price-promo-promo"><div class="price-content"><em class="J_Price price-now">27.90</em></div></div></li></div><li class="td td-amount"><div class="amount-wrapper "><div class="item-amount "><span class="phone-title">购买数量</span><div class="sl"><input class="text_box" name="goodsnumber" type="text" value='+goodnum+' style="width:30px;" readonly="readonly"/></div></div></div></li><li class="td td-sum"><div class="td-inner"><em tabindex="0" class="J_ItemSum number" name="sprice">'+parseFloat(goodnum*27.9).toFixed(1)+'</em></div></li></ul><div class="clear"></div></div></div></tr><div class="clear"></div>';
                }
                if(num=='9'){
                    content.innerHTML+='<tr class="item-list"><div class="bundle  bundle-last"><div class="bundle-main"><ul class="item-content clearfix"><div class="pay-phone"><li class="td td-item"><div class="item-pic"><a href="/goodspage/duck.do" class="J_MakePoint"><img src="/images/duckb80.png" class="itempic J_ItemImg"></a></div><div class="item-info"><div class="item-basic-info"><a href="/goodspage/duck.do" class="item-title J_MakePoint" data-point="tbcart.8.11">良品铺子麻辣鸭脖子零食小吃</a></div></div></li><li class="td td-info"><div class="item-props"><span class="sku-line">口味：麻辣</span><span class="sku-line">包装：精品包装</span></div></li><li class="td td-price"><div class="item-price price-promo-promo"><div class="price-content"><em class="J_Price price-now">18.90</em></div></div></li></div><li class="td td-amount"><div class="amount-wrapper "><div class="item-amount "><span class="phone-title">购买数量</span><div class="sl"><input class="text_box" name="goodsnumber" type="text" value='+goodnum+' style="width:30px;" readonly="readonly"/></div></div></div></li><li class="td td-sum"><div class="td-inner"><em tabindex="0" class="J_ItemSum number" name="sprice">'+parseFloat(goodnum*18.9).toFixed(1)+'</em></div></li></ul><div class="clear"></div></div></div></tr><div class="clear"></div>';

                }
                if(num=='10'){
                    content.innerHTML+='<tr class="item-list"><div class="bundle  bundle-last"><div class="bundle-main"><ul class="item-content clearfix"><div class="pay-phone"><li class="td td-item"><div class="item-pic"><a href="/goodspage/saurce.do" class="J_MakePoint"><img src="/images/chang80.png" class="itempic J_ItemImg"></a></div><div class="item-info"><div class="item-basic-info"><a href="/goodspage/saurce.do" class="item-title J_MakePoint" data-point="tbcart.8.11">良品铺子肉枣小香肠零食香辣熟食小吃</a></div></div></li><li class="td td-info"><div class="item-props"><span class="sku-line">口味：原味</span><span class="sku-line">包装：精品包装</span></div></li><li class="td td-price"><div class="item-price price-promo-promo"><div class="price-content"><em class="J_Price price-now">29.90</em></div></div></li></div><li class="td td-amount"><div class="amount-wrapper "><div class="item-amount "><span class="phone-title">购买数量</span><div class="sl"><input class="text_box" name="goodsnumber" type="text" value='+goodnum+' style="width:30px;" readonly="readonly"/></div></div></div></li><li class="td td-sum"><div class="td-inner"><em tabindex="0" class="J_ItemSum number" name="sprice">'+parseFloat(goodnum*29.9).toFixed(1)+'</em></div></li></ul><div class="clear"></div></div></div></tr><div class="clear"></div>';

				}
				if(num=='11'){
                    content.innerHTML+='<tr class="item-list"><div class="bundle  bundle-last"><div class="bundle-main"><ul class="item-content clearfix"><div class="pay-phone"><li class="td td-item"><div class="item-pic"><a href="/goodspage/tui.do" class="J_MakePoint"><img src="/images/tui80.png" class="itempic J_ItemImg"></a></div><div class="item-info"><div class="item-basic-info"><a href="/goodspage/tui.do" class="item-title J_MakePoint" data-point="tbcart.8.11">良品铺子奥尔良鸡腿零食熟食小吃</a></div></div></li><li class="td td-info"><div class="item-props"><span class="sku-line">口味：原味</span><span class="sku-line">包装：精品包装</span></div></li><li class="td td-price"><div class="item-price price-promo-promo"><div class="price-content"><em class="J_Price price-now">24.90</em></div></div></li></div><li class="td td-amount"><div class="amount-wrapper "><div class="item-amount "><span class="phone-title">购买数量</span><div class="sl"><input class="text_box" name="goodsnumber" type="text" value='+goodnum+' style="width:30px;" readonly="readonly"/></div></div></div></li><li class="td td-sum"><div class="td-inner"><em tabindex="0" class="J_ItemSum number" name="sprice">'+parseFloat(goodnum*24.9).toFixed(1)+'</em></div></li></ul><div class="clear"></div></div></div></tr><div class="clear"></div>';

                }
                if(num=='12'){
                    content.innerHTML+='<tr class="item-list"><div class="bundle  bundle-last"><div class="bundle-main"><ul class="item-content clearfix"><div class="pay-phone"><li class="td td-item"><div class="item-pic"><a href="/goodspage/jeal.do" class="J_MakePoint"><img src="/images/jeal80.png" class="itempic J_ItemImg"></a></div><div class="item-info"><div class="item-basic-info"><a href="/goodspage/jeal.do" class="item-title J_MakePoint" data-point="tbcart.8.11">良品铺子芒果果肉果冻布丁零食</a></div></div></li><li class="td td-info"><div class="item-props"><span class="sku-line">口味：芒果</span><span class="sku-line">包装：精品包装</span></div></li><li class="td td-price"><div class="item-price price-promo-promo"><div class="price-content"><em class="J_Price price-now">13.90</em></div></div></li></div><li class="td td-amount"><div class="amount-wrapper "><div class="item-amount "><span class="phone-title">购买数量</span><div class="sl"><input class="text_box" name="goodsnumber" type="text" value='+goodnum+' style="width:30px;" readonly="readonly"/></div></div></div></li><li class="td td-sum"><div class="td-inner"><em tabindex="0" class="J_ItemSum number" name="sprice">'+parseFloat(goodnum*13.9).toFixed(1)+'</em></div></li></ul><div class="clear"></div></div></div></tr><div class="clear"></div>';

                }
            }
		</script>

	</head>

	<body>

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
		<div class="nav white">

		</div>
		<div class="nav white">

		</div>

			<div class="clear"></div>
			<div class="concent">
				<!--地址 -->
				<div class="paycont">
					<div class="address">
						<h3>确认收货地址 </h3>
						<div class="control">
							<div class="tc-btn createAddr theme-login am-btn am-btn-danger" id="addnewaddress">使用新地址</div>
						</div>
						<div class="clear"></div>
						<ul>
							<div class="per-border"></div>
							<li class="user-addresslist defaultAddr">

								<div class="address-left">
									<div class="user DefaultAddr">

										<span class="buy-address-detail">
                                        <span class="buy-user" id="recievers">xxx</span>
										<span class="buy-phone" id="phonenum">xxxxxxxxx</span>
										</span>
									</div>
									<div class="default-address DefaultAddr">
										<span class="buy-line-title buy-line-title-type">收货地址：</span>
										<span class="buy--address-detail">
								   <span class="province" id="provi"></span>
										<span class="city"></span>
										<span class="dist"></span>
										<span class="street" id="describ"></span>
										</span>

										</span>
									</div>
									<ins class="deftip">默认地址</ins>
								</div>
								<div class="address-right">
									<a href="/mainpage/address.do">
										<span class="am-icon-angle-right am-icon-lg"></span></a>
								</div>
								<div class="clear"></div>

								<div class="new-addr-btn">
									<div class="tc-btn createAddr theme-login am-btn" id="editaddress">编辑</div>
								</div>

							</li>
							<div class="per-border"></div>
						</ul>

						<div class="clear"></div>
					</div>

					<div class="clear"></div>

					<!--支付方式-->
					<div class="logistics">
						<h3>选择支付方式</h3>
						<ul class="pay-list">
							<li class="pay card"><img src="/images/wangyin.jpg" />银联<span></span></li>
							<li class="pay qq"><img src="/images/weizhifu.jpg" />微信<span></span></li>
							<li class="pay taobao"><img src="/images/zhifubao.jpg" />支付宝<span></span></li>
						</ul>
					</div>
					<div class="clear"></div>

					<!--订单 -->
					<div class="concent">
						<div id="payTable">
							<h3>确认订单信息</h3>
							<div class="cart-table-th">
								<div class="wp">

									<div class="th th-item">
										<div class="td-inner">商品信息</div>
									</div>
									<div class="th th-price">
										<div class="td-inner">单价</div>
									</div>
									<div class="th th-amount">
										<div class="td-inner">数量</div>
									</div>
									<div class="th th-sum">
										<div class="td-inner">金额</div>
									</div>


								</div>
							</div>
							<div class="clear"></div>

							</div>
							<div class="clear"></div>
							<div class="pay-total">
						<!--留言-->
							<div class="order-extra">
								<div class="order-user-info">
									<div id="holyshit257" class="memo">
										<label>买家留言：</label>
										<input type="text" title="选填,对本次交易的说明（建议填写已经和卖家达成一致的说明）" placeholder="选填,建议填写和卖家达成一致的说明" class="memo-input J_MakePoint c2c-text-default memo-close">
										<div class="msg hidden J-msg">
											<p class="error">最多输入500个字符</p>
										</div>
									</div>
								</div>

							</div>

							<div class="clear"></div>
							</div>



							<!--信息 -->
							<div class="order-go clearfix">
								<div class="pay-confirm clearfix">
									<div class="box">
										<div tabindex="0" id="holyshit267" class="realPay"><em class="t">实付款：</em>
											<span class="price g_price ">
                                    <span>¥</span> <em class="style-large-bold-red " id="J_ActualFee">0</em>
											</span>
										</div>

										<div id="holyshit268" class="pay-address">

											<p class="buy-footer-address">
												<span class="buy-line-title buy-line-title-type">寄送至：</span>
												<span class="buy--address-detail">
								   <span class="province" id="provv">XX</span>
												<span class="street" id="conred">北远大大街3000号(长春工业大学)</span>
												</span>
												</span>
											</p>
											<p class="buy-footer-address">
												<span class="buy-line-title">收货人：</span>
												<span class="buy-address-detail">
                                         <span class="buy-user" id="reciever">xx</span>
												<span class="buy-phone" id="tele">15871145629</span>
												</span>
											</p>
										</div>
									</div>

									<div id="holyshit269" class="submitOrder">
										<div class="go-btn-wrap">
											<a id="J_Go" href="javascript:submitadd();" class="btn-go" tabindex="0" title="点击此按钮，提交订单">提交订单</a>
										</div>
									</div>
									<div class="clear"></div>
								</div>
							</div>
						</div>

						<div class="clear"></div>
					</div>
				</div>
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

							<em>© 2017-2027 工大的名义版权所有.</em>
						</p>
					</div>
				</div>
			</div>
			<div class="theme-popover-mask"></div>
			<div class="theme-popover">

				<!--标题 -->
				<div class="am-cf am-padding">
					<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg" id="addressname">新增地址</strong> / <small>Add address</small></div>
				</div>
				<hr/>

				<div class="am-u-md-12">
					<form class="am-form am-form-horizontal">

						<div class="am-form-group">
							<label for="user-name" class="am-form-label">收货人</label>
							<div class="am-form-content">
								<input type="text" id="user-name" placeholder="收货人">
							</div>
						</div>

						<div class="am-form-group">
							<label for="user-phone" class="am-form-label">手机号码</label>
							<div class="am-form-content">
								<input id="user-phone" placeholder="手机号必填" type="text">
							</div>
						</div>

						<div class="am-form-group">
							<label for="user-phone" class="am-form-label">所在地</label>
							<div class="am-form-content address" id="city">
								<select data-am-selected class="prov" id="provs">

								</select>
								<select data-am-selected class="city" disabled="disabled" id="citys">

								</select>
								<select data-am-selected class="dist" disabled="disabled" id="distes">

								</select>
							</div>
						</div>

						<div class="am-form-group">
							<label for="user-intro" class="am-form-label">详细地址</label>
							<div class="am-form-content">
								<textarea class="" rows="3" id="user-intro" placeholder="输入详细地址"></textarea>
								<small>25字以内写出你的详细地址...</small>
							</div>
						</div>

						<div class="am-form-group theme-poptit">
							<div class="am-u-sm-9 am-u-sm-push-3">
								<div class="am-btn am-btn-danger close" id="saveadd">保存</div>
								<div class="am-btn am-btn-danger close">取消</div>
							</div>
						</div>
					</form>
				</div>

			</div>

			<div class="clear"></div>
		<script type="text/javascript">
            $("#city").citySelect();
			$("#saveadd").click(function () {
			    var prov=$("#provs").val();
			    var city=$("#citys").val();
			    var dist=$("#distes").val();
			    if(dist==null){
			        dist="";
				}
				var addr=prov+"/"+city+"/"+dist;
			    var concreadd=$("#user-intro").val();
			    var reciever=$("#user-name").val();
			    var phone=$("#user-phone").val();
				$.ajax({
				    type:'post',
					url:'/mainpage/recievermsge.do',
					dataType:'json',
					data:{"addr":addr,"concreadd":concreadd,"reciever":reciever,"phone":phone},
					success:function () {
						alert("成功添加");
						document.getElementById("recievers").innerHTML=reciever;
						document.getElementById("phonenum").innerHTML=phone;
						document.getElementById("provi").innerHTML=addr;
						document.getElementById("describ").innerHTML=concreadd;
						location.reload();

                    },error:function () {
						alert("网络异常");
                    }
				});
            });
			function submitadd() {
				var sumprice= document.getElementById("J_ActualFee").innerHTML;
				var array=new Array();
				var array1=new Array();
				var length=document.getElementsByName("goodsnumber").length;
                for(var i=0;i<length;i++){
					array.push(document.getElementsByName("goodsnumber")[i].value);
					array1.push(parseFloat(document.getElementsByName("sprice")[i].innerHTML).toFixed(1));
                }
				$.ajax({
				    type:'post',
					url:'/mainpage/addtoOrder.do',  //增加订单到order表中
					dataType:'json',
					data:{"gnumbers":array,"prices":array1,"suprice":sumprice},
					success:function () {

                    },error:function () {
					alert("网络错误");
                    }

				});
                $.ajax({
                    type:'post',
                    url:'/mainpage/dealsubmit.do',  //删除购物车的订单
                    dataType:'json',
                    success:function () {
                      location.href="/mainpage/success.do";
                    },error:function () {
                        alert("网络异常哈");
                    }
                });
            }
		$("#editaddress").click(function () {
            var reciever=document.getElementById("recievers").innerHTML;
            var phonenum=document.getElementById("phonenum").innerHTML;
            var province=document.getElementById("provi").innerHTML;
            var concreadd=document.getElementById("describ").innerHTML;
            document.getElementById("addressname").innerHTML="编辑地址";
			document.getElementById("user-name").value=reciever;
			document.getElementById("user-phone").value=phonenum;
			document.getElementById("user-intro").innerText=concreadd;
        });
			$("#addnewaddress").click(function () {
                document.getElementById("user-name").value="";
                document.getElementById("user-name").value="";
                document.getElementById("user-phone").value="";
                document.getElementById("user-intro").value="";

            });


		</script>
	</body>

</html>