<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="text/javascript">
	function validate_required(field) {
		with (field) {
			if (required == true) {
				if (value == null || value == "") {
					var text = '<s:property value="getText('
					global.mustBeFilledOut
					')" />';
					alert(name + " " + text);
					field.focus();
					return false;
				}
			}
			return true;
		}
	}

	function validate_form(form) {

		for (var i = 0; i < form.length; i++) {
			if (validate_required(form[i]) == false) {
				return false;
			}
		}
		return true;
	}
</script>

<title>User Sign Up</title>

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
</head>

<body class="bg-primary">
	<jsp:include page="Navigator.jsp" />

	<form action="UserSignUp" onsubmit="return validate_form(this);"
		class="form-horizontal container-fluid">

		<h2 class="form-reverse-heading form-reverse">
			<s:property value="getText('global.userSignUp')" />
		</h2>
		<hr class="light">

		<div class="form-group">
			<label for="email" class="col-sm-2 control-label"><s:property
					value="getText('global.email')" /></label>
			<div class="col-sm-8">
				<input name="email" type="text" id="email" class="form-control"
					placeholder="Email" required />
			</div>
		</div>

		<div class="form-group">
			<label for="password" class="col-sm-2 control-label"><s:property
					value="getText('global.password')" /></label>
			<div class="col-sm-8">
				<input name="password" type="password" id="password"
					class="form-control" placeholder="Password" required />
			</div>
		</div>

		<div class="form-group">
			<label for="lastName" class="col-sm-2 control-label"><s:property
					value="getText('global.lastName')" /></label>
			<div class="col-sm-8">
				<input name="lastName" type="text" id="lastName"
					class="form-control" placeholder="Last Name" required />
			</div>
		</div>

		<div class="form-group">
			<label for="firstName" class="col-sm-2 control-label"><s:property
					value="getText('global.firstName')" /></label>
			<div class="col-sm-8">
				<input name="firstName" type="text" id="firstName"
					class="form-control" placeholder="First Name" required />
			</div>
		</div>

		<div class="form-group">
			<label for="gender" class="col-sm-2 control-label"><s:property
					value="getText('global.gender')" /></label>
			<div class="col-sm-8">
				<select name="gender" id="gender" class="form-control" required>
					<option value="male"><s:property
							value="getText('global.male')" /></option>
					<option value="female"><s:property
							value="getText('global.female')" /></option>
				</select>
			</div>
		</div>

		<div class="form-group">
			<label for="phoneNumber" class="col-sm-2 control-label"><s:property
					value="getText('global.phoneNumber')" /></label>
			<div class="col-sm-8">
				<input name="phoneNumber" type="text" id="phoneNumber"
					class="form-control" placeholder="Phone Number" required />
			</div>
		</div>

		<div class="form-group">
			<label for="weChatAccount" class="col-sm-2 control-label"><s:property
					value="getText('global.weChatAccount')" /></label>
			<div class="col-sm-8">
				<input name="weChatAccount" type="text" id="weChatAccount"
					class="form-control" placeholder="WeChat Account" required />
			</div>
		</div>

		<div class="form-group">
			<label for="school" class="col-sm-2 control-label"><s:property
					value="getText('global.school')" /></label>
			<div class="col-sm-8">
				<input name="school" type="text" id="school" class="form-control"
					placeholder="School" />
			</div>
		</div>

		<div class="form-group">
			<label for="graduationYear" class="col-sm-2 control-label"><s:property
					value="getText('global.graduationYear')" /></label>
			<div class="col-sm-8">
				<input name="graduationYear" type="text" id="graduationYear"
					class="form-control" placeholder="graduationYear" />
			</div>
		</div>

		<div class="form-group">
			<label for="user_options" class="col-sm-2 control-label"><s:property
					value="getText('global.user_options')" /></label>
			<div class="col-sm-8">
				<div class="checkbox">
					<label><input name="user_options" value="lacMailingList"
						type="checkbox" checked /> <s:property
							value="getText('global.lacMailingList')" /></label>
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

</body>
</html>
