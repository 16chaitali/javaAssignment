<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> login here</title>
<%@include file="all_js_css.jsp" %>

</head>
<body>

<!-------------------coding area----------------------------->
    <div class="container-fluid">
    <nav class="navbar navbar-expand-lg navbar-dark purple">
  <a class="navbar-brand" href="#">My App</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="AdminHome.jsp">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="adminlogin.jsp">Login</a>
      </li>
        <li class="nav-item active">
        <a class="nav-link " href="#">Logout</a>
      </li>
    </ul>
</div>
</nav>

<div class="container mt-3">
              <div class="col-md-6 offset-md-3">
                <h2 class="text-center mb-3"> Login Here</h2>
              
                <form action="AdminLoginServlet" method="post">
                
                 <div class="form-group">
                  <label for="username">UserName</label>
                  <input type="text" class="form-control" id="username" name="username" required placeholder="Enter user name here">
              </div>
              <div class="form-group">
              
                  <label for="password">Password</label>
                  <input type="password" class="form-control" id="pass" name="password" required placeholder="Enter password here">
              </div>
               
              <div class="container text-center">
                 <button type="submit" class="btn btn-success">Login</button>
                 </div>
              
           </form> 
          </div>
       </div>

</body>
</html>