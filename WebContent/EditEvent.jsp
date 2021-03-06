<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title><s:property value="getText('global.editActivity')" /></title>

<!-- Bootstrap core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/reverse.css" rel="stylesheet">
<link href="css/creative.css" rel="stylesheet">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->

<script type="text/javascript">
function change(checked) {
	if (checked == true) {
		document.getElementById("changeDiv").style.display = "block";
		document.getElementById("yooPayEventName").required = true;
		document.getElementById("yooPayEventName").value = "";
		document.getElementById("yooPayEventName").focus();
	} else {
		document.getElementById("changeDiv").style.display = "none";
		document.getElementById("yooPayEventName").required = false;
		document.getElementById("yooPayEventName").value = null;
	}
}
</script>

</head>
<body class="bg-success">
<jsp:include page="Navigator.jsp" />

<form action="EditEvent" method="post" enctype="multipart/form-data" class="form-horizontal container-fluid">

  <h2 class="form-reverse-heading form-reverse"><s:property value="getText('global.editASocialActivity')" /></h2>
  <hr class="light">
  
  <div class="form-group">
    <label for="eventName" class="col-sm-2 control-label"><s:property value="getText('global.activityName')" /></label>
    <div class="col-sm-8">
      <input name="name" value="<s:property value="event.name" />" type="text" id="EventName" class="form-control" placeholder="Event Name" readonly />
    </div>
  </div>
  <div class="form-group">
    <label for="address" class="col-sm-2 control-label"><s:property value="getText('global.address')" /></label>
    <div class="col-sm-8">
      <input name="address" value="<s:property value="event.address" />" type="text" id="address" class="form-control" placeholder="Address" required />
    </div>
  </div>
  <div class="form-group">
    <label for="date" class="col-sm-2 control-label"><s:property value="getText('global.date')" /></label>
    <div class="col-sm-8">
      <input name="date" value="<s:property value="event.date" />" type="text" id="date" class="form-control" placeholder="YYYY-MM-DD" required />
    </div>
  </div>
  <div class="form-group">
    <label for="time" class="col-sm-2 control-label"><s:property value="getText('global.time')" /></label>
    <div class="col-sm-8">
      <input name="time" value="<s:property value="event.time" />" type="text" id="time" class="form-control" placeholder="HH:MM ~ HH:MM" required />
    </div>
  </div>
  <div class="form-group">
    <label for="dressCode" class="col-sm-2 control-label"><s:property value="getText('global.dressCode')" /></label>
    <div class="col-sm-8">
      <input name="dressCode" value="<s:property value="event.dressCode" />" type="text" id="dressCode" class="form-control" placeholder="Dress Code" required />
    </div>
  </div>
  <div class="form-group">
    <label for="description" class="col-sm-2 control-label"><s:property value="getText('global.description')" /></label>
    <div class="col-sm-8">
	  <!-- UEditor -->
      <script id="description" name="description" type="text/plain">
	    <s:property value="event.description" escape="false" />
	  </script>
	</div>
  </div>
  <div class="form-group">
    <label for="poster" class="col-sm-2 control-label"><s:property value="getText('global.poster')" /></label>
    <div class="col-sm-8">
      <input type="file" name="poster" id="poster" class="form-control" />
    </div>
  </div>
  <div class="form-group">
    <label for="items" class="col-sm-2 control-label"><s:property value="getText('global.items')" /></label>
    <div class="col-sm-8">
	    <div class="checkbox">
	      <label><input name="items" value="lastName" type="checkbox" onclick="return false;" checked /> <s:property value="getText('global.lastName')" /></label>
	    </div>
	    <div class="checkbox">
	      <label><input name="items" value="firstName" type="checkbox" onclick="return false;" checked /> <s:property value="getText('global.firstName')" /></label>
	    </div>
	    <div class="checkbox">
	      <label><input name="items" value="gender" type="checkbox" onclick="return false;" checked /> <s:property value="getText('global.gender')" /></label>
	    </div>
	    <div class="checkbox">
	      <label><input name="items" value="phoneNumber" type="checkbox" onclick="return false;" checked /> <s:property value="getText('global.phoneNumber')" /></label>
	    </div>
	    <div class="checkbox">
	      <s:if test="event.items.contains('weChatAccount')">
	        <label><input name="items" value="weChatAccount" type="checkbox" checked /> <s:property value="getText('global.weChatAccount')" /></label>
	      </s:if>
	      <s:else>
	        <label><input name="items" value="weChatAccount" type="checkbox" /> <s:property value="getText('global.weChatAccount')" /></label>
	      </s:else>
	    </div>
	    <div class="checkbox">
	      <s:if test="event.items.contains('email')">
	        <label><input name="items" value="email" type="checkbox" checked /> <s:property value="getText('global.email')" /></label>
	      </s:if>
	      <s:else>
	        <label><input name="items" value="email" type="checkbox" /> <s:property value="getText('global.email')" /></label>
	      </s:else>
	    </div>
	    <div class="checkbox">
	      <s:if test="event.items.contains('job')">
	        <label><input name="items" value="job" type="checkbox" checked /> <s:property value="getText('global.job')" /></label>
	      </s:if>
	      <s:else>
	        <label><input name="items" value="job" type="checkbox" /> <s:property value="getText('global.job')" /></label>
	      </s:else>
	    </div>
	    <div class="checkbox">
	      <s:if test="event.items.contains('age')">
	        <label><input name="items" value="age" type="checkbox" checked /> <s:property value="getText('global.age')" /></label>
	      </s:if>
	      <s:else>
	        <label><input name="items" value="age" type="checkbox" /> <s:property value="getText('global.age')" /></label>
	      </s:else>
	    </div>
	    <div class="checkbox">
	      <s:if test="event.items.contains('school')">
	        <label><input name="items" value="school" type="checkbox" checked /> <s:property value="getText('global.school')" /></label>
	      </s:if>
	      <s:else>
	        <label><input name="items" value="school" type="checkbox" /> <s:property value="getText('global.school')" /></label>
	      </s:else>
	    </div>
	    <div class="checkbox">
	      <s:if test="event.items.contains('company')">
	        <label><input name="items" value="company" type="checkbox" checked /> <s:property value="getText('global.company')" /></label>
	      </s:if>
	      <s:else>
	        <label><input name="items" value="company" type="checkbox" /> <s:property value="getText('global.company')" /></label>
	      </s:else>
	    </div>
	    
	    
	      <s:if test="event.items.contains('pay')">
	      	<div class="checkbox">
	          <label><input name="items" value="pay" type="checkbox" id="pay" checked onclick="change(this.checked)" /> <s:property value="getText('global.pay')" /></label>
	          <div id="changeDiv" style="display:block" class="form-inline">
	      	    <label for="yooPayEventName"><s:property value="getText('global.yooPayEventName')" /></label>
      		    <input name="yooPayEventName" value="<s:property value="event.yooPayEventName" />" type="text" id="yooPayEventName" class="form-control" placeholder="YooPay Event Name" required />
	      	  </div>
	        </div> 
	      </s:if>
	      <s:else>
	      	<div class="checkbox">
	          <label><input name="items" value="pay" type="checkbox" id="pay" onclick="change(this.checked)" /> <s:property value="getText('global.pay')" /></label>
	     	  <div id="changeDiv" style="display:none" class="form-inline">
	      	    <label for="yooPayEventName"><s:property value="getText('global.yooPayEventName')" /></label>
      		    <input name="yooPayEventName" value="<s:property value="event.yooPayEventName" />" type="text" id="yooPayEventName" class="form-control" placeholder="YooPay Event Name" />
	      	  </div> 
	     	</div>
	      </s:else>
	    
    </div>
  </div>
  
  <div class="row">
    <button class="btn btn-lg btn-default col-xs-offset-2 col-xs-4" type="reset"><s:property value="getText('global.reset')" /></button>
    <button class="btn btn-lg btn-default col-xs-4" type="submit"><s:property value="getText('global.submit')" /></button>
  </div>
</form>

<!-- 配置文件 -->
<script type="text/javascript" src="ueditor/ueditor.config.js"></script>
<!-- 编辑器源码文件 -->
<script type="text/javascript" src="ueditor/ueditor.all.js"></script>
<!-- 实例化编辑器 -->
<script type="text/javascript">
	var editor = UE.getEditor("description");
</script>

</body>
</html>