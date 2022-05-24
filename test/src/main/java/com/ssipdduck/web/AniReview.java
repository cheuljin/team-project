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
import com.ssipdduck.DTO.AniRecomDTO;

@WebServlet("/anireview")
public class AniReview extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AniReview() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AnirecomDAO dao = new AnirecomDAO();
		List<AniRecomDTO> list = dao.Anilist();
		List<AniRecomDTO> top = dao.topList();
		
		RequestDispatcher rd = request.getRequestDispatcher("./anirecom.jsp");
    	//↑ 주소표시줄을 유지하고 화면만 변경.
    	//↓ 값 이동.
    	request.setAttribute("list", list);
    	request.setAttribute("top", top);
    	rd.forward(request, response); //변경시작
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
