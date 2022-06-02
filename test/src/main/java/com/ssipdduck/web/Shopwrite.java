package com.ssipdduck.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ssipdduck.DAO.ShopDAO;
import com.ssipdduck.DTO.ShopDTO;


@WebServlet("/shopwrite")
public class Shopwrite extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Shopwrite() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession();
		if (session.getAttribute("u_email").equals("admin@a.com")) {
			
			RequestDispatcher rd = request.getRequestDispatcher("./shopwrite.jsp");

			rd.forward(request, response);
		} else if(!(session.getAttribute("u_email").equals("admin@a.com"))){ //관리자만
			response.sendRedirect("./shop.jsp");
		}
               
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

request.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession();
		String re = null;
		if (session.getAttribute("u_email").equals("admin@a.com")) {

			if (request.getParameter("name") != null && request.getParameter("content") != null) {

				ShopDAO dao = new ShopDAO();
				ShopDTO dto = new ShopDTO();
				dto.setAs_image(request.getParameter("image"));
				dto.setAs_name(request.getParameter("name"));
				dto.setAs_content(request.getParameter("content"));
				dto.setU_email((String) session.getAttribute("u_email"));
				dao.shopwrite(dto);
				
				re = "./shop";
			}else {
				re = "./shop";
			}
		} else {
			re = "./index.jsp";
		}
		response.sendRedirect(re);
	}
	
}
