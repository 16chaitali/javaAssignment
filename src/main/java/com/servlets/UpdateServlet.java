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

public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
        public UpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try
		{
		String Name= request.getParameter("name");
		String suk = request.getParameter("suk");
		String des = request.getParameter("description");
		int pric=Integer.parseInt(request.getParameter("price"));
		int st=Integer.parseInt(request.getParameter("stock"));
		int no = Integer.parseInt(request.getParameter("no"));
		Session s= FactoryProvider.getFactory().openSession();
		Transaction tx = s.beginTransaction();
		
		Product pro = s.get(Product.class, no);
	pro.setName(Name);
	pro.setSuk(suk);
	pro.setDescription(des);
	pro.setPrice(pric);
	pro.setStock(st);
	
	    tx.commit();
		s.close();
		response.sendRedirect("all_products.jsp");
		
		}catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
