<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
	integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l"
	crossorigin="anonymous">
<title>Project Details - Audit Management System</title>
<style>
body {
	background-image: url("https://images.unsplash.com/photo-1515378960530-7c0da6231fb1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80");
	background-repeat:no-repeat;
	background-size:cover;
	/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
}

form {
	background: white;
}
#submit-button{
	background-color:0B539F;
}

</style>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<img style="width:65px; height:45px;" src="https://img.freepik.com/free-vector/character-illustration-people-holding-user-account-icons_53876-43022.jpg?t=st=1656269563~exp=1656270163~hmac=c8963138da8aa42b5dbaf2dff0ac0927368b07dac1e18b3cd3ad9992a59a79c9&w=900">
		
		<a class="navbar-brand pl-2"><strong>Audit Management System</strong></a>

			<span class="navbar-text ml-auto"> <a href="/logout"><strong>Logout</strong></a>
			</span>
		
	</nav>
	<div class="container pt-5">
       
		

		<form:form action="/AuditCheckListQuestions"
			modelAttribute="projectDetails" method="post"
			class="px-5 border rounded">
			<h3 class="m-4 text-center display-4" style="color:black"><strong>Project Details</strong></h3>

			<div class="form-group">
				<h5><form:label path="projectName">Project Name</form:label></h5>
				<form:input path="projectName" required="required"
					class="form-control" id="ProjectName" />

			</div>
			<div class="form-group">
				<h5><form:label path="projectManagerName">Project Manager Name</form:label></h5>
				<form:input path="projectManagerName" required="required"
					class="form-control" id="ProjectManagerName" />
			</div>
			<div class="form-group">
				<h5><form:label path="applicationOwnerName">Application Owner</form:label></h5>
				<form:input path="applicationOwnerName" required="required"
					class="form-control" id="ApplicationOwnerName" />
			</div>

			<div class="form-group">
				<h5><label for="AuditType">Audit Type</label></h5>
				<form:form modelAttribute="auditType">
					<div class="input-group">
						<div class="input-group-prepend">
							<div class="input-group-text">
								<form:radiobutton path="auditType" required="required"
									id="internal" value="Internal" name="audittype"
									aria-label="Radio button for following text input" />
							</div>
						</div>
						<label for="Internal" class="form-control"> Internal</label>

						<div class="input-group-prepend">
							<div class="input-group-text">
								<form:radiobutton path="auditType" id="sox" value="SOX"
									name="audittype"
									aria-label="Radio button for following text input" />
							</div>
						</div>
						<label for="SOX" class="form-control"> SOX</label>
					</div>
					<input type="submit" class="btn btn-primary btn-block mt-3"
						value="Submit" >
				</form:form>
			</div>





		</form:form>

	</div>




	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
		integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js"
		integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF"
		crossorigin="anonymous"></script>



</body>
</html>




