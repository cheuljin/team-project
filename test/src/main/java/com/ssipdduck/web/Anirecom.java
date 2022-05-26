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


@WebServlet("/anirecom")
public class Anirecom extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Anirecom() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AnirecomDAO dao = new AnirecomDAO();
		System.out.println("안돼111");
		List<AniRecomDTO> top = dao.topList();
		
		int pageNo = 1;
		System.out.println("안돼");
		if(request.getParameter("pageNo") != null) { 
			pageNo = Integer.parseInt(request.getParameter("pageNo"));
		}
		
		List<AniRecomDTO> list = dao.Anilist((pageNo-1)*10);
		
		RequestDispatcher rd = request.getRequestDispatcher("./anirecom.jsp");
		System.out.println(pageNo+"1");
		request.setAttribute("list", list);
    	System.out.println(pageNo+"2");
    	request.setAttribute("top", top);
    	System.out.println(pageNo+"3");
    	request.setAttribute("totalcount", list.get(0).getTotalcount());
    	System.out.println(pageNo+"4");
    	request.setAttribute("pageNo", pageNo);
		System.out.println(pageNo+"5");
		rd.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
