package com.ssipdduck.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ssipdduck.DAO.SignupDAO;

@WebServlet("/passwordcheck")
public class Passwordcheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Passwordcheck() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("shit");
		if (request.getParameter("password") != null) {
			String password = request.getParameter("password");
			SignupDAO dao = new SignupDAO();
			int result = 1; 
			result = dao.passwordcheck(password); 
			
			PrintWriter pw = response.getWriter();
			pw.print(result);
		}
	
	}

}
