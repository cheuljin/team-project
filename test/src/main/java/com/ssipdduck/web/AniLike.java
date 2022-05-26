package com.ssipdduck.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		if(request.getParameter("a_no") != null && Util.str2Int(request.getParameter("a_no"))) {
			int a_no = Integer.parseInt(request.getParameter("a_no"));
			AnirecomDAO dao = new AnirecomDAO();
			
			result = dao.likeUp(a_no);
			AniRecomDTO dto = new AniRecomDTO();
			PrintWriter pw = response.getWriter();
			pw.print(result);
	       
		}	
	}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
