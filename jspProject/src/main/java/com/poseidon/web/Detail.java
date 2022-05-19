package com.poseidon.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.poseidon.dao.BoardDAO;
import com.poseidon.dto.BoardDTO;
import com.poseidon.dto.CommentDTO;
import com.poseidon.util.Util;

@WebServlet("/detail")
public class Detail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Detail() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		if(request.getParameter("b_no") != null && Util.str2Int(request.getParameter("b_no"))) {
			int b_no = Integer.parseInt(request.getParameter("b_no"));
			//해당글 읽어오기전에 미리 조회수 올리기+1
			
			BoardDAO dao = new BoardDAO();
			dao.countUp(b_no);
			
			BoardDTO detail = dao.detail(b_no);
			
			if(detail.getCommentcount()>0) {
				List<CommentDTO> list = dao.commentList(b_no);
				request.setAttribute("list", list);
			}
			RequestDispatcher rd = request.getRequestDispatcher("/detail.jsp");
			request.setAttribute("detail", detail);
			rd.forward(request, response);
			
		}else {
			response.sendRedirect("./board");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
