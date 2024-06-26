package bean;

public class Users {
	
	private int uid;
	private String userName;
	private String password;
	
	public Users(){
	

	}
	
	public Users(int uid, String userName, String password) {
		this.uid = uid;
		this.userName = userName;
		this.password = password;
	}



	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	
}
