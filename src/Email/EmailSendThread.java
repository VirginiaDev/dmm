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
public void SendLandingPageEmailToAdmin(String name,String email,String options,String msg) {
	
/*	Admin_Runnable_QuickEnquiry myRunnable = new Admin_Runnable_QuickEnquiry(name,email,phone,company,message);
	Thread t = new Thread(myRunnable);
	t.start(); */
	Thread thread=new Thread() {
		@Override
		public void run() {
		    
			String host ="smtp.gmail.com" ; 
			String user = "hello@virtuosonetsoft.in";
			String pass = "it_8520#VNS"; 
			String to = "hello@virtuosonetsoft.in,rishabh@virtuosonetsoft.in"; 
			String from = "hello@virtuosonetsoft.in";
			
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
		     //   message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
		        message.addRecipients(Message.RecipientType.TO, to);
		        message.setSubject("New Quick Enquiry Request");
		        String text="<html>"
		        		+ "<h3>Hi Team! There is a new request.Please find the details below:-</h3>"+name+"<br>"
		        		+ "<label>Name :-</label>"+name+"<br>"
		        		+ "<label>Email :-</label>"+email+"<br>"
		        		+ "<label>Service selected :-</label>"+options+"<br>"
		        		+ "<label>Message :-</label>"+msg+"<br>"
		        		+ "</html>";
		        message.setContent(text, "text/html");
		        //send message  
		        Transport.send(message);
		        System.out.println("message sent to ----" + to);

		    } catch (MessagingException e) {
		        throw new RuntimeException(e);

		    }
		    
		}
	};
	thread.start();
	
}
public void SendCareerEmailToAdmin(String name,String email,String phn,String position) {
	
/*	Admin_Runnable_QuickEnquiry myRunnable = new Admin_Runnable_QuickEnquiry(name,email,phone,company,message);
	Thread t = new Thread(myRunnable);
	t.start(); */
	Thread thread=new Thread() {
		@Override
		public void run() {
		    
			String host ="smtp.gmail.com" ; 
			String user = "hello@virtuosonetsoft.in";
			String pass = "it_8520#VNS"; 
			String to = "hello@virtuosonetsoft.in,rishabh@virtuosonetsoft.in"; 
			String from = "hello@virtuosonetsoft.in";
			
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
		     //   message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
		        message.addRecipients(Message.RecipientType.TO, to);
		        message.setSubject("New Career request");
		        String text="<html>"
		        		+ "<h3>Hi Team! There is a new request.Please find the details below:-</h3>"+name+"<br>"
		        		+ "<label>Name :-</label>"+name+"<br>"
		        		+ "<label>Email :-</label>"+email+"<br>"
		        		+ "<label>Phone:-</label>"+phn+"<br>"
		        		+ "<label>Position :-</label>"+position+"<br>"
		        		+ "</html>";
		        message.setContent(text, "text/html");
		        //send message  
		        Transport.send(message);
		        System.out.println("message sent to ----" + to);

		    } catch (MessagingException e) {
		        throw new RuntimeException(e);

		    }
		    
		}
	};
	thread.start();
	
}
public void SendQouteRequestEmailToAdmin(String name,String email,String phn,String services,String requirement) {
	
/*	Admin_Runnable_QuickEnquiry myRunnable = new Admin_Runnable_QuickEnquiry(name,email,phone,company,message);
	Thread t = new Thread(myRunnable);
	t.start(); */
	Thread thread=new Thread() {
		@Override
		public void run() {
		    
			String host ="smtp.gmail.com" ; 
			String user = "hello@virtuosonetsoft.in";
			String pass = "it_8520#VNS"; 
			String to = "hello@virtuosonetsoft.in,rishabh@virtuosonetsoft.in"; 
			String from = "hello@virtuosonetsoft.in";
			
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
		     //   message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
		        message.addRecipients(Message.RecipientType.TO, to);
		        message.setSubject("New Quote Request");
		        String text="<html>"
		        		+ "<h3>Hi Team! There is a new request.Please find the details below:-</h3>"+name+"<br>"
		        		+ "<label>Name :-</label>"+name+"<br>"
		        		+ "<label>Email :-</label>"+email+"<br>"
		        		+ "<label>Phone :-</label>"+phn+"<br>"
		        		+ "<label>Services :-</label>"+services+"<br>"
		        		+ "<label>Requirement :-</label>"+requirement+"<br>"
		        		+ "</html>";
		        message.setContent(text, "text/html");
		        //send message  
		        Transport.send(message);
		        System.out.println("message sent to ----" + to);

		    } catch (MessagingException e) {
		        throw new RuntimeException(e);

		    }
		    
		}
	};
	thread.start();
	
}


public void SendGeneralEnquiryEmailToAdmin(String name,String email,String phone,String company_website,String drop_a_line) {
	
/*	Admin_Runnable_QuickEnquiry myRunnable = new Admin_Runnable_QuickEnquiry(name,email,phone,company,message);
	Thread t = new Thread(myRunnable);
	t.start(); */
	Thread thread=new Thread() {
		@Override
		public void run() {
		    
			String host ="smtp.gmail.com" ; 
			String user = "hello@virtuosonetsoft.in";
			String pass = "it_8520#VNS"; 
			String to = "hello@virtuosonetsoft.in,rishabh@virtuosonetsoft.in"; 
			String from = "hello@virtuosonetsoft.in";
			
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
		     //   message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
		        message.addRecipients(Message.RecipientType.TO, to);
		        message.setSubject("New General Enquiry Reques From Contact Formt");
		        String text="<html>"
		        		+ "<h3>Hi Team! There is a new request.Please find the details below:-</h3>"+name+"<br>"
		        		+ "<label>Name :-</label>"+name+"<br>"
		        		+ "<label>Email :-</label>"+email+"<br>"
		        		+ "<label>Company website selected :-</label>"+company_website+"<br>"
		        		+ "<label>Message :-</label>"+drop_a_line+"<br>"
		        		+ "</html>";
		        message.setContent(text, "text/html");
		        //send message  
		        Transport.send(message);
		        System.out.println("message sent to ----" + to);

		    } catch (MessagingException e) {
		        throw new RuntimeException(e);

		    }
		    
		}
	};
	thread.start();
	
}

public void SendCallbackEmailToAdmin(String name,String email,String phn,String timeslot_one,String timeslot_two,String timeslot_three) {
	
/*	Admin_Runnable_QuickEnquiry myRunnable = new Admin_Runnable_QuickEnquiry(name,email,phone,company,message);
	Thread t = new Thread(myRunnable);
	t.start(); */
	Thread thread=new Thread() {
		@Override
		public void run() {
		    
			String host ="smtp.gmail.com" ; 
			String user = "hello@virtuosonetsoft.in";
			String pass = "it_8520#VNS"; 
			String to = "hello@virtuosonetsoft.in,rishabh@virtuosonetsoft.in"; 
			String from = "hello@virtuosonetsoft.in";
			
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
		     //   message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
		        message.addRecipients(Message.RecipientType.TO, to);
		        message.setSubject("New Callback Reques From Contact Formt");
		        String text="<html>"
		        		+ "<h3>Hi Team! There is a new request.Please find the details below:-</h3>"+name+"<br>"
		        		+ "<label>Name :-</label>"+name+"<br>"
		        		+ "<label>Email :-</label>"+email+"<br>"
		        		+ "<label>Phone :-</label>"+phn+"<br>"
		        		+ "<label>Timeslot 1 :-</label>"+timeslot_one+"<br>"
		        		+ "<label>Timeslot 2 :-</label>"+timeslot_two+"<br>"
		        		+ "<label>Timeslot 3 :-</label>"+timeslot_three+"<br>"
		        		+ "</html>";
		        message.setContent(text, "text/html");
		        //send message  
		        Transport.send(message);
		        System.out.println("message sent to ----" + to);

		    } catch (MessagingException e) {
		        throw new RuntimeException(e);

		    }
		    
		}
	};
	thread.start();
	
}


public void SendQuickEnquiryEmailToAdmin(String name,String email,String phone,String company,String msg) {
	
/*	Admin_Runnable_QuickEnquiry myRunnable = new Admin_Runnable_QuickEnquiry(name,email,phone,company,message);
	Thread t = new Thread(myRunnable);
	t.start(); */
	Thread thread=new Thread() {
		@Override
		public void run() {
		    
			String host ="smtp.gmail.com" ; 
			String user = "hello@virtuosonetsoft.in";
			String pass = "it_8520#VNS"; 
			
			String from = "hello@virtuosonetsoft.in";
			String to = "hello@virtuosonetsoft.in,rishabh@virtuosonetsoft.in"; 
			
			
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
		     //   message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
		        message.addRecipients(Message.RecipientType.TO, to);
		        message.setSubject("New Quick Enquiry Request");
		        String text="<html>"
		        		+ "<h3>Hi Team! There is a new quick enquiry request.Please find the details below:-</h3>"+name+"<br>"
		        		+ "<label>Name :-</label>"+name+"<br>"
		        		+ "<label>Email :-</label>"+email+"<br>"
		        		+ "<label>Phone :-</label>"+phone+"<br>"
		        		+ "<label>Company :-</label>"+company+"<br>"
		        		+ "<label>Message :-</label>"+msg+"<br>"
		        		+ "</html>";
		        message.setContent(text, "text/html");
		        //send message  
		        Transport.send(message);
		        System.out.println("message sent to ----" + to);

		    } catch (MessagingException e) {
		        throw new RuntimeException(e);

		    }
		    
		}
	};
	thread.start();
	
}public void SendFreeAuditEmailToAdmin(String name,String email,String phone,String interested_in,String msg) {
	
/*	Admin_Runnable_QuickEnquiry myRunnable = new Admin_Runnable_QuickEnquiry(name,email,phone,company,message);
	Thread t = new Thread(myRunnable);
	t.start(); */
	Thread thread=new Thread() {
		@Override
		public void run() {
		    
			String host ="smtp.gmail.com" ; 
			String user = "hello@virtuosonetsoft.in";
			String pass = "it_8520#VNS"; 
			
			String from = "hello@virtuosonetsoft.in";
			String to = "hello@virtuosonetsoft.in,rishabh@virtuosonetsoft.in"; 
			
			
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
		     //   message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
		        message.addRecipients(Message.RecipientType.TO, to);
		        message.setSubject("New Free Audit Request");
		        String text="<html>"
		        		+ "<h3>Hi Team! There is a new free audit request.Please find the details below:-</h3>"+name+"<br>"
		        		+ "<label>Name :-</label>"+name+"<br>"
		        		+ "<label>Email :-</label>"+email+"<br>"
		        		+ "<label>Phone :-</label>"+phone+"<br>"
		        		+ "<label>Interested in :-</label>"+interested_in+"<br>"
		        		+ "<label>Message :-</label>"+msg+"<br>"
		        		+ "</html>";
		        message.setContent(text, "text/html");
		        //send message  
		        Transport.send(message);
		        System.out.println("message sent to ----" + to);

		    } catch (MessagingException e) {
		        throw new RuntimeException(e);

		    }
		    
		}
	};
	thread.start();
	
}

	public  void  SendEmail (String email, String subject,String txt_msg) {
	    
		String host ="smtp.gmail.com" ; 
		String user = "hello@virtuosonetsoft.in";
		String pass = "vnsdmm@123"; 
		String to = email; 
		String from = "hello@virtuosonetsoft.in";
		
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
