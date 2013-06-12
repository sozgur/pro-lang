package com.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.bean.LoginBean;
import com.mysql.jdbc.Connection;

public class LoginDao {
	
	public String KullaniciDogrula(LoginBean loginBean) {
		
	String kullanciAdi = loginBean.getKullaniciAdi(); //Keeping user entered values in temporary variables.
	String parola = loginBean.getParola();
	String email = loginBean.getEmail();
	
	Connection con = null;
	Statement statement = null;
	ResultSet resultSet = null;
	
	String kullaniciAdiDB = "";
	String parolaDB = "";
	String emailDB = "";
	
	try
	{
		con = DBConnection.getConnection(); 
		statement = con.createStatement(); //Statement is used to write queries. Read more about it.
		resultSet = statement.executeQuery("select kullaniciAdi,parola,email from kullanici"); //Here table name is users and userName,password are columns. fetching all the records and storing in a resultSet.
		
		while(resultSet.next()) {
			kullaniciAdiDB = resultSet.getString("kullaniciAdi"); //fetch the values present in database
			parolaDB = resultSet.getString("parola");
			emailDB = resultSet.getString("email");
			}
		if((kullanciAdi.equals(kullaniciAdiDB) || email.equals(emailDB)) && parola.equals(parolaDB))
		{
			return "SUCCESS"; 
		}
		}
	catch(SQLException e)
	{
		e.printStackTrace();
		}
	return "Kullanýcý bilgisi bulunamadý"; 
	}
}
