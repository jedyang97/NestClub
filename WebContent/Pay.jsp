<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=yes"/>
    <title>MiniCheckout</title>
    <link rel="stylesheet" type="text/css" href="css/pinus.css">
</head>
<body>
<header>
    <div class="h_content">
        <span></span>
    </div>
</header>
<section class="block">
    <div class="content2">
        <div class="app">
            <span class="iphone"><img src="img/bgpic.jpg" width="100%" height="auto"></span>
            <label class="text_amount">
                <input name="amount" id="amount" type="text" placeholder="金 额" value="${amount}" />
            </label>

            <div class="ch">
                <span class="up" onclick="app_pay('wx')">微 信</span>
                <span class="up" onclick="app_pay('alipay')">支付宝</span>
                <span class="up" onclick="app_pay('upmp')">银联(upmp)</span>
                <span class="up" onclick="app_pay('upacp')">银联(upacp)</span>
                <span class="up" onclick="app_pay('bfb')">百度钱包</span>
                <span class="up" onclick="wap_pay('upmp_wap')">银联WAP(upmp)</span>
                <span class="up" onclick="wap_pay('upacp_wap')">银联WAP(upacp)</span>
                <span class="up" onclick="wap_pay('alipay_wap')">支付宝WAP</span>
                <span class="up" onclick="wap_pay('bfb_wap')">百付宝WAP</span>
            </div>
        </div>
    </div>
</section>
<script src="js/pingpp_pay.js" type="text/javascript"></script>
<script>
	function wap_pay(channel) {
	    var amount = document.getElementById('amount').value * 100;
	
	    var pay_url = "YOUR-URL";
	
	    var xhr = new XMLHttpRequest();
	    xhr.open("POST", pay_url, true);
	    xhr.setRequestHeader("Content-type", "application/json");
	    xhr.send(JSON.stringify({
	        channel: channel,
	        amount: amount
	    }));
	
	    xhr.onreadystatechange = function () {
	        if (xhr.readyState == 4 && xhr.status == 200) {
	            console.log(xhr.responseText);
	            pingpp.createPayment(xhr.responseText, function(result, err) {
	                console.log(result);
	                console.log(err);
	            });
	        }
	    }
	}
	
	// app_pay 需要配合 example-webview 的 iOS 或者 Android 项目使用。
	function app_pay(channel) {
	    var amount = document.getElementById('amount').value * 100;
	    if (typeof PINGPP_IOS_SDK !== 'undefined') {
	        PINGPP_IOS_SDK.callPay(channel, amount);
	    } else if (typeof PINGPP_ANDROID_SDK !== 'undefined') {
	        PINGPP_ANDROID_SDK.callPay(channel, amount);
	    }
	}
</script>
</body>
</html>