package com.ssipdduck.admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ssipdduck.DTO.AniRecomDTO;
import com.ssipdduck.DTO.NoticeDTO;
import com.ssipdduck.util.Util;

/**
 * Servlet implementation class AdminNoticeDel
 */
@WebServlet("/adminnoticedel")
public class AdminNoticeDel extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminNoticeDel() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getParameter("an_no") !=null && Util.str2Int(request.getParameter("an_no"))) {
			NoticeDTO dto = new NoticeDTO();
			AdminboardDAO dao = new AdminboardDAO();
			dto.setAn_no(Integer.parseInt(request.getParameter("an_no")));
			
			dao.noticeDel(Integer.parseInt(request.getParameter("an_no")));

			response.sendRedirect("./adminnotice");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
