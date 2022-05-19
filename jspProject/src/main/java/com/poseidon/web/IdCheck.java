package com.poseidon.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.poseidon.dao.JoinDAO;

@WebServlet("/idCheck")
public class IdCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public IdCheck() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		
		if(request.getParameter("id") != null) {
			String id = request.getParameter("id");
			JoinDAO dao = new JoinDAO();
			int result = 1; //1은 있음. 0은 없음.
			
			result = dao.idCheck(id);
			PrintWriter pw = response.getWriter();
			pw.print(result);
		}
	}

}
