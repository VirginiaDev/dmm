package Email;

public class WaitingMailThread implements Runnable{


	String email;String name;String send_to_type;int linkid;

	    public WaitingMailThread(String name,String email,String send_to_type,int linkid) {
	        this.email = email;
	  
	        this.name=name;
	        this.send_to_type=send_to_type;
	        this.linkid=linkid;
	        
	       
	    }

	    public void run() {
	         new SendWaitingEmail(name,email,send_to_type,linkid);
	        // code in the other thread, can reference "var" variable
	    }
}
