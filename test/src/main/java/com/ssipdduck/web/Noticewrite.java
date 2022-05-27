package com.ssipdduck.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ssipdduck.DAO.NoticeDAO;
import com.ssipdduck.DTO.NoticeDTO;


@WebServlet("/noticewrite")
public class Noticewrite extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public Noticewrite() {
        super();

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		if (session.getAttribute("u_email").equals("admin@a.com")) {
			
			RequestDispatcher rd = request.getRequestDispatcher("./noticewrite.jsp");

			rd.forward(request, response);
		} else {
			System.out.println("???");
			response.sendRedirect("./index.jsp");
		}
	}
	


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		String re = null;
		if (session.getAttribute("u_email").equals("admin@a.com")) {

			if (request.getParameter("title") != null && request.getParameter("content") != null) {

				NoticeDAO dao = new NoticeDAO();
				NoticeDTO dto = new NoticeDTO();
				dto.setAn_content(request.getParameter("content"));
				dto.setAn_title(request.getParameter("title"));
				dto.setU_email((String) session.getAttribute("u_email"));
				dao.noticewrite(dto);
				
				re = "./notice";
			}else {
				re = "./notice";
			}
		} else {
			re = "./index.jsp";
		}
		response.sendRedirect(re);
	}

}
