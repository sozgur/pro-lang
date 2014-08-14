package cooking;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ShowItemss
 */
public class ShowItemss extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	@SuppressWarnings("null")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		        ServletRequest session = null;
				@SuppressWarnings("unchecked")
				ArrayList<String> previousItems =(ArrayList<String>)session.getAttribute("previousItems");
		      if (previousItems == null) {
		        previousItems = new ArrayList<String>();
		      }
		      String newItem = request.getParameter("newItem");
		      if ((newItem != null) &&
		          (!newItem.trim().equals(""))) {
		        previousItems.add(newItem);
		      }
		      session.setAttribute("previousItems", previousItems);
		      response.setContentType("text/html");
		      PrintWriter out = response.getWriter();
		      String title = "Items Purchased";
		      String docType =
		        "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0 " +
		        "Transitional//EN\">\n";
		      out.println(docType +
		                  "<HTML>\n" +
		                  "<HEAD><TITLE>" + title + "</TITLE></HEAD>\n" +
		                  "<BODY BGCOLOR=\"#FDF5E6\">\n" +
		                  "<H1>" + title + "</H1>");
		      if (previousItems.size() == 0) {
		        out.println("<I>No items</I>");
		      } else {
		        out.println("<UL>");
		        for(String item: previousItems) {
		          out.println("  <LI>" + item);
		        }
		        out.println("</UL>");
		      }
		      out.println("</BODY></HTML>");
		    }
		  
		

	}


