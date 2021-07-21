package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Admin;
import com.helper.FactoryProvider;

public class AdminLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AdminLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try
		{
			String us = request.getParameter("username");
			String pa = request.getParameter("password");
			
			Admin admin= new Admin(us,pa);
		//	System.out.println(admin.getUsername()+" "+admin.getPassword()); 
			//hibernagte save()
			Session s = FactoryProvider.getFactory().openSession();
			Transaction tx = s.beginTransaction();
			s.save(admin);
			tx.commit();
			s.close();
			
			response.setContentType("text/html");
			   PrintWriter out=response.getWriter();
			   out.println("<h2 style='text-align:center;'>Login successfully</h2>");
			   response.sendRedirect("index.jsp");

			   
			}catch(Exception e) 
		{
			e.printStackTrace();
		}
		
		
		}

}
