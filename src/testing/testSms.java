package testing;

import Sms.MySmsRunnable;

public class testSms {

	public static void main(String args[]) {
		try {
			MySmsRunnable mySmsRunnable=new MySmsRunnable("9780568455", "Hi virginia");
			mySmsRunnable.CreateComcatUser("9780568455", "Hi virginia");
		
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		}
}
