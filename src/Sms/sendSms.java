package Sms;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URL;

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
 * Servlet implementation class sendSms
 */
@WebServlet("/sendSms")
public class sendSms extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public sendSms() {
        super();
        // TODO Auto-generated constructor stub
    }
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
    	try {
    		PrintWriter out = response.getWriter();

    	    String body = null;
    	    StringBuilder stringBuilder = new StringBuilder();
    	    BufferedReader bufferedReader = null;

    	    try {
    	        InputStream inputStream = request.getInputStream();
    	        if (inputStream != null) {
    	            bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
    	            char[] charBuffer = new char[128];
    	            int bytesRead = -1;
    	            while ((bytesRead = bufferedReader.read(charBuffer)) > 0) {
    	                stringBuilder.append(charBuffer, 0, bytesRead);
    	            }
    	        } else {
    	            stringBuilder.append("");
    	        }
    	    } catch (IOException ex) {
    	        throw ex;
    	    } finally {
    	        if (bufferedReader != null) {
    	            try {
    	                bufferedReader.close();
    	            } catch (IOException ex) {
    	                throw ex;
    	            }
    	        }
    	    }

    	    body = stringBuilder.toString();
    	    JSONObject jsonObject=new JSONObject(body);
    	    System.out.println("request body=="+body);
    	    
    	    String SenderId=jsonObject.getString("SenderId");
    	    String MobileNumbers=jsonObject.getString("MobileNumbers");
    	    String ClientId="dd50f6be-8134-450d-a93e-0be871747b81";
    	    String Message=jsonObject.getString("Message");
    	    String ApiKey=jsonObject.getString("ApiKey");
    	    
    	    String url_being_hit="http://182.18.144.234:6005/api/v2/SendSMS?SenderId="+SenderId+"&MobileNumbers=91"+MobileNumbers+"&ClientId="+ClientId+"&Message="+Message+"&ApiKey="+ApiKey; 
			System.out.println("urllllll==="+url_being_hit);
			
			DbSmsThread dbSmsThread=new DbSmsThread();
			dbSmsThread.saveDataInDb(SenderId, MobileNumbers, ClientId, Message, ApiKey);

			HttpResponse<JsonNode> response2 = Unirest.get(url_being_hit)
			.asJson();
			JSONParser parser = new JSONParser();
			String jsonData=response2.getBody().toString();
			out.println(jsonData);
			System.out.println("response body=="+jsonData);
    	    
	
    	}
    	catch (Exception e) {
			// TODO: handle exception
		e.printStackTrace();
    	}
    	     	}
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequest(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequest(request, response);
	}

}
