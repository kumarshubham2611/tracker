
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<%@include file="component/all_css.jsp"%>
<style type="text/css">
.card-sh{
	box-shadow: 0 0 6px 0 rgba(0,0,0,0.3);

}
</style>
</head>
<body class="bg-light">
	<%@include file="component/navbar.jsp"%>
	
	<div class="container p-5">
		<div class="row">
			<div class="col-md-6 offset=md-3"></div>
			<div class="card .card-sh">


				<div class="card=header"></div>
				<p class="text-center fs-3">Register Page</p>
				<c:if test="${not empty msg }">
					<p>${msg}</p>
					<c:remove var="msg"/>
					
					
			
				</c:if>

				<div class="card-body"></div>

				<form action="userRegister" method="post">
					<div class="mb-3">
						<label>Enter Full Name</label> <input type="text" name="fullName"
							class="form-control">
					</div>
					<div class="mb-3">
						<label>Email</label> <input type="email" name="email"
							class="form-control">
					</div>
					<div class="mb-3">
						<label>Password</label> <input type="password" name="password"
							class="form-control">
					</div>
					<div class="mb-3">
						<label>About</label> <input type="text" name="about"
							class="form-control">
					</div>
					<button class="btn btn-success col-md-12">Register</button>

				</form>

			</div>


		</div>


	</div>

</body>
</html>