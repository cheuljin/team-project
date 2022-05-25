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
import com.ssipdduck.DTO.AniboardDTO;


@WebServlet("/write")
public class Write extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public Write() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		if (session.getAttribute("u_email") != null) {
			RequestDispatcher rd = request.getRequestDispatcher("./write.jsp");
			rd.forward(request, response);
		} else {
			response.sendRedirect("./index.jsp");
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		String re = null;
		if (session.getAttribute("u_email") != null) {

			if (request.getParameter("title") != null && request.getParameter("content") != null) {

				AniboardDAO dao = new AniboardDAO();
				AniboardDTO dto = new AniboardDTO();
				dto.setB_content(request.getParameter("content"));
				dto.setB_title(request.getParameter("title"));
				dto.setU_id((String) session.getAttribute("u_email"));
				dao.write(dto);
				
				
				re = "./aniboard";
			}else {
				re = "./aniboard";
			}
		} else {
			re = "./index.jsp";
		}
		response.sendRedirect(re);
	}

}
