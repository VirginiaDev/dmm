package testing;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Paths;

import javax.script.Invocable;
import javax.script.ScriptEngine;
import javax.script.ScriptEngineManager;

public class testingCurl {

	public static void main(String args[]) {

		String url = "http://localhost:8853/vns-dmm/chatBox2.jsp";
		//String path = System.getProperty("user.dir").concat("/WebContent/chatBox2.jsp");
		String dataa="chatid=8C00BE4DDFE6FF7B004BDC419240C578";
		
		//cURL Command: curl -u admin:admin -X POST -F cmd="lockPage" -F path="/content/geometrixx/en/toolbar/contacts" -F "_charset_"="utf-8" http://localhost:4502/bin/wcmcommand
		//$ curl -d "username=mkyong&password=abc" http://localhost:8080/api/login/

		//Equivalent command conversion for Java execution
		String[] command = { "curl", "-d", dataa, url };

		/*ProcessBuilder process = new ProcessBuilder(command);
		try {
			Process process2 = Runtime.getRuntime().exec(command);
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		Process p;
		try {
			p = process2.start();
			BufferedReader reader = new BufferedReader(new InputStreamReader(p.getInputStream()));
			StringBuilder builder = new StringBuilder();
			String line = null;
			while ((line = reader.readLine()) != null) {
				builder.append(line);
				builder.append(System.getProperty("line.separator"));
			}
			String result = builder.toString();
			System.out.print(result);

		} catch (IOException e) {
			System.out.print("error");
			e.printStackTrace();
		}*/
		try {
			Process process = Runtime.getRuntime().exec(command);
			BufferedReader reader = new BufferedReader(new 
			InputStreamReader(process.getInputStream()));
		      StringBuilder response = new StringBuilder(" ");

			String line;
			
			while ((line = reader.readLine()) != null) {
			    response.append(line);
			}
		}catch (Exception e) {
			// TODO: handle exception
		e.printStackTrace();
		}
	
		}
	}
