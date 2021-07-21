<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@include file="all_js_css.jsp" %>    
<title>add product form</title>
</head>
<body>    

 <div class="container">
          <%@include file="navbar.jsp" %>
          <br>
    
   
    
          <div class="container mt-3">
              <div class="col-md-6 offset-md-3">
                <h2 class="text-center mb-3">Fill the product detail</h2>
              
                <form action="SaveProductServlet" method="post">
                 <div class="form-group">
                  <label for="name">Name</label>
                  <input type="text" class="form-control" id="name" name="name" required placeholder="Enter product name here">
              </div>
              <div class="form-group">
              
                  <label for="suk">SUK</label>
                  <input type="text" class="form-control" id="suk" name="suk" required placeholder="Enter product suk here">
              </div>
               <div class="form-group">
              
                  <label for="description">Description</label>
                  <textarea class="form-control" id="description" name="description" row="5" required style="height
                  :100px;" placeholder="Enter product description here">
                  </textarea>
              </div>
              <div class="form-group">
              
                  <label for="price">Price</label>
                  <input type="text" class="form-control" id="price" name="price" required placeholder="Enter product price here">
              </div>
              <div class="form-group">
              
                  <label for="stock level">Stock level</label>
                  <input type="text" class="form-control" id="stock" name="stock" required placeholder="Enter stock here">
              </div>
              <div class="container text-center">
                 <button type="submit" class="btn btn-primary">Add</button>
                 </div>
              
           </form> 
          </div>
       </div>
</div>
</body>
</html>