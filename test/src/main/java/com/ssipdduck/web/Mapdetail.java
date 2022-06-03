package com.ssipdduck.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ssipdduck.DAO.ShopDAO;
import com.ssipdduck.DTO.ShopDTO;


@WebServlet("/mapdetail")
public class Mapdetail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public Mapdetail() {
        super();

    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	//	if(request.getParameter("as_roadAddr") != null) {
	//		String as_roadAddr = (request.getParameter("as_roadAddr"));
			ShopDAO dao = new ShopDAO();
			
			
			ShopDTO detail = dao.detail(Integer.parseInt(request.getParameter("as_no")));
//			
			RequestDispatcher rd = request.getRequestDispatcher("/mapdetail.jsp");
			request.setAttribute("detail", detail);
	//		request.setAttribute("as_roadAddr", as_roadAddr);
			rd.forward(request, response);
			
			
	//	} else {
			
		//}
			
			
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
