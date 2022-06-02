package com.ssipdduck.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




@WebServlet("/adminuser")
public class Adminuser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public Adminuser() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AdminuserDAO dao = new AdminuserDAO();
		List<AdminuserDTO> list = dao.list();
		RequestDispatcher rd = request.getRequestDispatcher("./adminuser.jsp");
		request.setAttribute("list", list);
		rd.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
