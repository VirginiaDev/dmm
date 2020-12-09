<%
HttpSession chat_session = request.getSession();
chat_session = request.getSession();

chat_session.removeAttribute("chatid");
%>