package com.dao;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

public class KayitDao {
	public String KullaniciEkle(String ad, String soyad, String kullaniciAdi, String email, String parola) {
		
		Connection con = null;
		Statement statement = null;
		
		try
		{
			con = DBConnection.getConnection(); 
			statement = (Statement) con.createStatement();
			statement.executeUpdate("INSERT INTO kayit.kullanici (kullaniciAdi, email, parola, ad, soyad)"+
									"VALUES ('" + kullaniciAdi + "', '" + email + "', '" + parola + "', '" + ad + "', '" + soyad + "')");
	}   catch (Exception e) {
		e.printStackTrace();
	}
		return "Kayi iþlemi Gerçekleþti";
		
}

	
	
	
}
