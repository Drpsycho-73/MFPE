<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
      <!DOCTYPE html>
<html>
<head>
	<title>Audit Management System</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link href="https://fonts.googleapis.com/css?family=Poppins:600&display=swap" rel="stylesheet">
	<!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/a81368914c.js"></script>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<style type="text/css">
		*{
			padding: 0;
			margin: 0;
			box-sizing: border-box;
		}
		
		body{
		    font-family: 'Poppins', sans-serif;
		    overflow: hidden;
		}
		
		.heading{
			display:flex;
			justify-content:flex-end;
			padding-right:18%;
			padding-top:5%;
			text-align:center;
		}
		
		.wave{
			position: fixed;
			bottom: 0;
			left: 0;
			height: 100%;
			z-index: -1;
		}
		
		.container{
		    width: 100vw;
		    height: 100vh;
		    display: grid;
		    grid-template-columns: repeat(2, 1fr);
		    grid-gap :7rem;
		    padding: 0 2rem;
		    
		}
		
		.img{
			display: flex;
			justify-content: flex-end;
			align-items: center;
		}
		
		.login-content{
			display: flex;
			justify-content: flex-start;
			align-items: center;
			text-align: center;
			padding-top: 0%;
			padding-left:10%;
			padding-bottom: 30%
		}
		
		.img img{
			width: 500px;
		}
		
		form{
			width: 360px;
		}
		
		.login-content img{
		    height: 100px;
		}
		
		.login-content h2{
			margin: 15px 0;
			color: #333;
			text-transform: uppercase;
			font-size: 2.9rem;
		}
		
		.login-content .input-div{
			position: relative;
		    display: grid;
		    grid-template-columns: 7% 93%;
		    margin: 25px 0;
		    padding: 5px 0;
		    border-bottom: 2px solid #d9d9d9;
		   
		}
		
		.login-content .input-div.one{
			margin-top: 0;
		}
		
		.i{
			color: #0B539F;
			display: flex;
			justify-content: center;
			align-items: center;
		}
		
		.i i{
			transition: .3s;
		}
		
		.input-div > div{
		    position: relative;
			height: 45px;
		}
		
		.input-div > div > h5{
			position: absolute;
			left: 10px;
			top: 50%;
			transform: translateY(-50%);
			color: #999;
			font-size: 18px;
			transition: .3s;
		}
		
		.input-div:before, .input-div:after{
			content: '';
			position: absolute;
			bottom: -2px;
			width: 0%;
			height: 2px;
			background-color: #0B539F;
			transition: .4s;
		}
		
		.input-div:before{
			right: 50%;
		}
		
		.input-div:after{
			left: 50%;
		}
		
		.input-div.focus:before, .input-div.focus:after{
			width: 50%;
		}
		
		.input-div.focus > div > h5{
			top: -5px;
			font-size: 15px;
		}
		
		.input-div.focus > .i > i{
			color: #0B539F;
		}
		
		.input-div > div > input{
			position: absolute;
			left: 0;
			top: 0;
			width: 100%;
			height: 100%;
			border: none;
			outline: none;
			background: none;
			padding: 0.5rem 0.7rem;
			font-size: 1.2rem;
			color: #555;
			font-family: 'poppins', sans-serif;
		}
		
		.input-div.pass{
			margin-bottom: 4px;
		}
		
		a{
			display: block;
			text-align: right;
			text-decoration: none;
			color: #999;
			font-size: 0.9rem;
			transition: .3s;
		}
		
		a:hover{
			color: #0B539F;
		}
		
		.btn{
			display: block;
			width: 100%;
			height: 50px;
			border-radius: 25px;
			outline: none;
			border: none;
			background-image: linear-gradient(to bottom, #33ccff 0%, #0B539F 100%);
			background-size: 200%;
			font-size: 1.2rem;
			color: 	black;
			font-family: 'Poppins', sans-serif;
			text-transform: uppercase;
			margin: 1rem 0;
			cursor: pointer;
			transition: .5s;
		}
		.btn:hover{
			background-position: right;
		}
		
		
		@media screen and (max-width: 1050px){
			.container{
				grid-gap: 5rem;
			}
		}
		
		@media screen and (max-width: 1000px){
			form{
				width: 290px;
			}
		
			.login-content h2{
		        font-size: 2.4rem;
		        margin: 8px 0;
			}
		
			.img img{
				width: 400px;
			}
		}
		
		@media screen and (max-width: 900px){
			.container{
				grid-template-columns: 1fr;
			}
		
			.img{
				display: none;
			}
		
			.wave{
				display: none;
			}
		
			.login-content{
				justify-content: center;
			}
		}
	
	</style>
</head>
<body>
<div class="heading">
	<h1> Audit Management<br> System</h1>
	</div>
	<img class="wave" src="https://img.freepik.com/free-vector/site-stats-concept-illustration_114360-1509.jpg?w=740&t=st=1656262449~exp=1656263049~hmac=302a99db4f5771e9c57996f12de7cf42b08070d2e58a4d0908bdb44cf0b49913">
	<div class="container">
		
		<div class="img">
			<!-- <img src="img/bg.svg"> -->
		</div>
		<div class="login-content">
		<c:choose>
		
		<c:when test="${msg == null}">
			<form:form action="/home" modelAttribute="user" method="post">
				<img src="https://img.freepik.com/free-vector/character-illustration-people-holding-user-account-icons_53876-43022.jpg?t=st=1656269563~exp=1656270163~hmac=c8963138da8aa42b5dbaf2dff0ac0927368b07dac1e18b3cd3ad9992a59a79c9&w=900">
				<br><br><br>
				<!-- <h2 class="title">Welcome</h2> -->
				
           		<div class="input-div one">
           		   <div class="i">
           		   		<i class="fas fa-user"></i>
           		   </div>
           		   <div class="div">
           		   		<h5>Username</h5>
           		   		<form:input path="userId" class="input"/>
           		   </div>
           		</div>
           		<div class="input-div pass">
           		   <div class="i"> 
           		    	<i class="fas fa-lock"></i>
           		   </div>
           		   <div class="div">
           		    	<h5>Password</h5>
           		    	<form:input type="password" path="password" class="input"/>
            	   </div>
            	</div>
				<!-- <a href="#">Forgot Password?</a> -->
				<br>
            	<input type="submit" class="btn" value="Login">
            </form:form>
            </c:when>
            	<c:when test="${msg != null}">
            		<div style="display:flex; letter-spacing:0.5px;"> 
            		<p style="padding-right:3px; height:8px">${msg}</p>  
            		<a href="/loginPage" style="background-color:#0062D1; color:white; border-radius:4px; text-align:center; padding-left:3px; padding-right:3px"> 
            		Click here 
            		</a>
            		<p style="padding-left:3px; height:8px">to login again</p>
            		</div>  
            	</c:when>
            </c:choose>
        </div>
    </div>
    <script type="text/javascript">
	    const inputs = document.querySelectorAll(".input");
	
	
	    function addcl(){
	    	let parent = this.parentNode.parentNode;
	    	parent.classList.add("focus");
	    }
	
	    function remcl(){
	    	let parent = this.parentNode.parentNode;
	    	if(this.value == ""){
	    		parent.classList.remove("focus");
	    	}
	    }
	
	
	    inputs.forEach(input => {
	    	input.addEventListener("focus", addcl);
	    	input.addEventListener("blur", remcl);
	    });

    </script>
</body>
</html>