<%@page import="beans.chat"%>
<%@page import="beans.contact"%>
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
%>        <%
                  ApiController apiController=new ApiController();
                  ArrayList<chat> fa=apiController.fetchMessagesOnHelpDessk(search, pageid, total);
                 for(int i=0;i<fa.size();i++){
                	 
                
                 %>
      <tr>
     
      <td><%=count++%></td>
      <td><%=fa.get(i).getName()%></td>
      <td><%=fa.get(i).getEmail()%></td>
      <td><%=fa.get(i).getMessage()%></td>
     
      </tr>
<%} %>
</body>
</html>