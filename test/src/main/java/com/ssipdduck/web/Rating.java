package com.ssipdduck.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ssipdduck.DAO.AnirecomDAO;
import com.ssipdduck.DTO.AniRecomDTO;


@WebServlet("/rating")
public class Rating extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Rating() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		if(session.getAttribute("u_email") != null) {
			if(request.getParameter("rating") != null) {
				AniRecomDTO dto = new AniRecomDTO();
				AnirecomDAO dao = new AnirecomDAO();
				dto.setA_rate(Integer.parseInt(request.getParameter("rating")));
				dto.setA_no(Integer.parseInt(request.getParameter("a_no")));
				dao.rate(dto); //별점 부여
				dao.rateview(dto); // 별점 불러오기
				
				int rating = dto.getA_rate()/dto.getU_temp();
				
				PrintWriter pw = response.getWriter();
				pw.print(rating);
				
			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
				AniRecomDTO dto = new AniRecomDTO();
				AnirecomDAO dao = new AnirecomDAO();
				dto.setA_no(Integer.parseInt(request.getParameter("a_no")));

				dao.rateview(dto); // 별점 불러오기
				
				int rating = dto.getA_rate()/dto.getU_temp();
				
				PrintWriter pw = response.getWriter();
				pw.print(rating);
				
			}
		
	}

