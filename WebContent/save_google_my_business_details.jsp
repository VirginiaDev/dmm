<%@page import="dao.ApiController"%>
<%@page import="beans.GoogleMyBusiness"%>
<%
GoogleMyBusiness g= new GoogleMyBusiness();

g.setName(request.getParameter("name"));
g.setEmail(request.getParameter("email"));
g.setPhone(request.getParameter("phone"));
g.setMessage(request.getParameter("message"));
g.setPageName(request.getParameter("pageName"));
g.setTitle(request.getParameter("title"));

new ApiController().insertIntoGoogleMyBusinessDetails(g);

%>