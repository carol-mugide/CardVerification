
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>AMCVS</title>
<!-- booot strap,css and java script files -->

<link href="<c:url value="/resources/css/bootstrap.min.css"/>"
	rel="stylesheet">


<link href="<c:url value="/resources/css/admin.css"/>" rel="stylesheet">
<link href="<c:url value="/resources/js/theadmin.js"/>">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>

<script src="<c:url value="/resources/js/theadmin.js"/>"></script>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script>
	function show(input) {
		debugger;
		var validExtensions = [ 'jpg', 'png', 'jpeg', 'JPG' ]; //array of valid extensions
		var fileName = input.files[0].name;
		var fileNameExt = fileName.substr(fileName.lastIndexOf('.') + 1);
		if ($.inArray(fileNameExt, validExtensions) == -1) {
			input.type = ''
			input.type = 'file'
			$('#user_img').attr('src', "");
			alert("Only these file types are accepted : "
					+ validExtensions.join(', '));
		} else

		if ((input.files && input.files[0]) == null) {
			alert("Please Upload Photo")
		} else {
			if (input.files && input.files[0]) {
				var filerdr = new FileReader();
				filerdr.onload = function(e) {
					$('#user_img').attr('src', e.target.result);
				}
				filerdr.readAsDataURL(input.files[0]);
			}
		}
	}
</script>

<script>
	function Checkfiles() {
		var fup = document.getElementById('file');
		var fileName = fup.value;
		var ext = fileName.substring(fileName.lastIndexOf('.') + 1);
		if (ext == "gif" || ext == "GIF" || ext == "JPEG" || ext == "jpeg"
				|| ext == "jpg" || ext == "JPG" || ext == "doc") {
			return true;
		} else {
			alert("please make sure that you have uploaded a photo");
			fup.focus();
			return false;
		}
	}
</script>


</head>
<body>



	<!------ Include the above in your HEAD tag ---------->

	<!-- Header -->
	<div id="top-nav" class="navbar navbar-inverse navbar-static-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="icon-toggle"></span>
				</button>
				<a class="navbar-brand" href="#" style="color: #1E90FF;">
					ELECTRONIC MEAL CARD VERIFICATION SYSTEM</</a>

			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav navbar-right">


					<li><a href="<c:url value="/Logout"/>"><i
							class="glyphicon glyphicon-off"></i> Logout</a></li>
				</ul>
			</div>
		</div>
		<!-- /container -->
	</div>
	<!-- /Header -->

	<!-- Main -->
	<div class="container">
		<div class="row">
			<div class="col-md-3">
				<!-- Left column -->
				<h4>
					<a style="color: green"><strong><i class=""></i> </strong></a>
				</h4>

				<hr style="border-right: 1px solid black">

				<ul class="list-unstyled">
					<!--  -->
					<li class="nav-header"><a href="#" data-toggle="collapse"
						data-target="#userMenu"> </a>
						<ul class="list-unstyled collapse in" id="userMenu"
							style="border-right: 1px solid black">




						</ul></li>
					<li class="nav-header"><a href="#" data-toggle="collapse"
						data-target="#menu2"> <br>

					</a>

						<ul class="list-unstyled collapse" id="menu2">
							<li><a href="#">Information & Stats</a></li>
							<li><a href="#">Views</a></li>
							<li><a href="#">Requests</a></li>
							<li><a href="#">Timetable</a></li>
							<li><a href="#">Alerts</a></li>
						</ul></li>

				</ul>

				<hr>

				<!-- -Form    -->




				<hr>



				<hr>


				<hr>
			</div>
			<!-- /col-3 -->
			<div class="col-md-9">


				<a href="#"><strong><i
						class="glyphicon glyphicon-dashboard"></i> My Dashboard</strong></a>

				<hr>

				<div class="row">


					<div class="container">
						<div class="col-xs-2">
							<form class='form-inline' action="back">
								<div class="input-group">

									<button class="btn btn-primary btn-lg pull-right" type="submit">Back</button>
									</span>
								</div>
							</form>
						</div>
						<div class="col-xs-2">
							<form:form class='form-inline' action="saveConfirmationDetails" commandName="print">
								<div class="itext-center">
                                <form:input path="checkedIds" class="form-control"
										placeholder="University" id="one" type="hidden"  items="list"/>

									<button class="btn btn-primary btn-lg pull-center"
										type="submit">Confirm if printed</button>
									</span>
								</div>
							</form:form>
							
							<h3 style="color: #ff0000;">${coinfirmationerror}</h3>
							
						</div>


						<br> <br>
						<!-- center left-->
						<!--/col-->


						<hr>


						<hr>


					</div>
					<!--/col-span-9-->
				</div>
			</div>
			<!-- /Main -->

			<h5 style="text-align: center;">
				All rights reserved <a href=""><strong>Kyambogo Dinning
					halls</strong></a>
			</h5>

			<!-- /.modal -->
</body>
</html>