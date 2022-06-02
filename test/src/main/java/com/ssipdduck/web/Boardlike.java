package com.ssipdduck.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ssipdduck.DAO.AniboardDAO;
import com.ssipdduck.DTO.AniboardDTO;
import com.ssipdduck.util.Util;


@WebServlet("/boardlike")
public class Boardlike extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Boardlike() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int result = 0;
		if (request.getParameter("b_no") != null && Util.str2Int(request.getParameter("b_no"))) {
			int b_no = Integer.parseInt(request.getParameter("b_no"));
			AniboardDAO dao = new AniboardDAO();
			result = dao.boardlike(b_no);
			
			AniboardDTO dto = new AniboardDTO();
			PrintWriter pw = response.getWriter();
			pw.print(result);
			
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
