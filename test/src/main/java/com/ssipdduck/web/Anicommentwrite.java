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
import com.ssipdduck.util.Util;


@WebServlet("/anicommentwrite")
public class Anicommentwrite extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Anicommentwrite() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		if(request.getParameter("a_no") !=null && Util.str2Int(request.getParameter("a_no"))) {
			AnirecomDAO dao = new AnirecomDAO();
			AniCommentDTO dto = new AniCommentDTO();
			
			dto.setA_no(Integer.parseInt(request.getParameter("a_no")));
			dto.setAc_comment(Util.HTML2str(request.getParameter("comment")));
			dto.setU_id((String)session.getAttribute("u_email"));
			
			dao.anicommentwrite(dto);
	
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
