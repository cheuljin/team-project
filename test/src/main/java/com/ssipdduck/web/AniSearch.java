package com.ssipdduck.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ssipdduck.DAO.AnirecomDAO;
import com.ssipdduck.DTO.AniRecomDTO;

/**
 * Servlet implementation class AniSearch
 */
@WebServlet("/anisearch")
public class AniSearch extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AniSearch() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String a_title = request.getParameter("a_title");
		if(request.getParameter("a_title")!=null) {
			AnirecomDAO dao = new AnirecomDAO();
			AniRecomDTO dto = new AniRecomDTO();
			
			List<AniRecomDTO> list = dao.searchlist(a_title);
			
			RequestDispatcher rd = request.getRequestDispatcher("./anisearch.jsp");
			request.setAttribute("list", list);
			rd.forward(request, response);

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
