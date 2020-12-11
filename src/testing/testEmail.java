package testing;

import java.util.ArrayList;

import Email.EmailSendThread;

public class testEmail {
	
	public static void main(String args[]) {
		ArrayList<String> adminEmails=new ArrayList<>();
		EmailSendThread emailSendThread=new EmailSendThread();
		adminEmails.add("rishabh@virtuosonetsoft.in");
		adminEmails.add("saurabh@virtuosonetsoft.com");
		adminEmails.add("asha@virtuosonetsoft.com");
		adminEmails.add("virginia@parrotinfosoft.com");
		for(int ae=0;ae<adminEmails.size();ae++) {
			emailSendThread.SendEmail(adminEmails.get(ae), "Testing", "Hi Team! There is a new contact request from 'virginia' interested in 'testing email'.Contact Details are :- Phone ('9780568455') and email ('virginia@parrotinfosoft.com')");
		}	
	}
	
}
