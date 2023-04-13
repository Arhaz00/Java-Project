package Models;

public class RDV {
	int id;
	int id_user;
	int id_spec;
	String gravite;
	String dateRDV;
	String lieuRDV;
	
	
	
	public RDV() {
		super();
	}

	public RDV(int id, int id_user, int id_spec, String gravite, String dateRDV, String lieuRDV) {
		super();
		this.id = id;
		this.id_user = id_user;
		this.id_spec = id_spec;
		this.gravite = gravite;
		this.dateRDV = dateRDV;
		this.lieuRDV = lieuRDV;
	}


	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getId_user() {
		return id_user;
	}

	public void setId_user(int id_user) {
		this.id_user = id_user;
	}

	public int getId_spec() {
		return id_spec;
	}

	public void setId_spec(int id_spec) {
		this.id_spec = id_spec;
	}

	public String getGravite() {
		return gravite;
	}

	public void setGravite(String gravite) {
		this.gravite = gravite;
	}

	public String getDateRDV() {
		return dateRDV;
	}

	public void setDateRDV(String dateRDV) {
		this.dateRDV = dateRDV;
	}

	public String getLieuRDV() {
		return lieuRDV;
	}

	public void setLieuRDV(String lieuRDV) {
		this.lieuRDV = lieuRDV;
	}
	
	
	
	
}
