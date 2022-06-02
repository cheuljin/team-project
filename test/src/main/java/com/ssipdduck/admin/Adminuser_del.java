package com.ssipdduck.admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ssipdduck.util.Util;


@WebServlet("/adminuser_del")
public class Adminuser_del extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public Adminuser_del() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if (request.getParameter("u_no") != null && Util.str2Int(request.getParameter("u_no"))) {
			AdminuserDTO dto = new AdminuserDTO();
			AdminuserDAO dao = new AdminuserDAO();
			dto.setU_no(Integer.parseInt(request.getParameter("u_no")));
			dao.admin_del(dto);

		}else {
			
		}
		response.sendRedirect("./adminuser");
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
