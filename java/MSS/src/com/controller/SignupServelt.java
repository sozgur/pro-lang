package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.KayitDao;

/**
 * Servlet implementation class SignupServelt
 */
@WebServlet("/signupservelt")
public class SignupServelt extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String ad = request.getParameter("ad");
		String soyad = request.getParameter("soyad");
		String kullaniciAdi = request.getParameter("kullaniciadi");
		String email = request.getParameter("email");
		String parola = request.getParameter("parola");
		KayitDao kayitDao = new KayitDao();
		kayitDao.KullaniciEkle(ad, soyad, kullaniciAdi, email, parola);
		request.getRequestDispatcher("login.jsp").forward(request, response);
	}

}
