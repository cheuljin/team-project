package com.ssipdduck.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ssipdduck.DAO.SignupDAO;


@WebServlet("/emailcheck")
public class Emailcheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Emailcheck() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if (request.getParameter("email") != null) {
			String email = request.getParameter("email");
			SignupDAO dao = new SignupDAO();
			int result = 1;
			result = dao.emailCheck(email);
			
			PrintWriter pw = response.getWriter();
			pw.print(result);
		}

	}
}
