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


@WebServlet("/aniboard")
public class Aniboard extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Aniboard() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//전체 글 수 = totalcount
		//시작 페이지 번호 = pageNo
		int pageNo = 1;
		if (request.getParameter("pageNo") != null) {//jsp에서 페이지를 보내줌
			pageNo = Integer.parseInt(request.getParameter("pageNo"));
		}
		
		AniboardDAO dao = new AniboardDAO();
		List<AniboardDTO> list = dao.list((pageNo - 1) * 10);
		RequestDispatcher rd = request.getRequestDispatcher("./board.jsp");
		
		
		request.setAttribute("list", list); //${list } 실제 데이터
		if(list.size()!=0)
			request.setAttribute("totalcount", list.get(0).getTotalcount()); //전체 글 수 뽑아보기
		else
			request.setAttribute("totalcount", 0);
		
		request.setAttribute("pageNo", pageNo);// Limit 0,10;
		rd.forward(request, response);
		
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
