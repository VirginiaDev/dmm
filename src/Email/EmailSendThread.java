package Email;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;


public class EmailSendThread {

	public void SendSingleEmail(String name,String email,String send_to_type,int linkid) {
		
		MyRunnable_SendEmail myRunnable = new MyRunnable_SendEmail(name,email,send_to_type,linkid);
		Thread t = new Thread(myRunnable);
		t.start();
		
	}
public void SendConfirmationWaitingEmail(String name,String email,String send_to_type,int linkid) {
		
		MyRunnable_SendEmail myRunnable = new MyRunnable_SendEmail(name,email,send_to_type,linkid);
		Thread t = new Thread(myRunnable);
		t.start();
		
	}
	public  void  SendEmail (String email, String subject,String txt_msg) {
	    
		String host ="smtp.gmail.com" ; 
		String user = "info@parrotinfosoft.com";
		String pass = "info@123"; 
		String to = email; 
		String from = "info@parrotinfosoft.com";
		
		Properties props = new Properties();
	    //props.put("mail.smtp.host", "smtp.mail.yahoo.com");
	    props.put("mail.smtp.host", "smtp.gmail.com");  
	    props.put("mail.smtp.socketFactory.port", "465");
	    props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
	    props.put("mail.smtp.auth", "true");
	    props.put("mail.smtp.port", "465");

	    Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
	        protected javax.mail.PasswordAuthentication getPasswordAuthentication() {
	            return new javax.mail.PasswordAuthentication(user, pass);//change accordingly  
	        }
	    });

	    //compose message  
	    try {

	        MimeMessage message = new MimeMessage(session);
	        message.setFrom(new InternetAddress(from));//change accordingly  
	        message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
	        message.setSubject(subject);
	        message.setText(txt_msg);
	        //send message  
	        Transport.send(message);
	        System.out.println("message sent to ----" + to);

	    } catch (MessagingException e) {
	        throw new RuntimeException(e);

	    }
	    
	}
}
