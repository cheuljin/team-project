package com.ssipdduck.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ssipdduck.DAO.AnirecomDAO;
import com.ssipdduck.DTO.AniCommentDTO;

/**
 * Servlet implementation class AnideleteComment
 */
@WebServlet("/anideletecomment")
public class AnideleteComment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AnideleteComment() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  HttpSession session = request.getSession();
	      
	        if (request.getParameter("a_no") != null  && request.getParameter("ac_no") != null && session.getAttribute("u_email") != null){
	           AniCommentDTO dto = new AniCommentDTO();
	           dto.setA_no(Integer.parseInt(request.getParameter("a_no")));
	           dto.setAc_no(Integer.parseInt(request.getParameter("ac_no")));
	           dto.setU_id((String)session.getAttribute("u_email"));
	           
	           AnirecomDAO dao = new AnirecomDAO();
	           dao.anicommentdelete(dto);
	        } else {
	           System.out.println("에러입니다");
	        }
	        response.sendRedirect("./anidetail?a_no=" + request.getParameter("a_no"));
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
