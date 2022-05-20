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

@WebServlet("/board")
public class Board extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Board() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BoardDAO dao = new BoardDAO();
		//전체 글수 totalcount
		//시작페이지 번호 pageNo
		int pageNo = 1;
		if(request.getParameter("pageNo") != null) { 
			pageNo = Integer.parseInt(request.getParameter("pageNo"));
		}
		List<BoardDTO> boardList = dao.boardList((pageNo-1) * 10);
		
		RequestDispatcher rd = request.getRequestDispatcher("./board.jsp");
		request.setAttribute("list", boardList);//
		request.setAttribute("totalcount", boardList.get(0).getTotalcount()); 
		request.setAttribute("pageNo", pageNo);
	//	request.setAttribute("pageNo", pageNo); // limit 0, 10; 일떄 0이 pageNo
		rd.forward(request, response);

	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
