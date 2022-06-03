package com.ssipdduck.web;

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
import com.ssipdduck.DAO.ShopDAO;
import com.ssipdduck.DTO.ShopDTO;

@WebServlet("/shopwrite")
public class Shopwrite extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Shopwrite() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");

		HttpSession session = request.getSession();
		if (session.getAttribute("u_email").equals("admin@a.com")) {

			RequestDispatcher rd = request.getRequestDispatcher("./shopwrite.jsp");

			rd.forward(request, response);
		} else if (!(session.getAttribute("u_email").equals("admin@a.com"))) { // 관리자만
			response.sendRedirect("./shop.jsp");
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");

		String url = request.getRealPath("/img/upload");
		MultipartRequest multi = new MultipartRequest(request, url, 10 * 1024 * 1024, "UTF-8", new DefaultFileRenamePolicy());

		HttpSession session = request.getSession();
		if (session.getAttribute("u_email").equals("admin@a.com")) {
				ShopDAO dao = new ShopDAO();
				ShopDTO dto = new ShopDTO();

				dto.setAs_file(multi.getFilesystemName("file"));
				System.out.println(dto.getAs_file());
				dto.setAs_orifile(multi.getOriginalFileName("file"));
				System.out.println(dto.getAs_orifile());
				dto.setAs_site(multi.getParameter("site"));
				dto.setAs_name(multi.getParameter("name"));
				dto.setAs_roadAddr(multi.getParameter("roadAddr"));
				dto.setAs_content(multi.getParameter("content"));

				dao.shopwrite(dto);

				url = "./shop";
			} else {
				url = "./shop";
			}
		response.sendRedirect(url);
	} 
	
}
