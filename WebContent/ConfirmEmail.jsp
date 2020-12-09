<%@page import="beans.free_audit"%>
<%@page import="beans.contact"%>
<%@page import="beans.quick_enquiry"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Email.EmailSendThread"%>
<%@page import="dao.ApiController"%>
<%
String id=request.getParameter("id");
String type=request.getParameter("type");

ApiController apiController=new ApiController();
int i=apiController.updateConfirmationStatus(Integer.parseInt(id),type);
String email="";
String name="";
if(type.equals("quick_enquiry")){
ArrayList<quick_enquiry> ae=apiController.QuickEnquiryDetailsById(Integer.parseInt(id));
for(int j=0;j<ae.size();j++){
	email=ae.get(j).getEmail();
	name=ae.get(j).getName();
}
}else if(type.equals("contact")){
	ArrayList<contact> ae=apiController.ContactDetailsById(Integer.parseInt(id));
	for(int j=0;j<ae.size();j++){
		email=ae.get(j).getEmail();
		name=ae.get(j).getName();
	}	
}
else if(type.equals("free_audit")){
	ArrayList<free_audit> ae=apiController.FreeAuditDetailsById(Integer.parseInt(id));
	for(int j=0;j<ae.size();j++){
		email=ae.get(j).getEmail();
		name=ae.get(j).getName();
	}	
}
if(i>0){
	EmailSendThread emailSendThread=new EmailSendThread();
	emailSendThread.SendSingleEmail(name, email, "welcome", Integer.parseInt(id));

	response.sendRedirect("index.jsp");
}else{
	response.sendRedirect("Error.jsp");
}
%>