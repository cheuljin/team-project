package com.poseidon.web;

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
import com.poseidon.dao.NoticeDAO;
import com.poseidon.dto.NoticeDTO;

@WebServlet("/noticeWrite")
public class NoticeWrite extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public NoticeWrite() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String url = request.getRealPath("/upload");
		System.out.println(url);                   ////HSR  저장위치   사이즈    인코딩  파일명중복시 정책
		MultipartRequest multi = new MultipartRequest(request,url,10*1024*1024,"UTF-8",new DefaultFileRenamePolicy());
	
		String title = multi.getParameter("title");
		String content = multi.getParameter("content");
		
		String file = multi.getFilesystemName("file");
		
		String oriFileName = multi.getOriginalFileName("file");
		
		NoticeDTO dto = new NoticeDTO();
		NoticeDAO dao = new NoticeDAO();
		
		dto.setN_title(title);
		dto.setN_content(content);
		dto.setN_filename(file);
		dto.setN_orifilename(oriFileName);
		dto.setM_id((String)session.getAttribute("m_id"));
		dto.setM_name((String)session.getAttribute("m_name"));
		dao.noticeWrite(dto);
		
		response.sendRedirect("./notice");
    	
		
	}

}
