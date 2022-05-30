package com.ssipdduck.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ssipdduck.DAO.AniboardDAO;
import com.ssipdduck.DTO.BoardcommentDTO;


@WebServlet("/boardcomment_up")
public class Boardcomment_up extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public Boardcomment_up() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		BoardcommentDTO dto = new BoardcommentDTO();
		AniboardDAO dao = new AniboardDAO();
		if(session.getAttribute("u_email") != null && request.getParameter("bc_no") != null) {
			
			dto.setB_no(Integer.parseInt(request.getParameter("b_no")));
			dto.setBc_no(Integer.parseInt(request.getParameter("bc_no")));
			dto.setU_id((String)session.getAttribute("u_email"));
			
			dao.boardcommentdetail(dto);
		}else {
			
		}
		RequestDispatcher rd = request.getRequestDispatcher("./boardcomment_Update.jsp");
		
		request.setAttribute("dto", dto);
		rd.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		request.setCharacterEncoding("UTF-8");
		
		if (session.getAttribute("u_email") != null && request.getParameter("bc_no") != null && request.getParameter("bc_comment") != null) {
			
			BoardcommentDTO dto = new BoardcommentDTO();
			AniboardDAO dao = new AniboardDAO();
			
			dto.setB_no(Integer.parseInt(request.getParameter("b_no")));
			dto.setBc_no(Integer.parseInt(request.getParameter("bc_no")));
			dto.setU_id((String)session.getAttribute("u_email"));
			dto.setBc_comment(request.getParameter("bc_comment"));
			
			dao.boardcom_up(dto);
			
			response.sendRedirect("./boardDetail?b_no="+ Integer.parseInt(request.getParameter("b_no")));
			
		}
	}

}
