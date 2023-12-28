package com.doctor.servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import com.dao.DoctorDao;
import com.dao.UserDao;
import com.db.DBconnect;
import com.entity.Doctor;
import com.entity.User;

@WebServlet("/doctorLogin")
public class DoctorLogin extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			String email = request.getParameter("email");
			String password = request.getParameter("password");

			HttpSession session = request.getSession();
			
			DoctorDao dao=new DoctorDao(DBconnect.getConn());
			Doctor doctor=dao.login(email, password);

			if (doctor != null) {
				session.setAttribute("doctObj", doctor);
				response.sendRedirect("doctor/index.jsp");
			} else {

				System.out.println("Invalid user id or password");
				request.setAttribute("errorrMsg", "Invalid user id or password");
				RequestDispatcher rd = request.getRequestDispatcher("doctor_login.jsp");
				rd.include(request, response);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
