package com.user.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import com.dao.UserDao;
import com.db.DBconnect;

/**
 * Servlet implementation class changePassword
 */
@WebServlet("/userChangePassword")
public class changePassword extends HttpServlet {


	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		int uid = Integer.parseInt(req.getParameter("uid"));
		String oldPassword = req.getParameter("oldPassword");
		String newPassword = req.getParameter("newPassword");

		UserDao dao = new UserDao(DBconnect.getConn());
		HttpSession session = req.getSession();

		if (dao.checkOldPassword(uid, oldPassword)) {

			if (dao.changePassword(uid, newPassword)) {
				session.setAttribute("succUserPassword", "Password Change Sucessfully");
				resp.sendRedirect("change_password.jsp");

			} else {
				session.setAttribute("errorUserPassword", "Something wrong on server");
				resp.sendRedirect("change_password.jsp");
			}

		} else {
			session.setAttribute("errorUserPassword", "Old Password Incorrect");
			resp.sendRedirect("change_password.jsp");
		}

	}

}