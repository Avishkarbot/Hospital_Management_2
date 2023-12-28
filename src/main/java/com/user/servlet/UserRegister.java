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

@WebServlet("/user_register")
public class UserRegister extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String fullName=request.getParameter("fullname");
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		
		User u=new User(fullName,email,password);
		HttpSession session=request.getSession();
		UserDao dao=new UserDao(DBconnect.getConn());
		boolean f=dao.register(u);
		
		if(f)
		{
			System.out.println("Successfully register");
			request.setAttribute("sucMsg", "Successfully register");
			RequestDispatcher rd=request.getRequestDispatcher("signup.jsp");
			rd.include(request,response);
//			session.setAttribute("succMsg","Register successfully" );
//			response.sendRedirect("signup.jsp");
		}else {
			System.out.println("Somthing went wrong !");
			request.setAttribute("erroMsg", "Invalid user id or password");
			RequestDispatcher rd=request.getRequestDispatcher("signup.jsp");
			rd.include(request,response);
//			session.setAttribute("errorMsg","Something went wrong !" );
//			response.sendRedirect("signup.jsp");
		}
		
	}

}
