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
import com.ssipdduck.DTO.AniCommentDTO;
import com.ssipdduck.DTO.AniRecomDTO;
import com.ssipdduck.util.Util;

@WebServlet("/anidetail")
public class AniDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AniDetail() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getParameter("a_no") != null && Util.str2Int(request.getParameter("a_no"))) {
			int a_no = Integer.parseInt(request.getParameter("a_no"));
			AnirecomDAO dao = new AnirecomDAO();
			dao.countUp(a_no);
			
			AniRecomDTO dto = dao.detail(a_no);
			
			if(dto.getCommentcount()>0) {
				List<AniCommentDTO> list = dao.commentList(a_no);
				request.setAttribute("list", list);
			}
			RequestDispatcher rd = request.getRequestDispatcher("/ani-detail.jsp");
			request.setAttribute("dto", dto);
			rd.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
