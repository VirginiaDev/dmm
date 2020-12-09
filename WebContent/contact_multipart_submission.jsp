
<%@page import="beans.Careers"%>
<%@page import="dao.ApiController"%>
<%@page import="beans.homepage_photos"%>
<%@page import="com.google.gson.Gson"%>

<%@page import="org.json.JSONObject"%>

<%@ page language="java"   errorPage="" %>
<%@ page language ="java" import="java.sql.*" %>
<%@ page language="java" import="javax.servlet.*" %>
<%@ page language="java" import="java.io.*" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="java.util.StringTokenizer" %>
<%@ page import="java.io.File" %>
<%@ page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@ page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@ page import="org.apache.commons.fileupload.*"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%!    int count1 = 0, count2 = 0;
    int dom = 0;
    String str1 = "", str2 = "";
%>
<%
	String filePath = "";

    String fieldName = "";

    String name="";
    String email="";
    String phone="";
    String position="";

    String blogid="";

	String multipleimage="";

    String[] multiIMEI = new String[5000];
    Careers careers = new Careers();
    boolean isMultipart = ServletFileUpload.isMultipartContent(request);
   ApiController apiController= new ApiController();
    if (!isMultipart) {
        System.out.println("Else is not executed");
    } else {
    	FileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload upload = new ServletFileUpload(factory);
        List items = null;
        try {

            items = upload.parseRequest(request);
        } catch (FileUploadException e) {
            e.printStackTrace();
        }
        Iterator itr = items.iterator();
      //  String name = "abc.pdf";
        while (itr.hasNext()) {
            FileItem item = (FileItem) itr.next();
            System.out.println("here " + item);
            if (item.isFormField()) {
                fieldName = item.getFieldName();
                
                if(fieldName.equalsIgnoreCase("con_name")){
                	name = item.getString();
             
                	System.out.println("name="+name);
				}
                if(fieldName.equalsIgnoreCase("con_email")){
                	email = item.getString();
             
                	System.out.println("email="+email);
				}
                if(fieldName.equalsIgnoreCase("con_phone")){
                	phone = item.getString();
             
                	System.out.println("phone="+phone);
				}if(fieldName.equalsIgnoreCase("position")){
					position = item.getString();
             
                	System.out.println("position="+position);
				}
			
				System.out.println("here fieldname" + fieldName);
				String value = item.getString();
				System.out.println("here fieldname" + value);
			} else {
				try {
					  String itemName = item.getName(); 
				     	System.out.print("itemNameitemNameitemNameitemName"+itemName);
				    	System.out.print("blogidblogidblogid"+blogid);
				    	if(multipleimage.equalsIgnoreCase("")){
							multipleimage="resumes/" + itemName;
						}else{
							multipleimage=multipleimage+",resumes/" + itemName;
						}
						
				    	careers.setFilepath(multipleimage);
				      	 
				               
				                    File savedFile = new File(getServletContext().getRealPath("/")+"resumes/" + itemName );
				                    // File savedFile = new File("J:\\abc\\" + name);
				                    item.write(savedFile);
				                    System.out.print("nnnnnnnnnnnnnnn"+savedFile.getAbsolutePath());
									 StringTokenizer localStringTokenizer = new StringTokenizer(itemName, ".");
									if (localStringTokenizer.countTokens() >= 2) {
				                        str1 = localStringTokenizer.nextToken();
				                        str2 = localStringTokenizer.nextToken();
				                    } else {
				                    }
				                   // response.sendRedirect("fileUploadSuccess.jsp");
				                } catch (Exception e) {
				                    System.out.println("here while uploadin" + e);
					//  response.sendRedirect("error.jsp");
				}
			}
		}
	}

	try {
		int i = apiController.insertIntoCareers(name, email, phone, position, multipleimage);
	
		if (i > 0) {
			System.out.println("updated");
			response.sendRedirect("Thank_you.jsp");
		} else {
			System.out.println("not updated");
			response.sendRedirect("adminLogin");
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
%>