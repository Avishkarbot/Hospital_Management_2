package com.doctor.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import com.dao.AppointmentDao;
import com.db.DBconnect;
import com.entity.Appointment;

/**
 * Servlet implementation class UpdateStatus
 */
@WebServlet("/updateStatus")
public class UpdateStatus extends HttpServlet {

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int id=Integer.parseInt(req.getParameter("id"));
			int did=Integer.parseInt(req.getParameter("did"));
			
			String comm =req.getParameter("comm");
			
			AppointmentDao dao = new AppointmentDao(DBconnect.getConn());
			HttpSession session = req.getSession();
			
			if(dao.updateCommentStatus(id, did, comm))
			{
				session.setAttribute("succStatus", "Comment updated");
				resp.sendRedirect("doctor/patient.jsp");
				
			}else {
				session.setAttribute("errorStatus", "Something wrong on server");
				resp.sendRedirect("doctor/patient.jsp");
			}
			
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

}
