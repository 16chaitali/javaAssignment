<%@page import="org.hibernate.Session"%>
<%@page import="com.helper.FactoryProvider" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.entities.* " %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <%@include file="all_js_css.jsp" %>
   
<title>update product</title>
</head>
<body>
            <div class="container-fluid">
               <%@include file="navbar.jsp" %>
           <% 
           int prono =Integer.parseInt( request.getParameter("prono")); 
          
         Session s=  FactoryProvider.getFactory().openSession();
         Product pro=(Product)s.get(Product.class,prono);
       %>
      <div class="container mt-3">
              <div class="col-md-6 offset-md-3">
                <h2 class="text-center mb-3">Selected Product Details</h2>
              
                <form action="UpdateServlet" method="post">
                <input value="<%=pro.getNo() %>" name="no" type="hidden">
                 <div class="form-group">
                  <label for="name">Name</label>
                  <input type="text" class="form-control" id="name" name="name" required placeholder="Enter product name here" 
                  value="<%=pro.getName() %>">
              </div>
              <div class="form-group">
              
                  <label for="suk">SUK</label>
                  <input type="text" class="form-control" id="suk" name="suk" required placeholder="Enter product suk here"
                   value="<%=pro.getSuk() %>">
              </div>
               <div class="form-group">
              
                  <label for="description">Description</label>
                  <textarea class="form-control" id="description" name="description" row="5" required style="height:100px;" placeholder="Enter product description here">
                   <%=pro.getDescription()%>
                  </textarea>
              </div>
              <div class="form-group">
              
                  <label for="price">Price</label>
                  <input type="text" class="form-control" id="price" name="price" required placeholder="Enter product price here"
                  value="<%=pro.getPrice() %>">
              </div>
              <div class="form-group">
              
                  <label for="stock level">Stock level</label>
                  <input type="text" class="form-control" id="stock" name="stock" required placeholder="Enter stock here"
                  value="<%=pro.getStock() %>">
              </div>
              <div class="container text-center">
                 <button type="submit" class="btn btn-success">Save your product</button>
                 </div>
              
           </form> 
          </div>
       </div>

          
               
               
               
               
               
               
    
    
    </div>
          
</body>
</html>