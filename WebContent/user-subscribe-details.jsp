<%@page import="beans.NewsLetter"%>
<%@page import="dao.ApiController"%>
<% 
NewsLetter n = new NewsLetter();
n.setEmail(request.getParameter("email"));
n.setActivated(request.getParameter("activated"));
n.setConfirmation_url(request.getParameter("confirmation_url"));
n.setConfirmation_sent(request.getParameter("confirmation_sent"));
n.setConfirmed_by_user(request.getParameter("confirmed_by_user"));

new ApiController().insertIntoNewsLetter(n);
%>