package com.ssipdduck.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ssipdduck.DAO.SignupDAO;
import com.ssipdduck.DTO.LoginDTO;
import com.ssipdduck.DTO.SignupDTO;

@WebServlet("/findpassword")
public class Findpassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Findpassword() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		if(request.getParameter("u_email") !=null && request.getParameter("u_name") != null) {
			SignupDTO dto = new SignupDTO();
			SignupDAO dao = new SignupDAO();
			
			dto.setEmail(request.getParameter("u_email"));
			dto.setName(request.getParameter("u_name"));
			dto = dao.findpw(dto);
			
			RequestDispatcher rd = request.getRequestDispatcher("./guesspw.jsp");
			request.setAttribute("dto", dto);
			rd.forward(request, response);
			
			
			
		}
		
	}

}
