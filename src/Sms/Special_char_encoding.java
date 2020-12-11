package Sms;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

public class Special_char_encoding {

	public static void main(String args[]) {
		String api="+YblK5SizoprQiGsRHKXENLXvj9kVq/wQ+gu1Q+SEbA";
		 String encodedString;
		try {
			encodedString = URLEncoder.encode(api, "UTF-8");
			System.out.format("'%s'\n", encodedString);
			String finall=encodedString.format("'%s'\n", encodedString);
			System.out.println(finall);
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	      
	}
}
