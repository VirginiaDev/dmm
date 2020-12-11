package Email;

public class testSendEmail {

	
	
	public static void main(String args[]) {
		EmailSendThread emailSendThread=new EmailSendThread();
		emailSendThread.SendSingleEmail("virginia", "virginia.singh1995@gmail.com", "free_audit_confirm", 2);
	}
}
