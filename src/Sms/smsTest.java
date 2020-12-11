package Sms;

import java.net.HttpURLConnection;
import java.net.URL;

public class smsTest {
	public static void main(String args[]) {
		try {
			String url = "http://localhost:8852/vns-dmm/sendSmsApi?SenderId=ORTHMX&MobileNumbers=9780568455&ClientId=6a1a4122-ccd3-4f15-84ed-c28f19908422&Message=hiiiiii&ApiKey=w7izPXrMj7po7fgmqQXSkHyLCjNVhufY07CEJdtRVFM%3D"; //define the url here
		    URL obj; //making the object 
		    obj = new URL(url);         
		    HttpURLConnection con = (HttpURLConnection) obj.openConnection();
		    con.setRequestMethod("GET");
		    
		    con.setRequestProperty("Content-Type", "application/json");
		    con.setRequestProperty("Accept-Language", "UTF-8");
		    int responseCode = con.getResponseCode();
		    System.out.println("\nSending 'GET' request to URL : " + url);
		    System.out.println("Response Code : " + responseCode);
          }
		catch (Exception e) {
			// TODO: handle exception
		e.printStackTrace();
		}
	}

}
