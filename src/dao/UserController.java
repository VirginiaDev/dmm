package dao;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import beans.NewsLetter;

@WebServlet("/User-Controller")
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static Logger log = Logger.getLogger(UserController.class);
	
	private static final int ACTION_USER_SUBSCRIPTION = 1;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int userAction = Integer.parseInt(request.getParameter("userAction"));
		
		switch(userAction) {
		case ACTION_USER_SUBSCRIPTION:
			userSubscription(request, response);
			break;
			
		}
	}

	public void userSubscription(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		NewsLetter n = new NewsLetter();
		String pageName = request.getParameter("pageName");
		n.setEmail(request.getParameter("email"));
		n.setActivated(request.getParameter("activated"));
		n.setConfirmation_url(request.getParameter("confirmation_url"));
		n.setConfirmation_sent(request.getParameter("confirmation_sent"));
		n.setConfirmed_by_user(request.getParameter("confirmed_by_user"));
		
		new ApiController().insertIntoNewsLetter(n);
		
		response.sendRedirect(pageName+".jsp");
		
		
	}

}
