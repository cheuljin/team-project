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

@WebServlet("/anireview")
public class AniReview extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AniReview() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AnirecomDAO dao = new AnirecomDAO();
		List<AniRecomDTO> top = dao.topList();
		
		int pageNo = 1;
		if(request.getParameter("pageNo") != null) { 
			pageNo = Integer.parseInt(request.getParameter("pageNo"));
		}
		
		List<AniRecomDTO> list = dao.Anilist((pageNo-1)*10);
		
		RequestDispatcher rd = request.getRequestDispatcher("./anirecom.jsp");
		request.setAttribute("list", list);

    	request.setAttribute("top", top);

    	request.setAttribute("totalcount", list.get(0).getTotalcount());

    	request.setAttribute("pageNo", pageNo);

		rd.forward(request, response);
	
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
