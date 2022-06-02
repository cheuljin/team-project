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
import com.ssipdduck.util.Util;


@WebServlet("/nup")
public class Nup extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public Nup() {
        super();

    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		
		if(request.getParameter("an_no") != null) {
			if(Util.str2Int(request.getParameter("an_no"))) {
				int an_no = Integer.parseInt(request.getParameter("an_no"));
				
				HttpSession session = request.getSession();
				if(session.getAttribute("u_eamil") != null) {
					NoticeDAO dao = new NoticeDAO();
					NoticeDTO dto = dao.detail(an_no);
					
					RequestDispatcher rd = request.getRequestDispatcher("./noticewrite.jsp");
					request.setAttribute("dto", dto);
					rd.forward(request, response);
				
				}
			}
		}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		if(session.getAttribute("u_email") == "admin@a.com") {
			if(request.getParameter("an_no") != null && Util.str2Int(request.getParameter("an_no"))) {
				int an_no = Integer.parseInt(request.getParameter("an_no"));
				String title = request.getParameter("title");
				String content = request.getParameter("content");
				
				NoticeDTO dto = new NoticeDTO();
				dto.setAn_no(an_no);
				dto.setAn_title(title);
				dto.setAn_content(content);
				
				NoticeDAO dao = new NoticeDAO();
				dao.nup(dto);
				
				response.sendRedirect("./noticedetail?an_no="+an_no);				
			}
		}else {
			response.sendRedirect("./index.jsp");
		}
	}

}



















