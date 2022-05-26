package com.ssipdduck.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



import com.ssipdduck.DAO.AniboardDAO;
import com.ssipdduck.DTO.AniboardDTO;
import com.ssipdduck.util.Util;


@WebServlet("/update")
public class Update extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public Update() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		if (request.getParameter("b_no") != null) {
			if (Util.str2Int(request.getParameter("b_no"))) {
				int b_no = Integer.parseInt(request.getParameter("b_no"));
				HttpSession session = request.getSession();
				if (session.getAttribute("u_email") != null) {
					
					AniboardDAO dao = new AniboardDAO();
					AniboardDTO dto = dao.detail(b_no);//어느 글
					//디스패쳐
					RequestDispatcher rd = request.getRequestDispatcher("./update.jsp");
					request.setAttribute("dto", dto);
					rd.forward(request, response);
					
				}else {
					response.sendRedirect("./index.jsp");//로그인해야 수정 가능
				}
			}else {
				response.sendRedirect("./board");
			}
			
			
			
			
		} 
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			request.setCharacterEncoding("UTF-8");
			
			HttpSession session = request.getSession();
			if(session.getAttribute("u_email") != null) {
				if (request.getParameter("b_no") != null && Util.str2Int(request.getParameter("b_no"))) {
					int b_no = Integer.parseInt(request.getParameter("b_no"));
					String title = request.getParameter("title");
					String content = request.getParameter("content");
					
					AniboardDTO dto= new AniboardDTO();
					AniboardDAO dao = new AniboardDAO();
							
					dto.setB_no(b_no);
					dto.setB_title(title);
					dto.setB_content(content);
					dto.setU_id((String)session.getAttribute("u_id"));
					
					dao.update(dto);
					
					response.sendRedirect("./board-detail?b_no="+ b_no);
							
				}else {
					response.sendRedirect("./board");
				}
			}else {
				response.sendRedirect("./index.jsp");
			}
					
	}

}
