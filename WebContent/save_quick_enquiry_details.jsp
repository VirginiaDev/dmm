<%@page import="beans.base_urls"%>
<%@page import="Email.EmailSendThread"%>
<%@page import="dao.ApiController"%>
<%
String name=request.getParameter("name");
String email=request.getParameter("email");
String phn=request.getParameter("phn");
String company=request.getParameter("company");
String message=request.getParameter("message");

ApiController apiController=new ApiController();

int id=apiController.insertIntoQuickEnquiryDetails(name,email,phn,company,message);
if(id>0){
	base_urls base_urls=new base_urls();
	String link=base_urls.url+"ConfirmEmail.jsp?id="+id+"&type=quick_enquiry";
	int i=apiController.insertConfirmationUrl(id,link,"quick_enquiry");
}

/* EmailSendThread emailSendThread=new EmailSendThread();
emailSendThread.SendEmail(email, "Confirmation Email", "Hi '"+name+"'! our  team will get back to u soon regarding your query!! Please click on this link for confirmation:- http://localhost:8853/vns-dmm/quickEntryconfirmation.jsp?id="+id+"");

String confirmation_status=apiController.getMailConfirmationStatus(id,"quick_enquiry");
if(confirmation_status.equals("true")){
	emailSendThread.SendEmail(email, "Welcome Email", "Hi '"+name+"'! Welcome!! Please click on this link for confirmation:- http://localhost:8853/vns-dmm/index.jsp");

}*/
%>
		