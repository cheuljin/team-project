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


@WebServlet("/boardcomment_del")
public class Boardcomment_del extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public Boardcomment_del() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		if (request.getParameter("b_no") != null 
				&& request.getParameter("bc_no") != null 
				&& session.getAttribute("u_email") != null) {
			BoardcommentDTO dto = new BoardcommentDTO();
			AniboardDAO dao = new AniboardDAO();
			
			dto.setB_no(Integer.parseInt(request.getParameter("b_no")));
			dto.setBc_no(Integer.parseInt(request.getParameter("bc_no")));
			dto.setU_id((String)session.getAttribute("u_email"));
			dao.boardcom_del(dto);
			
		}else {
			
		}
		response.sendRedirect("./boardDetail?b_no=" + Integer.parseInt(request.getParameter("b_no")));
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

}
