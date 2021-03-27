package ptithcm.entity;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "Users")
public class Users {
	@Id
	private String Id_User;
	private String Username;
	private String Password;
	
	public Users() {
		super();
	}
	public Users(String id_User, String username, String password) {
		super();
		Id_User = id_User;
		Username = username;
		Password = password;
	}
	public String getId_User() {
		return Id_User;
	}
	public void setId_User(String id_User) {
		Id_User = id_User;
	}
	public String getUsername() {
		return Username;
	}
	public void setUsername(String username) {
		Username = username;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	
	

}
