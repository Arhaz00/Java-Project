package Models;



public class Actor {
	  int id;
	  String nom;
	  String email;
	  String password;
	  int phone;
	  String date;
	  Boolean psyc;
	  
	  
	  public Actor() {}
	  
	public Actor(int id, String nom, String email, String password, int phone, String date, Boolean psyc) {
		super();
		this.id = id;
		this.nom = nom;
		this.email = email;
		this.password = password;
		this.phone = phone;
		this.date = date;
		this.psyc = psyc;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getPhone() {
		return phone;
	}
	public void setPhone(int phone) {
		this.phone = phone;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public Boolean getPsyc() {
		return psyc;
	}
	public void setPsyc(Boolean psyc) {
		this.psyc = psyc;
	}
	  
	  
	  
}
