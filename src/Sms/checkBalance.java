package Sms;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import com.mashape.unirest.http.HttpResponse;
import com.mashape.unirest.http.JsonNode;
import com.mashape.unirest.http.Unirest;

/**
 * Servlet implementation class smsPost
 */
@WebServlet("/checkBalance")
public class checkBalance extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public checkBalance() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
    	 PrintWriter out = response.getWriter();
		 try{
				String ClientId=request.getParameter("ClientId");
			
				
				String ApiKeyy=request.getParameter("ApiKey");
				System.out.println("apikeyyy==1111111111=="+ApiKeyy);
				String ApiKey = URLEncoder.encode(ApiKeyy, "UTF-8");
				ApiKey=ApiKey.replace("+", "%2B");
				
				//ApiKey=ApiKey.replace("+", "+");	
				System.out.println("apikeyyy=====22222222222="+ApiKey);
				
			
				
				
				String url_being_hit="http://103.13.97.241:6005/api/v2/Balance?ApiKey="+ApiKey+"&ClientId="+ClientId; 
				System.out.println("urllllll==="+url_being_hit);
				
			/*	DbSmsThread dbSmsThread=new DbSmsThread();
				dbSmsThread.saveDataInDb(SenderId, MobileNumbers, ClientId, Message, ApiKey);*/

				HttpResponse<JsonNode> response2 = Unirest.get(url_being_hit)
						 .asJson();
				String jsonData=response2.getBody().toString();
				out.println(jsonData);
				System.out.println("jsonData"+jsonData);
			}catch(Exception e){
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
