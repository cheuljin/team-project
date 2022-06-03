package com.ssipdduck.admin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.ssipdduck.DAO.AnirecomDAO;
import com.ssipdduck.DTO.AniRecomDTO;

/**
 * Servlet implementation class Aniwrite
 */
@WebServlet("/aniwrite")
public class Aniwrite extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Aniwrite() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		RequestDispatcher rd = request.getRequestDispatcher("./ani-write.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = request.getRealPath("/img/upload");
		MultipartRequest multi = new MultipartRequest(request,url,10*1024*1024,"UTF-8",new DefaultFileRenamePolicy());
		
		AniRecomDTO dto = new AniRecomDTO();
		AnirecomDAO dao = new AnirecomDAO();
		
		dto.setA_utube(multi.getParameter("a_utube"));
		dto.setA_aired(multi.getParameter("a_aired"));
		dto.setA_category(multi.getParameter("a_category"));
		dto.setA_content(multi.getParameter("a_content"));
		dto.setA_epi(Integer.parseInt(multi.getParameter("a_epi")));
		dto.setA_file(multi.getFilesystemName("file"));
		dto.setA_orifile(multi.getOriginalFileName("file"));
		dto.setA_studio(multi.getParameter("a_studio"));
		dto.setA_title(multi.getParameter("a_title"));
		dto.setA_type(multi.getParameter("a_type"));
		dto.setA_writer(multi.getParameter("a_writer"));
		dao.aniwrite(dto);
		
		response.sendRedirect("./adminreview");
		
		
	}
}
