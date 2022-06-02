package com.ssipdduck.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ssipdduck.DAO.SignupDAO;
import com.ssipdduck.DTO.LoginDTO;
import com.ssipdduck.DTO.SignupDTO;

@WebServlet("/mypage")
public class Mypage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Mypage() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		if(session.getAttribute("u_email")!=null) {
			SignupDAO dao = new SignupDAO();
			SignupDTO dto = new SignupDTO();
			
			dto.setEmail((String)session.getAttribute("u_email"));
			dao.mypage(dto);
			
			RequestDispatcher rd = request.getRequestDispatcher("./mypage.jsp");
			//주소표시줄을 유지하고 화면만 변경
			//값 가져가기
			request.setAttribute("dto", dto);
			rd.forward(request, response);//변경시작
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		SignupDAO dao = new SignupDAO();
		SignupDTO dto = new SignupDTO();
		
		dto.setEmail((String)session.getAttribute("u_email"));
		dto.setNickname((String)request.getParameter("nickname"));
		dto.setPassword((String)request.getParameter("password"));
		dto.setTele((String)request.getParameter("u_tel"));
		
		dao.mypagemodify(dto);
		
		
		
		response.sendRedirect("./index.jsp");
	}

}
