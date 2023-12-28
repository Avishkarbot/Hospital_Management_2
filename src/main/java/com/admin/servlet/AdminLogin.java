package com.admin.servlet;

import java.io.IOException;

import com.entity.User;

import jakarta.security.auth.message.callback.PrivateKeyCallback.Request;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/adminLogin")
public class AdminLogin extends HttpServlet
{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		try {
			String email=req.getParameter("email");
			String password=req.getParameter("password");
			
			HttpSession session = req.getSession();
			
			if("admin@gmail.com".equals(email) && "admin".equals(password))
			{
				session.setAttribute("adminObj", new User());
				resp.sendRedirect("admin/index.jsp");
			}else {
				
				System.out.println("Invalid user id or password");
				req.setAttribute("error", "Invalid user id or password");
				RequestDispatcher rd=req.getRequestDispatcher("admin_login.jsp");
				rd.include(req,resp);
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	

}
