<%@page import="beans.base_urls"%>
<%@page import="dao.ApiController"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
ApiController apiController=new ApiController();
base_urls bu=new base_urls();

String name=request.getParameter("name");
String email=request.getParameter("email");
String phone=request.getParameter("phn");
String message=request.getParameter("msg");
String source_page=request.getParameter("source_page");
String optionss="";
String pageurl="";
if(source_page.equals("other")){
	optionss=request.getParameter("service_selected");
	pageurl=request.getParameter("pageurl");
}else{
	optionss=source_page;
	pageurl=source_page;
}
int id=apiController.insertIntoFreeAudits(name, email, phone,message,optionss);
if(id>0){
	System.out.println("success");
	base_urls base_urls=new base_urls();
	String link=base_urls.url+"ConfirmEmail.jsp?id="+id+"&type=free_audit";
	int i=apiController.insertConfirmationUrl(id,link,"free_audit");
    if(i>0){

    		System.out.println("success");	
    	}
    }else{
    	System.out.println("failed");
    }

%>
