package com.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Product;
import com.helper.FactoryProvider;

public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public DeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try
		{
		int no =Integer.parseInt( request.getParameter("prono"));
			
			Session s = FactoryProvider.getFactory().openSession();
			Transaction tx= s.beginTransaction();
			
		Product pro =(Product)s.get(Product.class, no);
			s.delete(pro);
			
			tx.commit();
			
			s.close();
			response.sendRedirect("all_products.jsp");
			
			
			
			
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
	}

		

}
