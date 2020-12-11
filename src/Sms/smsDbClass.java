package Sms;

import dao.ApiController;

public class smsDbClass {

	public smsDbClass(String sender_id,String mobile,String client_id,String message,String apikey) {
		ApiController apiController=new ApiController();
		int id=apiController.insertIntoSms_api_data(sender_id, mobile, client_id, message, apikey);
		System.out.println("idd====="+id);
	}
}
