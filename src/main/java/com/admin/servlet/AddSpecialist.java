package com.admin.servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import com.dao.SpecialistDao;
import com.db.DBconnect;
import com.entity.User;

@WebServlet("/addSpecialist")
public class AddSpecialist extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException 
	{
		String specName=request.getParameter("specName");
		
		SpecialistDao dao=new SpecialistDao(DBconnect.getConn());
		boolean f=dao.addSpecialist(specName);
		HttpSession session =request.getSession();
		if(f)
		{
			session.setAttribute("specSucc", "Successfully Added");
			response.sendRedirect("admin/index.jsp");
		}else {
			
			System.out.println("Invalid user id or password");
			request.setAttribute("specError", "Invalid user id or password");
			RequestDispatcher rd=request.getRequestDispatcher("admin_login.jsp");
			rd.include(request,response);
		}
	}

}
