<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<form action="Organize" method="post" class="form-horizontal container-fluid">

  <h2 class="form-reverse-heading form-reverse"><s:property value="getText('global.createASocialActivity')" /></h2>
  <hr class="light">
  


  <div>
    <label for="container" class="col-sm-2 control-label"><s:property value="getText('global.description')" /></label>
      <!-- UEditor -->
      <script id="container" name="description" type="text/plain">
	  </script>
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
	      <label><input name="items" value="weChatAccount" type="checkbox" /> <s:property value="getText('global.weChatAccount')" /></label>
	    </div>
	    <div class="checkbox">
	      <label><input name="items" value="email" type="checkbox" /> <s:property value="getText('global.email')" /></label>
	    </div>
	    <div class="checkbox">
	      <label><input name="items" value="job" type="checkbox" /> <s:property value="getText('global.job')" /></label>
	    </div>
	    <div class="checkbox">
	      <label><input name="items" value="age" type="checkbox" /> <s:property value="getText('global.age')" /></label>
	    </div>
	    <div class="checkbox">
	      <label><input name="items" value="school" type="checkbox" /> <s:property value="getText('global.school')" /></label>
	    </div>
	    <div class="checkbox">
	      <label><input name="items" value="company" type="checkbox" /> <s:property value="getText('global.company')" /></label>
	    </div>
	    
	    <div class="checkbox">
	      <label><input name="items" value="pay" type="checkbox" id="pay" onclick="change(this.checked)" /> <s:property value="getText('global.pay')" /></label>
		  <div id="changeDiv" style="display:none" class="form-inline">
		    <label for="yooPayEventName"><s:property value="getText('global.yooPayEventName')" /></label>
	        <input name="yooPayEventName" type="text" id="yooPayEventName" class="form-control" placeholder="YooPay Event Name" required />
		  </div>
	    </div>
	               
  </div>      
  </div>
  
    
  <div class="row">
    <button type="reset"><s:property value="getText('global.reset')" /></button>
    <button type="submit"><s:property value="getText('global.submit')" /></button>
  </div>
  
  

</form>

<!-- 配置文件 -->
<script type="text/javascript" src="ueditor/ueditor.config.js"></script>
<!-- 编辑器源码文件 -->
<script type="text/javascript" src="ueditor/ueditor.all.js"></script>
<!-- 实例化编辑器 -->
<script type="text/javascript">
	var editor = UE.getEditor("container");
</script>

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

