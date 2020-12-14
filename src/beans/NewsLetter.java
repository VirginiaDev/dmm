package beans;

public class NewsLetter {
	
	private int id;
	private String email;
	private String activated;
	private String confirmation_url ;
	private String confirmation_sent;
	private String confirmed_by_user;
	private String submission_date;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getActivated() {
		return activated;
	}
	public void setActivated(String activated) {
		this.activated = activated;
	}
	public String getConfirmation_url() {
		return confirmation_url;
	}
	public void setConfirmation_url(String confirmation_url) {
		this.confirmation_url = confirmation_url;
	}
	public String getConfirmation_sent() {
		return confirmation_sent;
	}
	public void setConfirmation_sent(String confirmation_sent) {
		this.confirmation_sent = confirmation_sent;
	}
	public String getConfirmed_by_user() {
		return confirmed_by_user;
	}
	public void setConfirmed_by_user(String confirmed_by_user) {
		this.confirmed_by_user = confirmed_by_user;
	}
	public String getSubmission_date() {
		return submission_date;
	}
	public void setSubmission_date(String submission_date) {
		this.submission_date = submission_date;
	}

	
	

}
