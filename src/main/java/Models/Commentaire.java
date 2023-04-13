package Models;


public class Commentaire {

	int id;
	String rep;
	int user;
	int post;
	
	public Commentaire() {
		
	}
	
	
	public Commentaire(int id, String rep, int user, int post) {
		super();
		this.id = id;
		this.rep = rep;
		this.user = user;
		this.post = post;
	}
	
	
	public int getUser() {
		return user;
	}
	public void setUser(int user) {
		this.user = user;
	}
	public int getPost() {
		return post;
	}
	public void setPost(int post) {
		this.post = post;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getRep() {
		return rep;
	}
	public void setRep(String rep) {
		this.rep = rep;
	}
	
	
}
