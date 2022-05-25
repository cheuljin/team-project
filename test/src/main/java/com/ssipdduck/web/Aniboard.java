package com.ssipdduck.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ssipdduck.DAO.AniboardDAO;
import com.ssipdduck.DTO.AniboardDTO;


@WebServlet("/aniboard")
public class Aniboard extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Aniboard() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AniboardDAO dao = new AniboardDAO();
		List<AniboardDTO> list = dao.list();
		System.out.println("gg");
		RequestDispatcher rd = request.getRequestDispatcher("./board.jsp");
		request.setAttribute("list", list);
		rd.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
