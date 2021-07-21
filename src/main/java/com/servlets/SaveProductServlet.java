package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Product;
import com.helper.FactoryProvider;
public class SaveProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public SaveProductServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	
		protected void doPost(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			try {
				// name , suk ,description,price, stock fetch
				
			String name=request.getParameter("name");
			String suk	=request.getParameter("suk");
			String description	=request.getParameter("description");
		     int price=Integer.parseInt(request.getParameter("price"));
		     int stock=Integer.parseInt(request.getParameter("stock"));

		     Product pro= new Product(name,suk,description,price,stock);
			
	//	System.out.println(p.getNo()+":"+ p.getName()+":"+p.getSuk()+":"+p.getDescription()+":"+p.getPrice()+":"+p.getStock());
		// hibernate :save()
		   Session s=FactoryProvider.getFactory().openSession();
		    Transaction tx= s.beginTransaction();
		   s.save(pro);
		   tx.commit();
		   s.close();
		   
		     response.setContentType("text/html");
		   PrintWriter out=response.getWriter();
		   out.println("<h2 style='text-align:center;'>Product Added successfully</h2>");
		 // out.println("<h2 style='text-align:center;'><a href='all_products.jsp'>View All Product</a></h2>");
		   response.sendRedirect("all_products.jsp");
		   
		   
		   
		   
			}catch(Exception e)
			{ 
				e.printStackTrace();
			}	
	}

}
