package admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.stream.Collectors;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.parser.JSONParser;

import com.mashape.unirest.http.HttpResponse;
import com.mashape.unirest.http.JsonNode;
import com.mashape.unirest.http.Unirest;
import com.mashape.unirest.http.exceptions.UnirestException;

import Sms.MySmsRunnable;

/**
 * Servlet implementation class fetchh
 */
@WebServlet("/fetchh")
public class fetchh extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public fetchh() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 PrintWriter out = response.getWriter();

    	 
				//String SenderId=request.getParameter("SenderId");
				String MobileNumbers=request.getParameter("MobileNumbers");
				//String ClientId=request.getParameter("ClientId");
				String Message=request.getParameter("Message");
				//String ApiKey=request.getParameter("ApiKey");

				MySmsRunnable mySmsRunnable=new MySmsRunnable(MobileNumbers, Message);
				try {
					String dataa=mySmsRunnable.CreateComcatUser(MobileNumbers, Message);
					out.println(dataa);
				} catch (UnirestException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequest(request, response);	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequest(request, response);
	}

}
