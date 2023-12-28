package com.user.servlet;

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

@WebServlet("/appAppointment")
public class AppointmentServlet extends HttpServlet {

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("Hello");
		int userId = Integer.parseInt(req.getParameter("userid"));
		String fullname = req.getParameter("fullname");
		String gender = req.getParameter("age");
		String age = req.getParameter("age");
		String appoint_date = req.getParameter("appoint_date");
		String email = req.getParameter("email");
		String phno = req.getParameter("phno");
		String diseases = req.getParameter("diseases");
		int doctor_id = Integer.parseInt(req.getParameter("doct"));
		String address = req.getParameter("address");
		System.out.println("Hii");
		Appointment ap = new Appointment(userId, fullname, gender, age, appoint_date, email, phno, diseases, doctor_id,
				address, "Pending");
		System.out.println("Kese");
		AppointmentDao dao=new AppointmentDao(DBconnect.getConn());
		HttpSession session=req.getSession();
		System.out.println("Ho");
		if(dao.addAppointment(ap))
		{
			session.setAttribute("appointSucc", "Appointment Successfully");
			resp.sendRedirect("user_appointment.jsp");
		}else {
			session.setAttribute("appointError", "Appointment Failed");
			resp.sendRedirect("user_appointment.jsp");
		}

	}

}
