package cooking;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class counter extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String countString =CookieUtilities.getCookieValue(request,
				"accessCount",
				"1");
		
		int count = 1;
		try {
			count = Integer.parseInt(countString);
		}catch(NumberFormatException nfe) { }
		Cookie c = new Cookie("accessCount", String.valueOf(count+1));
		response.addCookie(c);
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String title = "Access Count Servlet";
		String docType =
				"<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0 " +
				"Transitional//EN\">\n";
		out.println(docType +
				"<HTML>\n" +
				"<HEAD><TITLE>" + title + "</TITLE></HEAD>\n" +
				"<BODY BGCOLOR=\"#FDF5E6\">\n" +
				"<TABLE BORDER=1 ALIGN=\"CENTER\">\n" +
                "<TR BGCOLOR=\"#FF912B\">\n" +
                " <TH>Counter Visit Browser\n" +
                "<TR>\n" +
                " <TD>" + count +
				"</CENTER></BODY></HTML>");
			}
			
	}



