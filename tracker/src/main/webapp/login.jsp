<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>

<%@include file="component/all_css.jsp"%>

<style type="text/css">
.card-sh {
	box-shadow: 0 0 6px 0 rgba(0, 0, 0, 0.3);
}

.row {
	background: #0c192c;
}

.body {
	background: #0c192c;
}

.container {
	
}

.bubbles {
	position: relative;
	display: flex;
}

.bubbles span {
	position: relative;
	width: 30px;
	height: 30px;
	background: #4fc3dc;
	margin: 0 4px;
	border-radius: 50%;
	box-shadow: 0 0 0 10px #4fc3dc44, 0 0 50px #4fc3dc, 0 0 100px #4fc3dc;
	animation: animate 15s linear infinite;
	animation-duration: calc(90s/ var(--i));
}

.bubbles span:nth-child(even) {
	background: #ff2d75;
	box-shadow: 0 0 0 10px #ff2d7544, 0 0 50px #ff2d75, 0 0 100px #ff2d75;
}

@
keyframes animate { 0%{
	transform: translateY(100vh) scale(0);
}
100
%




}
</style>
</head>
<body class="bg-dark">
	<%@include file="component/navbar.jsp"%>
	<div class="bubbles">
			<span style="--i: 11;"></span> <span style="--i: 10;"></span> <span
				style="--i: 24;"></span> <span style="--i: 23;"></span> <span
				style="--i: 14;"></span> <span style="--i: 12;"></span> <span
				style="--i: 22;"></span> <span style="--i: 27;"></span> <span
				style="--i: 17;"></span> <span style="--i: 18;"></span> <span
				style="--i: 21;"></span> <span style="--i: 29;"></span> <span
				style="--i: 22;"></span> <span style="--i: 27;"></span> <span
				style="--i: 17;"></span> <span style="--i: 18;"></span> <span
				style="--i: 21;"></span> <span style="--i: 29;"></span>
		</div>
	<div class="container p-5  ">
		
		<div class="row">
			<div class="col-md-6 offset=md-3"></div>
			<div class="card .card-sh">


				<div class="card=header"></div>
				<p class="text-center fs-3">Login Page</p>
				<c:if test="${not empty msg }">
					<p class="text-centre text-danger fs-4">${msg}</p>
					<c:remove var="msg" />



				</c:if>

				<div class="card-body"></div>

				<form action="login" method="post">

					<div class="mb-3">
						<label>Email</label> <input type="email" name="email"
							class="form-control">
					</div>
					<div class="mb-3">
						<label>Password</label> <input type="password" name="password"
							class="form-control">
					</div>

					<button class="btn btn-success col-md-12">Login</button>
					<div class="text-center mt-2">
						Dont have Acc <a href="register.jsp" class="text-decoration-none">Create
							One</a>

					</div>


				</form>

			</div>


		</div>


	</div>

</body>
</html>