package Email;

public class testEmail {

	public static void main(String args[]) {
		EmailSendThread emailSendThread=new EmailSendThread();
		emailSendThread.SendSingleEmail("virginia", "virginia.singh1995@gmail.com", "contact_confirm", 7);
	}
}
