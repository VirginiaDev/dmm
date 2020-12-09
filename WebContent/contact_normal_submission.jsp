<%@page import="dao.ApiController"%>
<%
String type=request.getParameter("type");
String name=request.getParameter("con_name");
String email=request.getParameter("con_email");
String phone=request.getParameter("con_phone");
ApiController apiController=new ApiController();
if(type.equals("general_inquiries")){
	
	String company_website=request.getParameter("company_website");
	String drop_a_line=request.getParameter("drop_a_line");
	int i=apiController.insertIntoGeneralInquiries(name, email, phone, company_website, drop_a_line);
	if(i>0){
		response.sendRedirect("Thank_You.jsp");
	}else{
		response.sendRedirect("Error.jsp");
	}
	
}else if(type.equals("callback")){
	
	String time_slot_one=request.getParameter("time_slot_one");
	String time_slot_two=request.getParameter("time_slot_two");
	String time_slot_three=request.getParameter("time_slot_three");
	int i=apiController.insertIntoCallback(name, email, phone, time_slot_one, time_slot_two,time_slot_three);
	if(i>0){
		response.sendRedirect("Thank_You.jsp");
	}else{
		response.sendRedirect("Error.jsp");
	}
	
}else if(type.equals("quote")){
	
	String services=request.getParameter("con_services");
	String requirement=request.getParameter("requirement");
	int i=apiController.insertIntoQuotes(name, email, phone, services, requirement);
	if(i>0){
		response.sendRedirect("https://dmm.virtuosonetsoft.com/Thank_You.jsp");
	}else{
		response.sendRedirect("Error.jsp");
	}
	
}

%>