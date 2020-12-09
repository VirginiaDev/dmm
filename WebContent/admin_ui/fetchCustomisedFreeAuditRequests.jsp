<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="beans.free_audit"%>
<%@page import="java.util.ArrayList"%>
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
String multiplefiltered=request.getParameter("multiplefiltered");
if(multiplefiltered.equals("no")){
%>
<%
String search=request.getParameter("search");
String reg=request.getParameter("reg");
String email=request.getParameter("email");
String spageid="1";
String totalpagecount="10";
int c=1;
int pageid = Integer.parseInt(spageid);
int checkpage = Integer.parseInt(spageid);
int pageid1 = Integer.parseInt(spageid);
int total = Integer.parseInt(totalpagecount);
if (pageid == 1) {
} else {
pageid = pageid - 1;
pageid = pageid * total + 1;
}
int count=1+((checkpage-1)*total);
int spotLeftCount=0;

                  ApiController apiController=new ApiController();
                  ArrayList<free_audit> fa=apiController.fetchFreeAuditRequests(search, pageid, total);
                 for(int i=0;i<fa.size();i++){
                 %>
      <tr>
     
      <td><%=count++%></td>
      <td><%=fa.get(i).getName()%></td>
      <td><%=fa.get(i).getEmail()%></td>
      <td><%=fa.get(i).getPhone()%></td>
      </tr>
<%} %>
<%} else if(multiplefiltered.equals("yes")) {
	%>
	<%
	String fromdate1=request.getParameter("fromdate");
	String todate1=request.getParameter("todate");
	String services=request.getParameter("services");
	String fromdate="none";
	String todate="none";


	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

	SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy.MM.dd");
	if(fromdate1!="none"){
		  Date date1=sdf.parse(fromdate1);
		  fromdate=sdf.format(date1);
		  System.out.println(fromdate+"=========fromdatefromdate");
	}if(todate1!="none"){
		  Date date2=sdf.parse(todate1);
		  todate=sdf.format(date2);
		  
		  System.out.println(todate+"=======todatetodate");
	}

	String spageid="1";
	String totalpagecount="10";
	int c=1;
	int pageid = Integer.parseInt(spageid);
	int checkpage = Integer.parseInt(spageid);
	int pageid1 = Integer.parseInt(spageid);
	int total = Integer.parseInt(totalpagecount);
	if (pageid == 1) {
	} else {
	pageid = pageid - 1;
	pageid = pageid * total + 1;
	}
	int count=1+((checkpage-1)*total);
	int spotLeftCount=0;

	                  ApiController apiController=new ApiController();
	                  ArrayList<free_audit> fa=apiController.fetchFreeAuditRequestsAccordingToMultipleFilters(fromdate,todate,services, pageid, total);
	                 for(int i=0;i<fa.size();i++){
	                 %>
	      <tr>
	     
	      <td><%=count++%></td>
	      <td><%=fa.get(i).getName()%></td>
	      <td><%=fa.get(i).getEmail()%></td>
	      <td><%=fa.get(i).getPhone()%></td>
	      </tr>
	<%} %>
	<%} else if(multiplefiltered.equals("all")) {
		%>
		<%
	

		String spageid="1";
		String totalpagecount="10";
		int c=1;
		int pageid = Integer.parseInt(spageid);
		int checkpage = Integer.parseInt(spageid);
		int pageid1 = Integer.parseInt(spageid);
		int total = Integer.parseInt(totalpagecount);
		if (pageid == 1) {
		} else {
		pageid = pageid - 1;
		pageid = pageid * total + 1;
		}
		int count=1+((checkpage-1)*total);
		int spotLeftCount=0;

		                  ApiController apiController=new ApiController();
		                  ArrayList<free_audit> fa=apiController.fetchFreeAuditRequests("0", pageid, total);
		                 for(int i=0;i<fa.size();i++){
		                 %>
		      <tr>
		     
		      <td><%=count++%></td>
		      <td><%=fa.get(i).getName()%></td>
		      <td><%=fa.get(i).getEmail()%></td>
		      <td><%=fa.get(i).getPhone()%></td>
		      </tr>
		<%} %>
		<%} %>       

</body>
</html>