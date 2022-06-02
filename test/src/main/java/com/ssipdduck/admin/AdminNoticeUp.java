package com.ssipdduck.admin;

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


@WebServlet("/adminnoticeup")
public class AdminNoticeUp extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AdminNoticeUp() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if (Util.str2Int(request.getParameter("an_no"))) {
			int an_no = Integer.parseInt(request.getParameter("an_no"));
			if (request.getParameter("an_no") != null) {
				AdminboardDAO dao = new AdminboardDAO();
				NoticeDTO dto = dao.noticedetail(an_no);

				RequestDispatcher rd = request.getRequestDispatcher("/adminnoticeupdate.jsp");
				request.setAttribute("dto", dto);
				rd.forward(request, response);
			}
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		if (request.getParameter("an_no") != null) {
			if (Util.str2Int(request.getParameter("an_no"))) {
				int an_no = Integer.parseInt(request.getParameter("an_no"));

					AdminboardDAO dao = new AdminboardDAO();
					NoticeDTO dto = new NoticeDTO();
					dto.setAn_no(Integer.parseInt(request.getParameter("an_no")));
					
					dto.setAn_title(request.getParameter("an_title"));
					dto.setAn_content(request.getParameter("an_content"));
			
					dao.noticeUp(dto);
					
					response.sendRedirect("./adminnotice");

				}
			}
		}
}


