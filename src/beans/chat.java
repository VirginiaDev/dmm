package beans;

public class chat {

	private int id;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getStatusActive() {
		return statusActive;
	}
	public void setStatusActive(String statusActive) {
		this.statusActive = statusActive;
	}
	private String name;
	private String email;
	private String message;
	private String statusActive;
}
