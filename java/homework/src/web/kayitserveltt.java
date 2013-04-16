package cooking;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class kayitserveltt extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		
		boolean degeryok = false;
		String kullaniciAdi = request.getParameter("kullaniciAdi");
		if(yoksa(kullaniciAdi)){
			kullaniciAdi = "Kullanýcý Adý Girilmedi";
			degeryok = true;
		}
		String email = request.getParameter("email");
		if(yoksa(email)){
			email = "Email Girilmedi";
			degeryok = true;
		}
		String parola = request.getParameter("parola");
		if(yoksa(parola)){
			parola = "Parola Girilmedi";
			degeryok = true;
		}
		Cookie c1 = new LongLivedCookie("kullaniciAdi", kullaniciAdi);
		response.addCookie(c1);
		Cookie c2 = new LongLivedCookie("email", email);
		response.addCookie(c2);
		Cookie c3 = new LongLivedCookie("parola", parola);
		response.addCookie(c3);
		
		String formAddress ="cooking/kayitform";
		if (degeryok) {
			response.sendRedirect(formAddress);//form adresi yeniden gelir 
		} else {
			PrintWriter out = response.getWriter();
			String docType ="Kayýt için Teþekkürler"+
			"<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0 " +
			"Transitional//EN\">\n";
			String title = "";
			out.println(docType +
			"<HTML>\n" +
			"<HEAD><TITLE>" + title + "</TITLE></HEAD>\n" +
			"<BODY BGCOLOR=\"#FDF5E6\">\n" +
			"<CENTER>\n" +
			"<H1 ALIGN>" + title + "</H1>\n" +
			"<UL>\n" +
			" <LI><B>Kullanýcý Adý</B>: " + kullaniciAdi + "\n" +
			" <LI><B>E-mail</B>: " + email + "\n" +
			" <LI><B>Parola</B>: " + parola + "\n" +
			"</UL>\n" +
			"</CENTER></BODY></HTML>");
			}
		}
	
	/** Determines if value is null or empty. */
	private boolean yoksa(String parametre) {
		return((parametre == null) || (parametre.trim().equals("")));
		}
	}

