package com.poseidon.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.poseidon.dao.BoardDAO;
import com.poseidon.dao.NoticeDAO;
import com.poseidon.dto.BoardDTO;
import com.poseidon.dto.NoticeDTO;
import com.poseidon.util.Util;

@WebServlet("/noticeDetail")
public class NoticeDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public NoticeDetail() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getParameter("n_no") != null && Util.str2Int(request.getParameter("n_no"))) {
			int n_no = Integer.parseInt(request.getParameter("n_no"));
		
			NoticeDAO dao = new NoticeDAO();
			NoticeDTO detail = dao.noticeDetail(n_no);
			
			RequestDispatcher rd = request.getRequestDispatcher("/noticedetail.jsp");
			request.setAttribute("detail", detail);
			rd.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
