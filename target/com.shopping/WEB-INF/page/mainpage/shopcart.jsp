<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

	<title>购物车页面</title>

	<link href="/css/amazeui.css" rel="stylesheet" type="text/css" />
	<link href="/css/demo.css" rel="stylesheet" type="text/css" />
	<link href="/css/cartstyle.css" rel="stylesheet" type="text/css" />
	<link href="/css/optstyle.css" rel="stylesheet" type="text/css" />

	<script type="text/javascript" src="/js/jquery.js"></script>
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
            url:'/mainpage/showcar.do',
            dataType:'json',
            success:function (data) {
                for(var i=0;i<data.listnum.length;i++){
                    appendata(data.listnum[i],data.listgid[i]);
                }
            },error:function () {
                alert("网络异常");
            }
        });
        function appendata(num,id) {
            var item=document.getElementById("gooditem");
            if(id=='1'){
                item.innerHTML+='<ul class="item-content clearfix"><li class="td td-chk"><div class="cart-checkbox " id="1"><input class="check" id="J_CheckBox_170769542747" name="items[]" value="56.9" type="checkbox" onclick="caculate()"><label for="J_CheckBox_170769542747"></label></div></li><li class="td td-item"><div class="item-pic"><a href="/goodspage/introduction4.do" target="_blank" data-title="良品铺子手剥松子 开口东北手拨红松子" class="J_MakePoint" data-point="tbcart.8.12"><img src="/images/songzi.jpg" class="itempic J_ItemImg"></a></div><div class="item-info"><div class="item-basic-info"><a href="/goodspage/introduction4.do" target="_blank" title="良品铺子手剥松子 开口东北手拨红松子" class="item-title J_MakePoint" data-point="tbcart.8.11">良品铺子手剥松子 开口东北手拨红松子</a></div></div></li><li class="td td-price"><div class="item-price price-promo-promo"><div class="price-content"><div class="price-line"><em class="price-original">78.00</em></div><div class="price-line"><em class="J_Price price-now" tabindex="0">56.90</em></div></div></div></li><li class="td td-amount"><div class="amount-wrapper "><div class="item-amount "><div class="sl"><input class="text_box" name="numberss" type="text" value='+num+' style="width:30px;" readonly="readonly"/></div></div></div></li><li class="td td-sum"><div class="td-inner"><em tabindex="0" class="J_ItemSum number" id="price1">117.00</em></div></li><li class="td td-op"><div class="td-inner"><a href="javascript:deletegoods(1);" data-point-url="#" class="delete">删除</a></div></li></ul>';
                document.getElementById("price1").innerHTML=parseFloat(56.9*num).toFixed(1);
            }
            if(id=='2'){
                item.innerHTML+='<ul class="item-content clearfix"><li class="td td-chk"><div class="cart-checkbox " id="2"><input class="check" id="J_CheckBox_170769542748" name="items[]" value="49.9" type="checkbox" onclick="caculate()" ><label for="J_CheckBox_170769542747"></label></div></li><li class="td td-item"><div class="item-pic"><a href="/goodspage/introduction3.do" target="_blank" data-title="奶油味夏威夷果 奶油口味特产干货干果坚果零食小吃" class="J_MakePoint" data-point="tbcart.8.12"><img src="/images/xia.png" class="itempic J_ItemImg"></a></div><div class="item-info"><div class="item-basic-info"><a href="/goodspage/introduction3.do" target="_blank" title="奶油味夏威夷果 奶油口味特产干货干果坚果零食小吃" class="item-title J_MakePoint" data-point="tbcart.8.11">奶油味夏威夷果 奶油口味特产干货干果坚果零食小吃</a></div></div></li><li class="td td-price"><div class="item-price price-promo-promo"><div class="price-content"><div class="price-line"><em class="price-original">78.00</em></div><div class="price-line"><em class="J_Price price-now" tabindex="0">49.90</em></div></div></div></li><li class="td td-amount"><div class="amount-wrapper "><div class="item-amount "><div class="sl"><input class="text_box" name="numberss" type="text" value='+num+' style="width:30px;" readonly="readonly" /></div></div></div></li><li class="td td-sum"><div class="td-inner"><em tabindex="0" class="J_ItemSum number" id="price2">117.00</em></div></li><li class="td td-op"><div class="td-inner"><a href="javascript:deletegoods(2);" data-point-url="#" class="delete">删除</a></div></li></ul>';
                document.getElementById("price2").innerHTML=parseFloat(49.9*num).toFixed(1);
            }
            if(id=='3'){
                item.innerHTML+='<ul class="item-content clearfix"><li class="td td-chk"><div class="cart-checkbox " id="3"><input class="check" id="J_CheckBox_170769542749" name="items[]" value="16.9" type="checkbox" onclick="caculate()"><label for="J_CheckBox_170769542747"></label></div></li><li class="td td-item"><div class="item-pic"><a href="/goodspage/yuwan.do" target="_blank" data-title="良品铺子即食鱼丸零食 香辣味小吃休闲食品特产鱼麻辣烧烤味100g" class="J_MakePoint" data-point="tbcart.8.12"><img src="/images/yuwan2.png" class="itempic J_ItemImg"></a></div><div class="item-info"><div class="item-basic-info"><a href="/goodspage/yuwan.do" target="_blank" title="良品铺子即食鱼丸零食 香辣味小吃休闲食品特产鱼麻辣烧烤味100g" class="item-title J_MakePoint" data-point="tbcart.8.11">良品铺子即食鱼丸零食 香辣味小吃休闲食品特产鱼麻辣烧烤味100g</a></div></div></li><li class="td td-price"><div class="item-price price-promo-promo"><div class="price-content"><div class="price-line"><em class="price-original">78.00</em></div><div class="price-line"><em class="J_Price price-now" tabindex="0">16.90</em></div></div></div></li><li class="td td-amount"><div class="amount-wrapper "><div class="item-amount "><div class="sl"><input class="text_box" name="numberss" type="text" value='+num+' style="width:30px;" readonly="readonly" /></div></div></div></li><li class="td td-sum"><div class="td-inner"><em tabindex="0" class="J_ItemSum number" id="price3">117.00</em></div></li><li class="td td-op"><div class="td-inner"><a href="javascript:deletegoods(3);" data-point-url="#" class="delete">删除</a></div></li></ul>';
                document.getElementById("price3").innerHTML=parseFloat(16.9*num).toFixed(1);
            }
            if(id=='4'){
                item.innerHTML+='<ul class="item-content clearfix"><li class="td td-chk"><div class="cart-checkbox " id="4"><input class="check" id="J_CheckBox_170769542750" name="items[]" value="33.9" type="checkbox" onclick="caculate()"><label for="J_CheckBox_170769542747"></label></div></li><li class="td td-item"><div class="item-pic"><a href="/goodspage/bread.do" target="_blank" data-title="良品铺子蒸蛋糕软面包营养早餐面包" class="J_MakePoint" data-point="tbcart.8.12"><img src="/images/ruanb.png" class="itempic J_ItemImg"></a></div><div class="item-info"><div class="item-basic-info"><a href="/goodspage/bread.do" target="_blank" title="良品铺子蒸蛋糕软面包营养早餐面包" class="item-title J_MakePoint" data-point="tbcart.8.11">良品铺子蒸蛋糕软面包营养早餐面包</a></div></div></li><li class="td td-price"><div class="item-price price-promo-promo"><div class="price-content"><div class="price-line"><em class="price-original">78.00</em></div><div class="price-line"><em class="J_Price price-now" tabindex="0">33.90</em></div></div></div></li><li class="td td-amount"><div class="amount-wrapper "><div class="item-amount "><div class="sl"><input class="text_box" name="numberss" type="text" value='+num+' style="width:30px;" readonly="readonly"/></div></div></div></li><li class="td td-sum"><div class="td-inner"><em tabindex="0" class="J_ItemSum number" id="price4">117.00</em></div></li><li class="td td-op"><div class="td-inner"><a href="javascript:deletegoods(4);" data-point-url="#" class="delete">删除</a></div></li></ul>';
                document.getElementById("price4").innerHTML=parseFloat(33.9*num).toFixed(1);
            }
            if(id=='5'){
                item.innerHTML+='<ul class="item-content clearfix"><li class="td td-chk"><div class="cart-checkbox " id="5"><input class="check" id="J_CheckBox_170769542751" name="items[]" value="19.9" type="checkbox" onclick="caculate()"><label for="J_CheckBox_170769542747"></label></div></li><li class="td td-item"><div class="item-pic"><a href="/goodspage/zao.do" target="_blank" data-title="良品铺子脆冬枣无核酥脆脆枣黄骅冬枣子红枣" class="J_MakePoint" data-point="tbcart.8.12"><img src="/images/zaoo.png" class="itempic J_ItemImg"></a></div><div class="item-info"><div class="item-basic-info"><a href="/goodspage/zao.do" target="_blank" title="良品铺子脆冬枣无核酥脆脆枣黄骅冬枣子红枣" class="item-title J_MakePoint" data-point="tbcart.8.11">良品铺子脆冬枣无核酥脆脆枣黄骅冬枣子红枣</a></div></div></li><li class="td td-price"><div class="item-price price-promo-promo"><div class="price-content"><div class="price-line"><em class="price-original">48.00</em></div><div class="price-line"><em class="J_Price price-now" tabindex="0">19.90</em></div></div></div></li><li class="td td-amount"><div class="amount-wrapper "><div class="item-amount "><div class="sl"><input class="text_box" name="numberss" type="text" value='+num+' style="width:30px;" readonly="readonly"/></div></div></div></li><li class="td td-sum"><div class="td-inner"><em tabindex="0" class="J_ItemSum number" id="price5">117.00</em></div></li><li class="td td-op"><div class="td-inner"><a href="javascript:deletegoods(5);" data-point-url="#" class="delete">删除</a></div></li></ul>';
                document.getElementById("price5").innerHTML=parseFloat(19.9*num).toFixed(1);
            }
            if(id=='6'){
                item.innerHTML+='<ul class="item-content clearfix"><li class="td td-chk"><div class="cart-checkbox " id="6"><input class="check" id="J_CheckBox_170769542752" name="items[]" value="15.9" type="checkbox" onclick="caculate()"><label for="J_CheckBox_170769542747"></label></div></li><li class="td td-item"><div class="item-pic"><a href="/goodspage/bull.do" target="_blank" data-title="良品铺子牛肉粒五香味香辣牛肉干独立小包" class="J_MakePoint" data-point="tbcart.8.12"><img src="/images/niur.png" class="itempic J_ItemImg"></a></div><div class="item-info"><div class="item-basic-info"><a href="/goodspage/bull.do" target="_blank" title="良品铺子牛肉粒五香味香辣牛肉干独立小包" class="item-title J_MakePoint" data-point="tbcart.8.11">良品铺子牛肉粒五香味香辣牛肉干独立小包</a></div></div></li><li class="td td-price"><div class="item-price price-promo-promo"><div class="price-content"><div class="price-line"><em class="price-original">38.00</em></div><div class="price-line"><em class="J_Price price-now" tabindex="0">15.90</em></div></div></div></li><li class="td td-amount"><div class="amount-wrapper "><div class="item-amount "><div class="sl"><input class="text_box" name="numberss" type="text" value='+num+' style="width:30px;" readonly="readonly"/></div></div></div></li><li class="td td-sum"><div class="td-inner"><em tabindex="0" class="J_ItemSum number" id="price6">117.00</em></div></li><li class="td td-op"><div class="td-inner"><a href="javascript:deletegoods(6);" data-point-url="#" class="delete">删除</a></div></li></ul>';
                document.getElementById("price6").innerHTML=parseFloat(15.9*num).toFixed(1);
            }
            if(id=='7'){
                item.innerHTML+='<ul class="item-content clearfix"><li class="td td-chk"><div class="cart-checkbox " id="7"><input class="check" id="J_CheckBox_170769542753" name="items[]" value="18.9" type="checkbox" onclick="caculate()"><label for="J_CheckBox_170769542747"></label></div></li><li class="td td-item"><div class="item-pic"><a href="/goodspage/yellowfish.do" target="_blank" data-title="良品铺子香酥小黄鱼舟山特产香辣味小吃" class="J_MakePoint" data-point="tbcart.8.12"><img src="/images/hyu.png" class="itempic J_ItemImg"></a></div><div class="item-info"><div class="item-basic-info"><a href="/goodspage/yellowfish.do" target="_blank" title="良品铺子香酥小黄鱼舟山特产香辣味小吃" class="item-title J_MakePoint" data-point="tbcart.8.11">良品铺子香酥小黄鱼舟山特产香辣味小吃</a></div></div></li><li class="td td-price"><div class="item-price price-promo-promo"><div class="price-content"><div class="price-line"><em class="price-original">38.00</em></div><div class="price-line"><em class="J_Price price-now" tabindex="0">18.90</em></div></div></div></li><li class="td td-amount"><div class="amount-wrapper "><div class="item-amount "><div class="sl"><input class="text_box" name="numberss" type="text" value='+num+' style="width:30px;" readonly="readonly"/></div></div></div></li><li class="td td-sum"><div class="td-inner"><em tabindex="0" class="J_ItemSum number" id="price7">117.00</em></div></li><li class="td td-op"><div class="td-inner"><a href="javascript:deletegoods(7);" data-point-url="#" class="delete">删除</a></div></li></ul>';
                document.getElementById("price7").innerHTML=parseFloat(18.9*num).toFixed(1);
            }
            if(id=='8'){
                item.innerHTML+='<ul class="item-content clearfix"><li class="td td-chk"><div class="cart-checkbox " id="8"><input class="check" id="J_CheckBox_170769542754" name="items[]" value="27.9" type="checkbox" onclick="caculate()"><label for="J_CheckBox_170769542747"></label></div></li><li class="td td-item"><div class="item-pic"><a href="/goodspage/wangb.do" target="_blank" data-title="良品铺子奶香华夫饼干糕点面包 早餐食品点心" class="J_MakePoint" data-point="tbcart.8.12"><img src="/images/huafu.png" class="itempic J_ItemImg"></a></div><div class="item-info"><div class="item-basic-info"><a href="/goodspage/wangb.do" target="_blank" title="良品铺子奶香华夫饼干糕点面包 早餐食品点心" class="item-title J_MakePoint" data-point="tbcart.8.11">良品铺子奶香华夫饼干糕点面包 早餐食品点心</a></div></div></li><li class="td td-price"><div class="item-price price-promo-promo"><div class="price-content"><div class="price-line"><em class="price-original">38.00</em></div><div class="price-line"><em class="J_Price price-now" tabindex="0">27.90</em></div></div></div></li><li class="td td-amount"><div class="amount-wrapper "><div class="item-amount "><div class="sl"><input class="text_box" name="numberss" type="text" value='+num+' style="width:30px;" readonly="readonly"/></div></div></div></li><li class="td td-sum"><div class="td-inner"><em tabindex="0" class="J_ItemSum number" id="price8">117.00</em></div></li><li class="td td-op"><div class="td-inner"><a href="javascript:deletegoods(8);" data-point-url="#" class="delete">删除</a></div></li></ul>';
                document.getElementById("price8").innerHTML=parseFloat(27.9*num).toFixed(1);
            }
            if(id=='9'){
                item.innerHTML+='<ul class="item-content clearfix"><li class="td td-chk"><div class="cart-checkbox " id="9"><input class="check" id="J_CheckBox_170769542755" name="items[]" value="18.9" type="checkbox" onclick="caculate()"><label for="J_CheckBox_170769542747"></label></div></li><li class="td td-item"><div class="item-pic"><a href="/goodspage/duck.do" target="_blank" data-title="良品铺子麻辣鸭脖子 甜辣味真空小包装香辣" class="J_MakePoint" data-point="tbcart.8.12"><img src="/images/duckb.png" class="itempic J_ItemImg"></a></div><div class="item-info"><div class="item-basic-info"><a href="/goodspage/duck.do" target="_blank" title="良品铺子麻辣鸭脖子 甜辣味真空小包装香辣" class="item-title J_MakePoint" data-point="tbcart.8.11">	良品铺子麻辣鸭脖子 甜辣味真空小包装香辣</a></div></div></li><li class="td td-price"><div class="item-price price-promo-promo"><div class="price-content"><div class="price-line"><em class="price-original">38.00</em></div><div class="price-line"><em class="J_Price price-now" tabindex="0">18.90</em></div></div></div></li><li class="td td-amount"><div class="amount-wrapper "><div class="item-amount "><div class="sl"><input class="text_box" name="numberss" type="text" value='+num+' style="width:30px;" readonly="readonly"/></div></div></div></li><li class="td td-sum"><div class="td-inner"><em tabindex="0" class="J_ItemSum number" id="price9">117.00</em></div></li><li class="td td-op"><div class="td-inner"><a href="javascript:deletegoods(9);" data-point-url="#" class="delete">删除</a></div></li></ul>';
                document.getElementById("price9").innerHTML=parseFloat(18.9*num).toFixed(1);
            }
            if(id=='10'){
                item.innerHTML+='<ul class="item-content clearfix"><li class="td td-chk"><div class="cart-checkbox " id="10"><input class="check" id="J_CheckBox_170769542756" name="items[]" value="29.9" type="checkbox" onclick="caculate()"><label for="J_CheckBox_170769542747"></label></div></li><li class="td td-item"><div class="item-pic"><a href="/goodspage/saurce.do" target="_blank" data-title="良品铺子肉枣小香肠零食香辣熟食小吃" class="J_MakePoint" data-point="tbcart.8.12"><img src="/images/xchang.png" class="itempic J_ItemImg"></a></div><div class="item-info"><div class="item-basic-info"><a href="/goodspage/saurce.do" target="_blank" title="良品铺子肉枣小香肠零食香辣熟食小吃" class="item-title J_MakePoint" data-point="tbcart.8.11">	良品铺子肉枣小香肠零食香辣熟食小吃</a></div></div></li><li class="td td-price"><div class="item-price price-promo-promo"><div class="price-content"><div class="price-line"><em class="price-original">58.00</em></div><div class="price-line"><em class="J_Price price-now" tabindex="0">29.90</em></div></div></div></li><li class="td td-amount"><div class="amount-wrapper "><div class="item-amount "><div class="sl"><input class="text_box" name="numberss" type="text" value='+num+' style="width:30px;" readonly="readonly"/></div></div></div></li><li class="td td-sum"><div class="td-inner"><em tabindex="0" class="J_ItemSum number" id="price10">117.00</em></div></li><li class="td td-op"><div class="td-inner"><a href="javascript:deletegoods(10);" data-point-url="#" class="delete">删除</a></div></li></ul>';
                document.getElementById("price10").innerHTML=parseFloat(29.9*num).toFixed(1);
            }
            if(id=='11'){
                item.innerHTML+='<ul class="item-content clearfix"><li class="td td-chk"><div class="cart-checkbox " id="11"><input class="check" id="J_CheckBox_170769542757" name="items[]" value="24.9" type="checkbox" onclick="caculate()"><label for="J_CheckBox_170769542747"></label></div></li><li class="td td-item"><div class="item-pic"><a href="/goodspage/tui.do" target="_blank" data-title="良品铺子小鸡腿奥尔良鸡腿零食真空鸡翅" class="J_MakePoint" data-point="tbcart.8.12"><img src="/images/jtui.png" class="itempic J_ItemImg"></a></div><div class="item-info"><div class="item-basic-info"><a href="/goodspage/tui.do" target="_blank" title="良品铺子小鸡腿奥尔良鸡腿零食真空鸡翅" class="item-title J_MakePoint" data-point="tbcart.8.11">良品铺子小鸡腿奥尔良鸡腿零食真空鸡翅</a></div></div></li><li class="td td-price"><div class="item-price price-promo-promo"><div class="price-content"><div class="price-line"><em class="price-original">58.00</em></div><div class="price-line"><em class="J_Price price-now" tabindex="0">24.90</em></div></div></div></li><li class="td td-amount"><div class="amount-wrapper "><div class="item-amount "><div class="sl"><input class="text_box" name="numberss" type="text" value='+num+' style="width:30px;" readonly="readonly"/></div></div></div></li><li class="td td-sum"><div class="td-inner"><em tabindex="0" class="J_ItemSum number" id="price11">117.00</em></div></li><li class="td td-op"><div class="td-inner"><a href="javascript:deletegoods(11);" data-point-url="#" class="delete">删除</a></div></li></ul>';
                document.getElementById("price11").innerHTML=parseFloat(24.9*num).toFixed(1);
            }
            if(id=='12'){
                item.innerHTML+='<ul class="item-content clearfix"><li class="td td-chk"><div class="cart-checkbox " id="12"><input class="check" id="J_CheckBox_170769542758" name="items[]" value="13.9" type="checkbox" onclick="caculate()"><label for="J_CheckBox_170769542747"></label></div></li><li class="td td-item"><div class="item-pic"><a href="/goodspage/jeal.do" target="_blank" data-title="良品铺子果肉果冻大礼包芒果布丁夏天零食" class="J_MakePoint" data-point="tbcart.8.12"><img src="/images/dong.png" class="itempic J_ItemImg"></a></div><div class="item-info"><div class="item-basic-info"><a href="/goodspage/jeal.do" target="_blank" title="良品铺子果肉果冻大礼包芒果布丁夏天零食" class="item-title J_MakePoint" data-point="tbcart.8.11">良品铺子果肉果冻大礼包芒果布丁夏天零食</a></div></div></li><li class="td td-price"><div class="item-price price-promo-promo"><div class="price-content"><div class="price-line"><em class="price-original">38.00</em></div><div class="price-line"><em class="J_Price price-now" tabindex="0">13.90</em></div></div></div></li><li class="td td-amount"><div class="amount-wrapper "><div class="item-amount "><div class="sl"><input class="text_box" name="numberss" type="text" value='+num+' style="width:30px;" readonly="readonly"/></div></div></div></li><li class="td td-sum"><div class="td-inner"><em tabindex="0" class="J_ItemSum number" id="price12">117.00</em></div></li><li class="td td-op"><div class="td-inner"><a href="javascript:deletegoods(12);" data-point-url="#" class="delete">删除</a></div></li></ul>';
                document.getElementById("price12").innerHTML=parseFloat(13.9*num).toFixed(1);
            }
        }
        function deletegoods(id) {
            $.ajax({
                type:'post',
                url:'/mainpage/deletefromcar.do',
                dataType:'json',
                data:{'gid':id},
                success:function () {
                    location.reload();//先这样写，以后再来改进
                },error:function () {
                    alert('网络异常');
                }
            });

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

<!--购物车 -->
<div class="concent">
	<div id="cartTable">
		<div class="cart-table-th">
			<div class="wp">
				<div class="th th-chk">
					<div id="J_SelectAll1" class="select-all J_SelectAll">

					</div>
				</div>
				<div class="th th-item">
					<div class="td-inner">商品信息</div>
				</div>

			</div>
		</div>
		<div class="clear"></div>

		<tr class="item-list">
			<div class="bundle  bundle-last ">
				<div class="bundle-hd">
					<div class="bd-promos">
						<span class="list-change theme-login">编辑</span>
					</div>
				</div>
				<div class="clear"></div>
				<div class="bundle-main">
				</div>
			</div>
		</tr>
		<div class="clear"></div>

		<tr class="item-list">
			<div class="bundle  bundle-last ">

				<div class="clear"></div>
				<div class="bundle-main" id="gooditem">









				</div>
			</div>
		</tr>
	</div>
	<div class="clear"></div>

	<div class="float-bar-wrapper">
		<div id="J_SelectAll2" class="select-all J_SelectAll">
			<div class="cart-checkbox">
				<input class="check-all check" id="J_SelectAllCbx2" name="select-all" value="true" type="checkbox" onclick="showchecked()">
				<label for="J_SelectAllCbx2"></label>
			</div>
			<span>全选</span>
		</div>
		<div class="operations">
			<a href="javascript:deleteselect();" hidefocus="true" class="deleteAll">删除</a>
		</div>
		<div class="float-bar-right">
			<div class="amount-sum">
				<span class="txt">已选商品</span>
				<em id="J_SelectedItemsCount">0</em><span class="txt">件</span>
				<div class="arrow-box">
					<span class="selected-items-arrow"></span>
					<span class="arrow"></span>
				</div>
			</div>
			<div class="price-sum">
				<span class="txt">合计:</span>
				<strong class="price">¥<em id="J_Total">0.00</em></strong>
			</div>
			<div class="btn-area">
				<a href="javascript:sumprice();" id="J_Go" class="submit-btn submit-btn-disabled" aria-label="请注意如果没有选择宝贝，将无法结算">
					<span>结&nbsp;算</span></a>
			</div>
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
<!--操作页面-->



<!--引导 -->
<div class="navCir">
	<li><a href="/mainpage/home.do"><i class="am-icon-home "></i>首页</a></li>
	<li class="active"><a href="/mainpage/shopcart.do">购物车</a></li>
	<li><a href="/mainpage/personcenter.do">我的</a></li>
</div>

<script type="text/javascript">
    function caculate() {

        var result=0;
        var itemss=0;
        for(var i=0;i<document.getElementsByName("items[]").length;i++){
            if(document.getElementsByName("items[]")[i].checked==true){
                var numbers=document.getElementsByName("numberss")[i].value;
                var value=document.getElementsByName("items[]")[i].value;
                itemss+=1;
                result+=value*numbers;

            }
            document.getElementById("J_Total").innerHTML=parseFloat(result).toFixed(1);
            document.getElementById("J_SelectedItemsCount").innerHTML=itemss;

        }


    }
    $("#J_SelectAllCbx2").click(function () {
        if(document.getElementById("J_SelectAllCbx2").checked==true){
            for(var i=0;i<document.getElementsByName("items[]").length;i++){
                document.getElementsByName("items[]")[i].checked=true;
            }
        }else{
            for(var i=0;i<document.getElementsByName("items[]").length;i++){
                document.getElementsByName("items[]")[i].checked=false;
            }
        }
        caculate();
    });
    function deleteselect() {
        var arra=new Array();
        for(var i=0;i<document.getElementsByName("items[]").length;i++){
            if(document.getElementsByName("items[]")[i].checked==true){
                arra.push(document.getElementsByClassName("cart-checkbox")[i].getAttribute("id"));
            }
        }
        $.ajax({
            type:'post',
            url:'/mainpage/deleteselect.do',
            dataType:'json',
            data:{"arrays":arra},
            success:function () {
                alert("批量删除成功");
                location.reload();
            },error:function () {
                alert("网络错误");
            }
        });
    }
    function sumprice() {
        var sum=document.getElementById("J_Total").innerHTML;
        var arra=new Array();
        for(var i=0;i<document.getElementsByName("items[]").length;i++){
            if(document.getElementsByName("items[]")[i].checked==true){
                arra.push(document.getElementsByClassName("cart-checkbox")[i].getAttribute("id"));
            }
        }
        if(arra.length==0) {
            alert("当前购物车为空或者您没有选中商品");
		}else {
            $.ajax({
                type: 'post',
                dataType: 'json',
                url: '/mainpage/sumprice.do',
                data: {"array": arra, "sum": sum},
                success: function (data) {
                    location.href = "/mainpage/pay.do";

                }, error: function () {
                    alert("网络错误");
                }
            });
        }

    }
    $("#ai-topsearch").click(function () {
        var searchword=document.getElementById("searchInput").value;
        $.ajax({
            type:'post',
            url:'/mainpage/searchgoods.do',
            dataType:'json',
            data:{"searchresult":searchword},
            success:function () {
                location.href='/mainpage/searchresult.do';

            },error:function () {
                alert("网络错误");
            }

        });

    });
</script>
</body>

</html>