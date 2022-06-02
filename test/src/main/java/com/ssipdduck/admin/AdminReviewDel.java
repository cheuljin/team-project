package com.ssipdduck.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ssipdduck.DTO.AniRecomDTO;
import com.ssipdduck.util.Util;

/**
 * Servlet implementation class AdminReviewDel
 */
@WebServlet("/adminreviewdel")
public class AdminReviewDel extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminReviewDel() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		if(request.getParameter("a_no") !=null && Util.str2Int(request.getParameter("a_no"))) {
			AniRecomDTO dto = new AniRecomDTO();
			AdminboardDAO dao = new AdminboardDAO();
			dto.setA_no(Integer.parseInt(request.getParameter("a_no")));
			
			dao.reviewDel(Integer.parseInt(request.getParameter("a_no")));

			response.sendRedirect("./adminreview");
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
