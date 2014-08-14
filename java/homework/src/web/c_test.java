package cooking;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class c_test extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		for(int i=0; i<3; i++) {
			Cookie cookie = new Cookie ("Session-Cookie-"+i, "Cookie-Value-S" +i);
			response.addCookie(cookie);
			
			cookie = new Cookie ("Persistent-Cookie-"+i,"Cookie-Value-P"+i);
			cookie.setMaxAge(3600);
			response.addCookie(cookie);
		}
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();	
		 String docType =
			      "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0 " +
			      "Transitional//EN\">\n";
		 String title = "Active Cookies";
			    out.println(docType +
			                "<HTML>\n" +
			                "<HEAD><TITLE>"+title+ "</TITLE></HEAD>\n" +
			                "<BODY BGCOLOR=\"#A1C7CD\">\n" +
			                "<br><br><br><br>"+
			                "<H1 ALIGN=\"CENTER\">" +title+ "</H1>\n" +
			                "<TABLE BORDER=1 ALIGN=\"CENTER\">\n" +
			                "<TR BGCOLOR=\"#FFAD00\">\n" +
			                "  <TH>Cookie Name\n" +
			                "  <TH>Cookie Value");

		Cookie[] cookies = request.getCookies();
		if(cookies == null){
			out.println("<TR><TH COLSPAN=2>No cookies");
		}
		else{
			for(Cookie cookie: cookies) {
				out.println("<TR>\n" +
						" <TD>" + cookie.getName() + "\n" +
						" <TD>" + cookie.getValue());
			}
			out.println("</TABLE></BODY></HTML>");
		}
				
	}

}
