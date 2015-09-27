<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<form action="Organize" method="post" enctype="multipart/form-data"
	class="form-horizontal container-fluid">

	<h2 class="form-reverse-heading form-reverse">
		<s:property value="getText('global.createASocialActivity')" />
	</h2>
	<hr class="light">

	<div class="form-group">
		<label for="eventName" class="col-sm-2 control-label"><s:property
				value="getText('global.activityName')" /></label>
		<div class="col-sm-8">
			<input name="name" type="text" id="eventName" class="form-control"
				placeholder="Event Name" required autofocus />
		</div>
	</div>
	<div class="form-group">
		<label for="address" class="col-sm-2 control-label"><s:property
				value="getText('global.address')" /></label>
		<div class="col-sm-8">
			<input name="address" type="text" id="address" class="form-control"
				placeholder="Address" required />
		</div>
	</div>
	<div class="form-group">
		<label for="date" class="col-sm-2 control-label"><s:property
				value="getText('global.date')" /></label>
		<div class="col-sm-8">
			<input name="date" type="text" id="date" class="form-control"
				placeholder="YYYY-MM-DD" required />
		</div>
	</div>
	<div class="form-group">
		<label for="time" class="col-sm-2 control-label"><s:property
				value="getText('global.time')" /></label>
		<div class="col-sm-8">
			<input name="time" type="text" id="time" class="form-control"
				placeholder="HH:MM ~ HH:MM" required />
		</div>
	</div>
	<div class="form-group">
		<label for="dressCode" class="col-sm-2 control-label"><s:property
				value="getText('global.dressCode')" /></label>
		<div class="col-sm-8">
			<input name="dressCode" type="text" id="dressCode"
				class="form-control" placeholder="Dress Code" required />
		</div>
	</div>
	<div class="form-group">
		<label for="description" class="col-sm-2 control-label"><s:property
				value="getText('global.description')" /></label>
		<div class="col-sm-8">
			<!-- UEditor -->
			<script id="description" name="description" type="text/plain">
	  </script>
		</div>
	</div>
	<div class="form-group">
		<label for="poster" class="col-sm-2 control-label"><s:property
				value="getText('global.poster')" /></label>
		<div class="col-sm-8">
			<input type="file" name="poster" id="poster" class="form-control" />
		</div>
	</div>

	<div class="form-group">
		<label for="items" class="col-sm-2 control-label"><s:property
				value="getText('global.items')" /></label>
		<div class="col-sm-8">
			<div class="checkbox">
				<label><input name="items" value="lastName" type="checkbox"
					onclick="return false;" checked /> <s:property
						value="getText('global.lastName')" /></label>
			</div>
			<div class="checkbox">
				<label><input name="items" value="firstName" type="checkbox"
					onclick="return false;" checked /> <s:property
						value="getText('global.firstName')" /></label>
			</div>
			<div class="checkbox">
				<label><input name="items" value="gender" type="checkbox"
					onclick="return false;" checked /> <s:property
						value="getText('global.gender')" /></label>
			</div>
			<div class="checkbox">
				<label><input name="items" value="phoneNumber"
					type="checkbox" onclick="return false;" checked /> <s:property
						value="getText('global.phoneNumber')" /></label>
			</div>
			<div class="checkbox">
				<label><input name="items" value="weChatAccount"
					type="checkbox" /> <s:property
						value="getText('global.weChatAccount')" /></label>
			</div>
			<div class="checkbox">
				<label><input name="items" value="email" type="checkbox" />
					<s:property value="getText('global.email')" /></label>
			</div>
			<div class="checkbox">
				<label><input name="items" value="job" type="checkbox" /> <s:property
						value="getText('global.job')" /></label>
			</div>
			<div class="checkbox">
				<label><input name="items" value="age" type="checkbox" /> <s:property
						value="getText('global.age')" /></label>
			</div>
			<div class="checkbox">
				<label><input name="items" value="school" type="checkbox" />
					<s:property value="getText('global.school')" /></label>
			</div>
			<div class="checkbox">
				<label><input name="items" value="company" type="checkbox" />
					<s:property value="getText('global.company')" /></label>
			</div>

			<div class="checkbox">
				<label><input name="items" value="pay" type="checkbox"
					id="pay" onclick="change(this.checked)" /> <s:property
						value="getText('global.pay')" /></label>
				<div id="changeDiv" style="display: none" class="form-inline">
					<label for="yooPayEventName"><s:property
							value="getText('global.yooPayEventName')" /></label> <input
						name="yooPayEventName" type="text" id="yooPayEventName"
						class="form-control" placeholder="YooPay Event Name" />
				</div>
			</div>

		</div>
	</div>

	<div class="row">
		<button class="btn btn-lg btn-default col-xs-offset-2 col-xs-4"
			type="reset">
			<s:property value="getText('global.reset')" />
		</button>
		<button class="btn btn-lg btn-default col-xs-4" type="submit">
			<s:property value="getText('global.submit')" />
		</button>
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
