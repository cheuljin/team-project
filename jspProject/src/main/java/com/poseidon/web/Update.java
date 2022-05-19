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
import com.poseidon.dto.BoardDTO;
import com.poseidon.util.Util;

@WebServlet("/update")
public class Update extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Update() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		if(session.getAttribute("m_id")!=null) {
			if(Util.str2Int(request.getParameter("b_no"))){
				int b_no = Integer.parseInt(request.getParameter("b_no"));
				if(request.getParameter("b_no") !=null) {
					BoardDAO dao = new BoardDAO();
					BoardDTO dto =  dao.detail(b_no);
					
					RequestDispatcher rd = request.getRequestDispatcher("/update.jsp");
					request.setAttribute("dto", dto);
					rd.forward(request, response);
					
				}else {
					response.sendRedirect("./board.jsp");
				}
			}else {
				response.sendRedirect("./board");
			}
		}else {
			response.sendRedirect("./index.jsp");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		request.setCharacterEncoding("UTF-8");
		
		if(session.getAttribute("m_id")!=null) {
			if(request.getParameter("title") != null  && Util.str2Int(request.getParameter("b_no"))){
				int b_no = Integer.parseInt(request.getParameter("b_no"));
				String title = request.getParameter("title");
				String content = request.getParameter("content");
				
				BoardDAO dao = new BoardDAO();
				BoardDTO dto = new BoardDTO();
				dto.setB_no(b_no);
				dto.setB_title(title);
				dto.setB_content(content);
				dto.setM_id((String)session.getAttribute("m_id"));
				
				dao.Update(dto);
				
				response.sendRedirect("./detail?b_no=" + b_no);
			}else {
				response.sendRedirect("./board");
			}
		}else {
			response.sendRedirect("./index.jsp");
		}
	}

}
