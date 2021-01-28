<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<c:url value="/upload/" var="imgURL"/>


<!-- <script type="text/javascript"> -->
<!--
	$(document).ready(function() {

		var readURL = function(input) {
			if (input.files && input.files[0]) {
				var reader = new FileReader();

				reader.onload = function(e) {
					$('.avatar').attr('src', e.target.result);
				}

				reader.readAsDataURL(input.files[0]);
			}
		}

		$(".file-upload").on('change', function() {
			readURL(this);
		});
	});
//-->
<!-- </script> -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Account</title>
<meta charset="utf-8">

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>


	<hr>
	<div class="container bootstrap snippet">
		<div class="row">
			<div class="col-sm-10">
				<h1>User name</h1>
			</div>
			<div class="col-sm-2">
				<a href="<c:url value="/"/>" class="pull-right"><img
					title="profile image" class="img-circle img-responsive"
					src="http://www.gravatar.com/avatar/28fd20ccec6865e2d5f0e1f4446eb7bf?s=100"></a>
			</div>
		</div>
		
		<div class="row">
			
				<!--left col-->
				
				<form class="form" action="<c:url value="/member/myaccount"/>" method="post"
					id="registrationForm" enctype="multipart/form-data">
			<div class="col-sm-3">
					<input name="role" value="${sessionScope.account.roleId }" hidden="" >
					<input name="id" value="${sessionScope.account.id }" hidden="">
					<div class="text-center">
						<%-- <c:url value="${sessionScope.account.avatar }" 
							var="imgUrl"></c:url>--%>
						<img src="${imgURL }${sessionScope.account.avatar }" class="avatar img-circle img-thumbnail"
							alt="avatar">
						<h6>Upload a different photo...</h6>
						<input type="file" name="avatar" class="text-center center-block file-upload">
					</div>
					</hr>
					<br>
			</div>
			<!--/col-3-->
			
			<div class="col-sm-9">



				<div class="tab-content">
					<div class="tab-pane active" id="home">
						<hr>

						<div class="form-group">

							<div class="col-xs-6">
								<label for="first_name"><h4>User Name:</h4></label> <input
									type="text" class="form-control" name="username"
									id="first_name" value="${sessionScope.account.username }"
									title="enter your first name if any.">
							</div>
						</div>
							</div>
						</div>
						</div>
						<div class="form-group">

							<div class="col-xs-6">
								<label for="first_name"><h4>Email:</h4></label> <input
									type="text" class="form-control" name="email" id="first_name"
									value="${sessionScope.account.email }"
									title="enter your first name if any.">
							</div>
						</div>
						<div class="form-group">

							<div class="col-xs-6">
								<label for="phone"><h4>Password</h4></label> <input
									type="password" class="form-control" name="password" id="phone"
									value="${sessionScope.account.password }"
									title="enter your phone number if any.">
							</div>
						</div>

						<div class="form-group">

							<div class="col-xs-6">
								<label for="last_name"><h4>Website</h4></label> <input
									type="text" class="form-control" name="website" id="last_name"
									value="http://unify.com" title="enter your last name if any."
									disabled="disabled">
							</div>
						</div>
						
						<div class="form-group">
							<div class="col-xs-12">
								<br>
								<button class="btn btn-lg btn-success" type="submit">
									<i class="glyphicon glyphicon-ok-sign"></i> Save
								</button>
								<button class="btn btn-lg" type="reset">
									<i class="glyphicon glyphicon-repeat"></i> Reset
								</button>
							</div>
						</div>
				</form>

						<hr>

					</div>
					
	</div>
	<!--/row-->

</body>
</html>