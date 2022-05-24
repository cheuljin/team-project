package com.ssipdduck.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ssipdduck.DAO.SignupDAO;
import com.ssipdduck.DTO.SignupDTO;

@WebServlet("/signup")
public class Signup extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Signup() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String nickname = request.getParameter("nickname");
		String tele = request.getParameter("tele");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String password2 = request.getParameter("password2");
		
		System.out.println(name);
		
		SignupDAO dao = new SignupDAO();
		
		SignupDTO dto = new SignupDTO();
		dto.setName(name);
		dto.setNickname(nickname);
		dto.setEmail(email);
		dto.setTele(tele);
		dto.setPassword(password);
		
		dao.signup(dto);
		response.sendRedirect("./login.jsp");
		
	}

}
