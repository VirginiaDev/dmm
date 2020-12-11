package Sms;

public class DatabaseSmsRunnable implements Runnable{

	private String senderId;
	private String mobile;
	private String clientId;
	private String message;
	private String apikey;

	
    public DatabaseSmsRunnable(String senderId,String mobile,String clientid,String message,String apikey) {
		// TODO Auto-generated constructor stub
		this.apikey=apikey;
		this.clientId=clientid;
		this.message=message;
		this.mobile=mobile;
		this.senderId=senderId;
		
	}
	@Override
	public void run() {
		// TODO Auto-generated method stub
		new smsDbClass(senderId,mobile,clientId,message,apikey);
	}

}
