<%@page import="org.hibernate.Query"%>
<%@page import="java.util.List"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.entities.* " %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@include file="all_js_css.jsp" %>    

<title>all products</title>
</head>
<body>
<div class="container">
          <%@include file="navbar.jsp" %>
          <br>
    <h1 class="text-center">Product Inventory</h1>
     <div class="row">
    
    
    <div class="col-12">
    <table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">S.No</th>
      <th scope="col">Name</th>
      <th scope="col">SUK</th>
      <th scope="col">Description</th>
      <th scope="col">Price</th>
      <th scope="col">Stock Level</th>
      <th scope="col"> </th>
    </tr>
  </thead>
  <% 
    Session s=FactoryProvider.getFactory().openSession();
   Query q=s.createQuery("from Product");
    List<Product> list=q.list();
    for(Product pro:list) 
    {
   %>
   <tbody>
    <tr>
      
      <td><%=pro.getNo() %></td>
      <td><%=pro.getName()%></td>
      <td><%=pro.getSuk()%></td>
      <td><%=pro.getDescription()%></td>
      <td class="font-weight-bold">&#x20B9;<%=pro.getPrice()%></td>
      <td><%=pro.getStock()%></td>
      <td>
      <a href="edit.jsp?prono=<%=pro.getNo() %> "><i class="fas fa-pen-nib text-primary"  style="font-size:20px;"></i></a>
      <a href="DeleteServlet?prono=<%= pro.getNo()%> "><i class="fas fa-trash text-danger"  style="font-size:20px;"></i></a>
      
      </td>
    </tr>
    </tbody>

   
   <% 
    
    }
    s.close();
   
   %>
   
   </table>
        </div>
    </div>
    
    
 </div>
</body>
</html>