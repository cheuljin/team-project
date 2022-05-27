package com.ssipdduck.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ssipdduck.DAO.AniboardDAO;
import com.ssipdduck.DTO.AniboardDTO;
import com.ssipdduck.util.Util;


@WebServlet("/delete")
public class Delete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public Delete() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		System.out.println(request.getParameter("b_no") + "," + session.getAttribute("u_email"));
		if (request.getParameter("b_no") != null && session.getAttribute("u_email") != null && Util.str2Int(request.getParameter("b_no"))){
			AniboardDTO dto = new AniboardDTO();
			AniboardDAO dao = new AniboardDAO();
			
			dto.setB_no(Integer.parseInt(request.getParameter("b_no")));
			dto.setU_id((String)session.getAttribute("u_email"));
			
			dao.delete(dto);
			
			response.sendRedirect("./aniboard");
		}else {
			response.sendRedirect("./index.jsp");
		}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
