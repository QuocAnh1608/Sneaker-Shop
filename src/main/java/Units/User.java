package Units;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Users")
public class User {
	@Id
	@Column(name="id")
	String id;
	@Column(name="passwords")
	String passwords;
	@Column(name="fullname")
	String fullname;
	@Column(name="email")
	String email;
	@Column(name="sdt")
	String sdt;
	@Column(name="roles")
	Boolean roles;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPasswords() {
		return passwords;
	}
	public void setPasswords(String passwords) {
		this.passwords = passwords;
	}
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSdt() {
		return sdt;
	}
	public void setSdt(String sdt) {
		this.sdt = sdt;
	}
	public Boolean getRoles() {
		return roles;
	}
	public void setRoles(Boolean roles) {
		this.roles = roles;
	}
	
	
	
	
}
