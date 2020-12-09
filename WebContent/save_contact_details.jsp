<%@page import="beans.base_urls"%>
<%@page import="dao.ApiController"%>

<%
System.out.println("dbhedvjhdvjhdvjhvejh");
String branding=request.getParameter("branding");
String content=request.getParameter("content");
String design=request.getParameter("design");
String ecommerce=request.getParameter("ecommerce");
String webbdev=request.getParameter("webbdev");
String apps=request.getParameter("apps");
String vr=request.getParameter("vr");
String performance=request.getParameter("performance");
String print=request.getParameter("print");
String noneselected=request.getParameter("noneselected");
String name=request.getParameter("name");
String email=request.getParameter("email");
String phn=request.getParameter("phn");
String company_name=request.getParameter("company_name");
String budget=request.getParameter("budget");
String message=request.getParameter("message");

ApiController apiController=new ApiController();
int id=apiController.insertIntoContacts(branding, content, design, ecommerce, webbdev, apps, vr, performance, print,noneselected, name, email, phn, company_name, budget, message);
if(id>0){
	base_urls base_urls=new base_urls();
	String link=base_urls.url+"ConfirmEmail.jsp?id="+id+"&type=contact";
	int i=apiController.insertConfirmationUrl(id,link,"contact");
}
else{
	System.out.println("failed");

}

%>
