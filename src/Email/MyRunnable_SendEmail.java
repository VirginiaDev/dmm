package Email;


public class MyRunnable_SendEmail  implements Runnable {


	String email;String name;String send_to_type;int linkid;

	    public MyRunnable_SendEmail(String name,String email,String send_to_type,int linkid) {
	        this.email = email;
	  
	        this.name=name;
	        this.send_to_type=send_to_type;
	        this.linkid=linkid;
	        
	       
	    }

	    public void run() {
	         new SendEmail(name,email,send_to_type,linkid);
	        // code in the other thread, can reference "var" variable
	    }
}
