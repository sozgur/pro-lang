package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.LoginBean;
import com.dao.LoginDao;


@WebServlet("/loginservelt")
public class LoginServelt extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String kullaniciAdi = request.getParameter("kullaniciadi");
		String parola = request.getParameter("parola");
		String email = request.getParameter("kullaniciadi");
		 
		LoginBean loginBean = new LoginBean();
		 
		loginBean.setKullaniciAdi(kullaniciAdi); 
		loginBean.setParola(parola);
		loginBean.setEmail(email);
		 
		LoginDao loginDao = new LoginDao(); //creating object for LoginDao. This class contains main logic of the application.
		 
		String kullaniciOnayi = loginDao.KullaniciDogrula(loginBean);
		 
		if(kullaniciOnayi.equals("SUCCESS")) //If function returns success string then user will be rooted to Home page
			{
			request.getSession().setAttribute("kullaniciAdi", kullaniciAdi); //sessiona kullanýcý adýný ekle
			request.getRequestDispatcher("/home.jsp").forward(request, response); //doðru giriþ yaparsa anasayfaya gitsin.
			}
		else {
			request.setAttribute("errMessage", kullaniciOnayi); 
			request.getRequestDispatcher("/login.jsp").forward(request, response); //sayfa kendi kendine dönsün
			}
		}
	}


