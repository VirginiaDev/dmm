<%@page import="dao.ApiController"%>
<%
String uipddress=request.getParameter("chatid");
ApiController apiController=new ApiController();
String status=apiController.ChatStatus(uipddress);
System.out.println("status=="+status);

%>
	<input type="hidden" id="message_status" value="<%=status%>">

