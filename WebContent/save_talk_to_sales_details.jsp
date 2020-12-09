<%@page import="dao.ApiController"%>
<%
String country=request.getParameter("country");
String name=request.getParameter("name");
String email=request.getParameter("email");
String phone=request.getParameter("phone");
ApiController apiController=new ApiController();
int id=apiController.insertIntoTalkToSales(country,name, email, phone);
if(id>0){
	System.out.println("successfull");
}else{
	System.out.println("Error");
}

%>