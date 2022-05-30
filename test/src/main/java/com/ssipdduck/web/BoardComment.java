package com.ssipdduck.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ssipdduck.DAO.AniboardDAO;
import com.ssipdduck.DTO.BoardcommentDTO;
import com.ssipdduck.util.Util;

@WebServlet("/boardComment")
public class BoardComment extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public BoardComment() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		
		
		if (session.getAttribute("u_email") != null) {
				if (request.getParameter("b_no") != null && Util.str2Int(request.getParameter("b_no")) && request.getParameter("comment") != null) {
				
			AniboardDAO dao = new AniboardDAO();
			BoardcommentDTO dto = new BoardcommentDTO();

			dto.setB_no(Integer.parseInt(request.getParameter("b_no")));
			dto.setBc_comment(request.getParameter("comment"));
			dto.setU_id((String) session.getAttribute("u_email"));

			dao.writeComment(dto);

			response.sendRedirect("./boardDetail?b_no=" + Integer.parseInt(request.getParameter("b_no")));
		}else {
			
		}
	}else {
		
	}
}
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

}
