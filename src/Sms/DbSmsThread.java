package Sms;

import Email.MyRunnable_SendEmail;

public class DbSmsThread {
public void saveDataInDb(String senderId,String mobile,String clientid,String message,String apikey) {
		
		DatabaseSmsRunnable databaseSmsRunnable = new DatabaseSmsRunnable(senderId,mobile,clientid,message,apikey);
		Thread t = new Thread(databaseSmsRunnable);
		t.start();
		
	}
}
