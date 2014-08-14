package cooking;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class kayitform extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String actionURL = "cooking/kayitserveltt";
		String kullaniciAdi = CookieUtilities.getCookieValue(request, "kullaniciAdi", "");
		String email = CookieUtilities.getCookieValue(request, "email", "");
		String parola = CookieUtilities.getCookieValue(request, "parola", "");
		
		String docType = 
				"<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0 " +
						"Transitional//EN\">\n";
						String title = "Lütfen Kayit Olun";
						out.println
						(docType +
						"<HTML>\n" +
						"<HEAD><TITLE>" + title + "</TITLE></HEAD>\n" +
						"<BODY BGCOLOR=\"#FDF5E6\">\n" +
						"<CENTER>\n" +
						"<H1>" + title + "</H1>\n" +
						"<FORM ACTION=\""+ actionURL + "\">\n" +
						"First Name:\n" +
						" <INPUT TYPE=\"TEXT\" NAME=\"firstName\" " +
						"VALUE=\"" + kullaniciAdi + "\"><BR>\n" +
						"Last Name:\n" +
						" <INPUT TYPE=\"TEXT\" NAME=\"lastName\" " +
						"VALUE=\"" + email + "\"><BR>\n" +
						"Email Address: \n" +
						" <INPUT TYPE=\"TEXT\" NAME=\"emailAddress\" " +
						"VALUE=\"" + parola + "\"><P>\n" +
						"<INPUT TYPE=\"SUBMIT\" VALUE=\"Register\">\n" +
						"</FORM></CENTER></BODY></HTML>");
		
		
	}}

	
