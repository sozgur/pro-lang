package cooking;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class repaetvisitor
 */
public class repaetvisitor extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    public repaetvisitor(){
    	super();
    }
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		boolean newuser = true;
		Cookie[] cookies = request.getCookies(); // kullanýcýda saklanan cookie okunur
		if (cookies!=null){
			for (Cookie c: cookies) {
				if ((c.getName().equals("repeatvisitor")) && (c.getValue().equals("yes"))) {
					newuser = false;
					break;
				}
			}
		}
		
		String message;
		if (newuser) {
			Cookie returnVisitorCookie = new Cookie("repeatvisitor", "yes");
			returnVisitorCookie.setMaxAge(60*60*24); //bir günlük kalýcý çerez
			response.addCookie(returnVisitorCookie); //kullnýcýya gönderilir
			message = "Welcome to the my site";
		}
			else{
				message = "Welcome back to the my site";
			}
				
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();	
		 String docType =
			      "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0 " +
			      "Transitional//EN\">\n";
			    out.println(docType +
			                "<HTML>\n" +
			                "<HEAD><TITLE>" +message+ "</TITLE></HEAD>\n" +
			                "<BODY BGCOLOR=\"#A1C7CD\">\n" +
			                "<br><br><br><br>"+
			                "<H1 ALIGN=\"CENTER\">" +message+ "</H1>\n" +
			                "</BODY></HTML>");
		}
	}


