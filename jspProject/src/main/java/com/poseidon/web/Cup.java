package com.poseidon.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.poseidon.dao.BoardDAO;
import com.poseidon.dto.CommentDTO;


@WebServlet("/cup")
public class Cup extends HttpServlet {
	private static final long serialVersionUID = 1L;
     public Cup() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	//수정페이지 호출 -> 해당 레코드 값 가져오기.
		
		HttpSession session = request.getSession();
		CommentDTO dto = new CommentDTO();
		 if (request.getParameter("b_no") != null && request.getParameter("c_no") != null
		           && session.getAttribute("m_id") != null){
			 dto.setB_no(Integer.parseInt(request.getParameter("b_no")));
			 dto.setC_no(Integer.parseInt(request.getParameter("c_no")));
			 dto.setM_id((String) session.getAttribute("m_id"));
			 
			 BoardDAO dao = new BoardDAO();
			 dto = dao.commentDetail(dto);
		}else {
			
		}
		 RequestDispatcher rd = request.getRequestDispatcher("./commentUpdate.jsp");
		 request.setAttribute("dto", dto);
		 rd.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		request.setCharacterEncoding("UTF-8");
		if (session.getAttribute("m_id") !=null && request.getParameter("c_no") !=null && request.getParameter("content") != null){

			CommentDTO dto = new CommentDTO();
			dto.setB_no(Integer.parseInt(request.getParameter("b_no")));
			dto.setC_no(Integer.parseInt(request.getParameter("c_no")));
			dto.setC_content(request.getParameter("content"));
			dto.setM_id((String)session.getAttribute("m_id"));
			
			BoardDAO dao = new BoardDAO();
			dao.commentUpdate(dto);
		 }else {
			 
		 }
		response.sendRedirect("./detail?b_no=" + request.getParameter("b_no"));
	}

}
