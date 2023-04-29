<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<%@include file="includes/head.jsp" %>
    <link rel="stylesheet" href="includes/nav.css">
     <link rel="stylesheet" href="./font-awesome-4.7.0/font-awesome-4.7.0/css/font-awesome.css">

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login u r account</title>
    <link rel="stylesheet" href="./login.css">
    <script src="./login.js"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com"><link rel="preconnect" href="https://fonts.gstatic.com" crossorigin><link href="https://fonts.googleapis.com/css2?family=Sofia+Sans+Semi+Condensed:wght@700&display=swap" rel="stylesheet">

</head>
<body>
	<%@include file="includes/navbar.jsp" %>


    <div class="login-page">       
        <div class="form">
            <h1>Login</h1>
          <form class="login-form" action="./LoginServlet" method="post">
            <input type="text" placeholder="username" name="Uname" required="required"/>
            <input type="password" placeholder="password" name="Pass" required="required"/>
            <button>login</button>
            <p class="message">Not registered? <a href="./register.jsp">Create an account</a></p>
          </form>
        </div>
      </div>
      	<%@include file="includes/footer.jsp" %>
      
</body>
</html>