package com.ssipdduck.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ssipdduck.DAO.NoticeDAO;
import com.ssipdduck.DTO.NoticeDTO;
import com.ssipdduck.util.Util;

@WebServlet("/noticedetail")
public class NoticeDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public NoticeDetail() {
        super();

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getParameter("an_no") != null && Util.str2Int(request.getParameter("an_no"))) {
			int an_no = Integer.parseInt(request.getParameter("an_no"));
			
			NoticeDAO dao = new NoticeDAO();
			dao.countUp(an_no);
			
			NoticeDTO detail = dao.detail(an_no);
			
			RequestDispatcher rd = request.getRequestDispatcher("/noticedetail.jsp");
			request.setAttribute("detail", detail);
			rd.forward(request, response);
			
		} else {
			response.sendRedirect("./notice");
		}
			
			
			
			
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
