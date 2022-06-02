package com.ssipdduck.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.HttpCookie;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ssipdduck.DAO.AnirecomDAO;
import com.ssipdduck.DTO.AniRecomDTO;
import com.ssipdduck.util.Util;

@WebServlet("/anilike")
public class AniLike extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AniLike() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int result = 0;
		HttpSession session = request.getSession();
		if(request.getParameter("a_no") != null && Util.str2Int(request.getParameter("a_no")) && session.getAttribute("u_email")!=null) {
			AnirecomDAO dao = new AnirecomDAO();
			AniRecomDTO dto = new AniRecomDTO();
			
			dto.setA_no(Integer.parseInt(request.getParameter("a_no")));
			
			dto.setU_id((String)session.getAttribute("u_email"));

			result = dao.likeCheck(dto);
			
			if(result == 1 ) {
				result = dao.likeUp(Integer.parseInt(request.getParameter("a_no")));
				
			}else {
				result = 0;
			}
			
			PrintWriter pw = response.getWriter();
			pw.print(result);
	       
		}	
	}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int result = 0;
		HttpSession session = request.getSession();
		if(request.getParameter("a_no") != null && Util.str2Int(request.getParameter("a_no")) && session.getAttribute("u_email")!=null) {
			AnirecomDAO dao = new AnirecomDAO();
			AniRecomDTO dto = new AniRecomDTO();
			
			dto.setA_no(Integer.parseInt(request.getParameter("a_no")));
			
			dto.setU_id((String)session.getAttribute("u_email"));

			result = dao.likeCheck(dto);
			PrintWriter pw = response.getWriter();
			pw.print(result);
		}	
	}

}
