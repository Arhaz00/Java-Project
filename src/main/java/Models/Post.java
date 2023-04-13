package Models;
import java.sql.Timestamp;

public class Post {
	int id;
	int user;
	String img;
	String name;
	Timestamp time;
	String content;
	String typePost;
	
	public Post() {}
	
	public Post(int id, String img, String name, Timestamp time, String txt) {
		
		super();
		this.id = id;
		this.img = img;
		this.name = name;
		this.time = time;
		this.content = txt;
		this.typePost = "Post";
	}
	
	public Post(int id, int user, String name, Timestamp time, String content, String img, String TypePost) {
		super();
		this.id = id;
		this.user = user;
		this.img = img;
		this.name = name;
		this.time = time;
		this.content = content;
		this.typePost = TypePost;
	}

	public int getUser() {
		return user;
	}

	public void setUser(int user) {
		this.user = user;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}


	public String getTypePost() {
		return typePost;
	}
	public String setTypePost(String ty) {
		return "Post";
	}

	public Timestamp getTime() {
		return time;
	}

	public void setTime(Timestamp time) {
		this.time = time;
	}

	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}

	@Override
	public String toString() {
		return "Post [id=" + id + ", user=" + user + ", img=" + img + ", name=" + name + ", time=" + time + ", content="
				+ content + ", typePost=" + typePost + "]";
	}
	
	
	
}
