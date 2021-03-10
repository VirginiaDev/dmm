<%@page import="beans.base_urls"%>
<%@page import="dao.ApiController"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
ApiController apiController=new ApiController();
base_urls bu=new base_urls();

String name=request.getParameter("name");
String email=request.getParameter("email");
String phone=request.getParameter("phn");
String message=request.getParameter("msg");
String options=request.getParameter("service_selected");
String pageurl=request.getParameter("pageurl");


int id=apiController.insertIntoFreeAudits(name, email, phone,message,options);
if(id>0){
	System.out.println("success");
	String link=bu.url+"ConfirmEmail.jsp?id="+id+"&type=free_audit";
	int i=apiController.insertConfirmationUrl(id,link,"free_audit");
    if(i>0){
    	
        	response.sendRedirect(bu.url+"Thank_You.jsp?page_url="+pageurl);

    }else{
    	System.out.println("failed");
    }
	

		

}else{
	System.out.println("failed");

}
%>
</body>
</html>