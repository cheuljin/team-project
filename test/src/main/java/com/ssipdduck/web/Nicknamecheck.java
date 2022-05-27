package com.ssipdduck.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ssipdduck.DAO.SignupDAO;

@WebServlet("/nicknamecheck")
public class Nicknamecheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Nicknamecheck() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if (request.getParameter("nickname") != null) {
			String nickname = request.getParameter("nickname");
			SignupDAO dao = new SignupDAO();
			int result = 1; 
			result = dao.nicknamecheck(nickname); 
			
			PrintWriter pw = response.getWriter();
			pw.print(result);
		}
	}

}
