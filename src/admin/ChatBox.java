package admin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;

import dao.ApiController;



/**
 * Servlet implementation class ChatBox
 */
@WebServlet("/ChatBox")
public class ChatBox extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChatBox() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		 PrintWriter out=response.getWriter();
		   response.setContentType("text/html");
		   
			   JSONArray array=new JSONArray();
			  
			   String name=request.getParameter("name");
			   String email=request.getParameter("email");
			   String message=request.getParameter("message");
			   System.out.println("namenamename"+name);
			   System.out.println("emailemailemail"+email);
			   System.out.println("messagemessage"+message);
			   ApiController apiController=new ApiController();
			   
			   int i=apiController.getChat(array,name,email,message);
			  
			 if(i>0)
			 {
			   out.print(array.toString());
			   response.sendRedirect("webanddevelopment.jsp");
			   
			   
}
			 else
			 {
				 response.sendRedirect("Error.jsp");
			 }
			 }
	}

