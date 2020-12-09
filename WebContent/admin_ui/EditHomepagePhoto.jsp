
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
int imei = 0;
    String fieldName = "";
    String docTitle = "";
    String id="";

    String Category="";
    
    String title="";
    String blogid="";
    
    
    String context="";
	String multipleimage="";
    String image="";
    String docType = "";
    int status=0;
    String[] multiIMEI = new String[5000];
    homepage_photos users = new homepage_photos();
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
        String name = "abc.pdf";
        while (itr.hasNext()) {
            FileItem item = (FileItem) itr.next();
            System.out.println("here " + item);
            if (item.isFormField()) {
                fieldName = item.getFieldName();
                
                if(fieldName.equalsIgnoreCase("id")){
                	id = item.getString();
                	users.setId(Integer.parseInt(id));
                	System.out.println("ididididid="+id);
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
							multipleimage="images/" + itemName;
						}else{
							multipleimage=multipleimage+",images/" + itemName;
						}
						
						users.setFilename(multipleimage);
				      	 
				               
				                    File savedFile = new File(getServletContext().getRealPath("/")+"images/" + itemName );
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
	JSONObject jobj = new JSONObject();
	try {
		int i = apiController.updateHomepagePhotos(id,multipleimage,"photos","none");
		

		
		out.println(jobj.toString());
		if (i > 0) {
			System.out.println("updated");
			response.sendRedirect("uploadPictures.jsp?clr=clr=languagesList7&act=languagesList7");
		} else {
			System.out.println("not updated");
			response.sendRedirect("adminLogin");
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
%>