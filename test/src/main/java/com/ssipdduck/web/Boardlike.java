package com.ssipdduck.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
		HttpSession session = request.getSession();
		int result = 0;
		if (request.getParameter("b_no") != null && Util.str2Int(request.getParameter("b_no")) && session.getAttribute("u_email") != null) {
			AniboardDTO dto = new AniboardDTO();
			AniboardDAO dao = new AniboardDAO();

			dto.setB_no(Integer.parseInt(request.getParameter("b_no")));
			dto.setU_id((String)session.getAttribute("u_email"));
			
			result = dao.boardlikecheck(dto);
			
			if (result == 1) {
				result = dao.boardlike(Integer.parseInt(request.getParameter("b_no")));
			}else {
				result = 0;
			}
			
			PrintWriter pw = response.getWriter();
			pw.print(result);
			
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int result = 0;
		HttpSession session = request.getSession();
		if (request.getParameter("b_no") != null && Util.str2Int(request.getParameter("b_no")) && session.getAttribute("u_email") != null) {
			
			
			AniboardDAO dao = new AniboardDAO();
			AniboardDTO dto = new AniboardDTO();
			
			dto.setB_no(Integer.parseInt(request.getParameter("b_no")));
			dto.setU_id((String)session.getAttribute("u_email"));
			
			result = dao.boardlikeajax(dto);
			
			
			PrintWriter pw = response.getWriter();
			pw.print(result);
		}
	}

}
