package com.user.servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import com.dao.UserDao;
import com.db.DBconnect;
import com.entity.User;

@WebServlet("/userLogin")
public class UserLogin extends HttpServlet 
{
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		try {
			String email=request.getParameter("email");
			String password=request.getParameter("password");
			
			
			HttpSession session = request.getSession();
			UserDao dao=new UserDao(DBconnect.getConn());
			User user=dao.login(email, password);
			
			
			
			if(user!=null)
			{
				session.setAttribute("userObj", user);
				response.sendRedirect("index.jsp");
			}else {
//				
//				System.out.println("Invalid user id or password");
//				request.setAttribute("errorrMsg", "Invalid user id or password");
//				RequestDispatcher rd=request.getRequestDispatcher("user_login.jsp");
//				rd.include(request,response);
				session.setAttribute("errorMsg", "Invalid email or password");
				response.sendRedirect("user_login.jsp");
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	
	}

}
