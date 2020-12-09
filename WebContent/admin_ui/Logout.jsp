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

HttpSession session2 = request.getSession();
session2 = request.getSession();

session2.removeAttribute("id");
session2.removeAttribute("email");
session2.removeAttribute("password");

String message = "Logout successfully";
request.setAttribute("message", message);

ApiController apiController=new ApiController();

int i=apiController.updateOnlineStatus();
//request.getRequestDispatcher("building-login.jsp").include(request, response);
response.sendRedirect("adminlogin.jsp");
out.println("</body>");
out.println("</html>");
%>
</body>
</html>