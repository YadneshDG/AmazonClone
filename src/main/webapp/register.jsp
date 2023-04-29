<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./register.css">
    <script src="./login.js"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com"><link rel="preconnect" href="https://fonts.gstatic.com" crossorigin><link href="https://fonts.googleapis.com/css2?family=Sofia+Sans+Semi+Condensed:wght@700&display=swap" rel="stylesheet">
    	<%@include file="includes/head.jsp" %>
    	<link rel="stylesheet" href="includes/nav.css">
     <link rel="stylesheet" href="./font-awesome-4.7.0/font-awesome-4.7.0/css/font-awesome.css">
    	
    
</head>
<body>
	<%@include file="includes/navbar.jsp"%>

    <div class="login-page">
        
        <div class="form">
            <h1>Register</h1>
          <form class="register-form" action="./RegisterServlet" method="post">
            <input type="text" placeholder="First name" name="Fname" required="required"/>
            <input type="text" placeholder="Last name" name="Lname" required="required"/>
            <input type="text" placeholder="User name" name="Uname" required="required"/>
            <input type="password" placeholder="Password" name="Pass" required="required"/>
            <input type="email" placeholder="Email address" name="Email" required="required"/>
            <button type="submit" >SignUp</button>
            <p class="message">Already registered? <a href="./login.jsp">Sign In</a></p>
          </form>
        </div>
      </div>
      
            	<%@include file="includes/footer.jsp" %>
      
</body>
</html>