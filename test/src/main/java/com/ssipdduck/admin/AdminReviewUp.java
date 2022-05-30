package com.ssipdduck.admin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ssipdduck.DTO.AniRecomDTO;
import com.ssipdduck.util.Util;

/**
 * Servlet implementation class AdminReviewUp
 */
@WebServlet("/adminreviewup")
public class AdminReviewUp extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminReviewUp() {
        super();
        // TODO Auto-generated constructor stub
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	if(Util.str2Int(request.getParameter("a_no"))){
			int a_no = Integer.parseInt(request.getParameter("a_no"));
			if(request.getParameter("a_no") !=null) {
				AdminReviewDAO dao = new AdminReviewDAO();
				AniRecomDTO dto = dao.detail(a_no);

				RequestDispatcher rd = request.getRequestDispatcher("/adminreviewupdate.jsp");
				request.setAttribute("dto", dto);
				rd.forward(request, response);
			}
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
