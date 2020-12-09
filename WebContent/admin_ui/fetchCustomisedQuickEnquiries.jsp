<%@page import="beans.quick_enquiry"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="beans.contact"%>
<%@page import="beans.free_audit"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.ApiController"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
String multiplefiltered=request.getParameter("multiplefiltered");
if(multiplefiltered.equals("no")){
	String search=request.getParameter("search");

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
	                  ArrayList<contact> fa=apiController.fetchContactRequests(search, pageid, total);
	                 for(int i=0;i<fa.size();i++){
	                	 
	                	 ArrayList<String> optionss=new ArrayList();
	                	if(fa.get(i).getBranding().equals("yes")){
	                		optionss.add("Brand"+" "+"Strategy"+" "+"&"+"Design");
	                	}if(fa.get(i).getContent().equals("yes")){
	                		optionss.add("Content"+" "+"Strategy");
	                	}
	                	if(fa.get(i).getDesign().equals("yes")){
	                		optionss.add("UX"+" "+"&"+" "+"UI"+" "+"Design");
	                	}
	                	if(fa.get(i).getEcommerce().equals("yes")){
	                		optionss.add("Ecommerce"+" "+"Design");
	                	}
	                	if(fa.get(i).getWebbdev().equals("yes")){
	                		optionss.add("Web"+" "+"Development");
	                	}
	                	if(fa.get(i).getApps().equals("yes")){
	                		optionss.add("App"+" "+"Design"+" "+"&"+" "+"Development");
	                	}
	                	if(fa.get(i).getVr().equals("yes")){
	                		optionss.add("VR"+" "+"&"+" "+"AR"+" "+"Design");
	                	}
	                	if(fa.get(i).getPerformance().equals("yes")){
	                		optionss.add("Performance"+" "+"Marketing");
	                	}
	                	if(fa.get(i).getPrint().equals("yes")){
	                		optionss.add("Print"+" "+"Design");
	                	} %>
	                	 <tr>
     
      <td><%=count++%></td>
      <td><%=fa.get(i).getName()%></td>
      <td><%=fa.get(i).getEmail()%></td>
      <td><%=fa.get(i).getPhn()%></td>
      <td><%=fa.get(i).getCompany_name()%></td>
      <td>
      <%
      System.out.println(optionss.size());
      int k=1;
      for(int j=0;j<optionss.size();j++){
    	  %>
    	  <%=k%>. <%=optionss.get(j)%><br>
    	  <% 
      k++;
      }
      %>
      </td>
      <td>
      <%=fa.get(i).getBudget()%>
      </td>
      <td><%=fa.get(i).getMessage()%></td>
      
      </tr>
           
     
<%} 
} else if(multiplefiltered.equals("yes")){
	System.out.println("yessssssssssssss");
String fromdate1=request.getParameter("fromdate");
String todate1=request.getParameter("todate");
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

int c=1;
String spageid="1";
String totalpagecount="10";
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
                  ArrayList<quick_enquiry> fa=apiController.fetchQuickEnquiriesAccordingToMultipleFilters(fromdate,todate,pageid, total);
                 for(int i=0;i<fa.size();i++){
                	 
                	
%>
  <tr>
     
      <td><%=count++%></td>
      <td><%=fa.get(i).getName()%></td>
      <td><%=fa.get(i).getEmail()%></td>
      <td><%=fa.get(i).getPhone()%></td>
      <td><%=fa.get(i).getCompany()%></td>
      <td><%=fa.get(i).getMessage()%></td>
      <td><%=fa.get(i).getConfirmation_status()%></td>
      <td><%=fa.get(i).getSubmission_date()%></td>
      </tr>
           
     
<%} }
else if(multiplefiltered.equals("all")){
	
System.out.println("allllllllllllllllllllllllll");
	int c=1;
	String spageid="1";
	String totalpagecount="10";
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
	                  ArrayList<quick_enquiry> fa=apiController.fetchQuickEnquiries("0", pageid, total);
	                 for(int i=0;i<fa.size();i++){
	                	 
	                	
	%>
	  <tr>
	     
	      <td><%=count++%></td>
	      <td><%=fa.get(i).getName()%></td>
	      <td><%=fa.get(i).getEmail()%></td>
	      <td><%=fa.get(i).getPhone()%></td>
	      <td><%=fa.get(i).getCompany()%></td>
	      <td><%=fa.get(i).getMessage()%></td>
	      <td><%=fa.get(i).getConfirmation_status()%></td>
	      <td><%=fa.get(i).getSubmission_date()%></td>
	      </tr>
	           
	     
	<%} }%>