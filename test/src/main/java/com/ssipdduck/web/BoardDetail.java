package com.ssipdduck.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ssipdduck.DAO.AniboardDAO;
import com.ssipdduck.DTO.AniboardDTO;
import com.ssipdduck.DTO.BoardcommentDTO;
import com.ssipdduck.util.Util;


@WebServlet("/boardDetail")
public class BoardDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public BoardDetail() {
        super();
        
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if (request.getParameter("b_no") != null && Util.str2Int(request.getParameter("b_no"))) {
			int b_no = Integer.parseInt(request.getParameter("b_no"));
			AniboardDAO dao = new AniboardDAO();
			AniboardDTO detail = dao.detail(b_no);
			
			System.out.println(detail.getCommentcount());
			
			if (detail.getCommentcount() != 0) {
				List<BoardcommentDTO> list = dao.boardcomment(b_no);
				request.setAttribute("list", list);
			}
			
			
			
			RequestDispatcher rd = request.getRequestDispatcher("./board-detail.jsp");
			request.setAttribute("detail", detail);
			rd.forward(request, response);
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

}
