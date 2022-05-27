package com.ssipdduck.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ssipdduck.DAO.AnirecomDAO;
import com.ssipdduck.DTO.AniCommentDTO;

/**
 * Servlet implementation class AniupdateComment
 */
@WebServlet("/aniupdatecomment")
public class AniupdateComment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AniupdateComment() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		AniCommentDTO dto = new AniCommentDTO();
		 if (request.getParameter("a_no") != null && request.getParameter("ac_no") != null && session.getAttribute("u_email") != null){
			dto.setA_no(Integer.parseInt(request.getParameter("a_no")));
			dto.setAc_no(Integer.parseInt(request.getParameter("ac_no")));
			dto.setU_id((String)session.getAttribute("u_email"));
			
			AnirecomDAO dao = new AnirecomDAO();
			dto = dao.anicommentDetail(dto);
			
		 }else {
			
		}
		 RequestDispatcher rd = request.getRequestDispatcher("./commentUpdate.jsp");
		 request.setAttribute("dto", dto);
		 rd.forward(request, response);
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		request.setCharacterEncoding("UTF-8");
		
		AniCommentDTO dto = new AniCommentDTO();
		if (session.getAttribute("u_email") !=null && request.getParameter("ac_no") !=null && request.getParameter("ac_comment") != null){
			dto.setA_no(Integer.parseInt(request.getParameter("a_no")));
			dto.setAc_no(Integer.parseInt(request.getParameter("ac_no")));
			dto.setAc_comment(request.getParameter("ac_comment"));
			dto.setU_id((String)session.getAttribute("u_email"));
			
			AnirecomDAO dao = new AnirecomDAO();
			dao.commentUpdate(dto);
			
		 }else {
			 
		 }
		response.sendRedirect("./anidetail?a_no=" + Integer.parseInt(request.getParameter("a_no")));
	}
	

}
