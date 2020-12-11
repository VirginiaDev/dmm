package Sms;

import org.json.simple.parser.JSONParser;

import com.mashape.unirest.http.HttpResponse;
import com.mashape.unirest.http.JsonNode;
import com.mashape.unirest.http.Unirest;
import com.mashape.unirest.http.exceptions.UnirestException;

public class MySmsRunnable implements Runnable{

    private String phoneNumber;
    private String message;
    
 
  
    public MySmsRunnable(String phoneNumber,String message) {
        this.phoneNumber = phoneNumber;
        this.message = message.replace(" ", "%20");
        
       
    }

    public void run() {
    	try {
    	CreateComcatUser(phoneNumber,message);
    	}
    	catch(Exception e)
    	{
    		
    	}
    	
        // code in the other thread, can reference "var" variable
    }
    public String CreateComcatUser(String mobile, String txt_msg) throws UnirestException {
    	txt_msg.replace(" ", "%20");
    	
    	HttpResponse<JsonNode> response = Unirest.get("http://49.50.86.152:6005/api/v2/SendSMS?SenderId=PARROT&MobileNumbers=91"+phoneNumber+"&ClientId=da40f116-285e-4aab-b57b-8c4478038836&Message="+message+"&ApiKey=qciZmG98Hp782U7hrhlJis1%2Bs%2Fgo0hzXeeyyPIgSPDY%3D")
			.asJson();
			JSONParser parser = new JSONParser();
			String jsonData=response.getBody().toString();
			System.out.println("jsonData"+jsonData);
			
			return jsonData.toString();
			}
    
}
