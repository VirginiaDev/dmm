package Sms;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLDecoder;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;
import org.json.simple.parser.JSONParser;

import com.mashape.unirest.http.HttpResponse;
import com.mashape.unirest.http.JsonNode;
import com.mashape.unirest.http.Unirest;

/**
 * Servlet implementation class sendSmsApi
 */
@WebServlet("/sendSmsApi")
public class sendSmsApi extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public sendSmsApi() {
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
				String SenderId=request.getParameter("SenderId");
				String MobileNumbers="91"+request.getParameter("MobileNumbers");
				String ClientId=request.getParameter("ClientId");
				String Message_value=request.getParameter("Message");
				if(Message_value.contains("%20")) {
					Message_value.replace("%20", " ");
				}
			//	String Message=Message_value.replace(" ", "%20");
				
				String ApiKey=request.getParameter("ApiKey");
				
					ApiKey=ApiKey.replace(" ", "+");	
				
					System.out.println("Message_value=="+Message_value);

				System.out.println("apikeyyy=="+ApiKey);
				String data="{\n" + 
						"  \"SenderId\": '"+SenderId+"',\n" + 
						"  \"ClientId\": '"+ClientId+"',\n" + 
						"  \"MobileNumbers\": '"+MobileNumbers+"',\n" +
						"  \"Message\": '"+Message_value+"',\n" +
						"  \"ApiKey\": '"+ApiKey+"',\n" +
						"}";
				JSONObject body=new JSONObject(data);
				System.out.println("bodyyyyy==="+body.toString());
				
				
				String url_being_hit="http://182.18.144.234:6005/api/v2/SendSMS"; 
				System.out.println("urllllll==="+url_being_hit);
				
				DbSmsThread dbSmsThread=new DbSmsThread();
				dbSmsThread.saveDataInDb(SenderId, MobileNumbers, ClientId, Message_value, ApiKey);

				HttpResponse<JsonNode> response2 = Unirest.post(url_being_hit)
						.header("Content-Type", "application/json")
			            .body(body)
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
		processRequest(request, response);
		}

	/**
	 * @see HttpServlet#doPost(HttpServletRequ
	 * est request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequest(request, response);
	}

}