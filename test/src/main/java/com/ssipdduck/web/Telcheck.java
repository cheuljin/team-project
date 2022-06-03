package com.ssipdduck.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ssipdduck.DAO.SignupDAO;
import com.ssipdduck.DTO.SignupDTO;

@WebServlet("/telcheck")
public class Telcheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Telcheck() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if (request.getParameter("tel") != null) {
			String tel = request.getParameter("tel");
			SignupDTO dto = new SignupDTO();
			dto.setTele(tel);
			SignupDAO dao = new SignupDAO();
			int result = 1; 
			result = dao.telcheck(dto); 
			
			PrintWriter pw = response.getWriter();
			pw.print(result);
		}
	}

}
