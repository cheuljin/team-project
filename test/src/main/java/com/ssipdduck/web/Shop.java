package com.ssipdduck.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ssipdduck.DAO.NoticeDAO;
import com.ssipdduck.DAO.ShopDAO;
import com.ssipdduck.DTO.NoticeDTO;
import com.ssipdduck.DTO.ShopDTO;


@WebServlet("/shop")
public class Shop extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public Shop() {
        super();

    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		ShopDAO dao = new ShopDAO();
		List<ShopDTO> ShopList = dao.shopList();
		RequestDispatcher rd = request.getRequestDispatcher("./shop.jsp");
		request.setAttribute("list", ShopList);
		rd.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
