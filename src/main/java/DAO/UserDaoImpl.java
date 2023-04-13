package DAO;


import java.sql.PreparedStatement;


import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Models.Actor;

public class UserDaoImpl extends AbstractDAOA implements IDAO {

	@Override
	public void add(Object obj) {
	    PreparedStatement pst = null;
	    System.out.println("pst"+pst);
	    String sql = "insert into user (nom,email,password,phone,date,psyc,specialiste,adresse) values (?,?,?,?,?,?,NULL,NULL)";
	    try {
	        pst = connection.prepareStatement(sql);
	        pst.setString(1, ((Actor) obj).getNom());
	        pst.setString(2, ((Actor) obj).getEmail());
	        pst.setString(3, ((Actor) obj).getPassword());
	        pst.setInt(4, ((Actor) obj).getPhone());
	        pst.setString(5, ((Actor) obj).getDate());
	        pst.setBoolean(6, ((Actor) obj).getPsyc());
	        pst.executeUpdate();
	    } catch (SQLException exp) {
	        System.out.println(exp.getMessage());
	    } catch (NullPointerException exp) {
	        System.out.println("Connection is null: " + exp.getMessage());
	    }
	}
	
	//pour valider l'email et password d'un user
	 public boolean validate(String email, String password) throws SQLException {

         System.out.println("from validate");
         String sql = "select * from user where email=? and password=?";
         System.out.println(sql);
         
        try (PreparedStatement pst = connection.prepareStatement(sql)) {
            pst.setString(1, email);
            pst.setString(2, password);
            try (ResultSet rs = pst.executeQuery()) {
                if (rs.next()) {
                    System.out.println(rs.getInt("id") + "" + rs.getString("email"));
                    return true;
                }
            }
        } catch (SQLException exp) {
            System.out.println(exp.getMessage());
        }
        return false;

    }
	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		PreparedStatement pst = null;
        String sql = "delete * from user where id= ?";
        try {
            pst = connection.prepareStatement(sql);
            
            pst.executeUpdate();
        } catch (SQLException exp) {
            System.out.println(exp.getMessage());
        }
	}

	@Override
	public Object getOne(int id) {
		// TODO Auto-generated method stub
		PreparedStatement pst = null;
        ResultSet rs;
        String sql = "select * from user where id= ?";
        try {
            pst = connection.prepareStatement(sql);
            pst.setInt(1, id);
            rs = pst.executeQuery();
            if (rs.next()) {
                
                return new Actor(rs.getInt("id"),rs.getString("nom"), rs.getString("email"),rs.getString("password"), rs.getInt("phone"),rs.getString("date"),rs.getBoolean("psyc"));//,rs.getString("specialiste"),rs.getString("adresse")
            }
        } catch (SQLException exp) {
            System.out.println(exp.getMessage());
        }
        return null;
	}
	public Actor getOneO(int id) {
		// TODO Auto-generated method stub
		PreparedStatement pst = null;
        ResultSet rs;
        String sql = "select * from user where id= ?";
        try {
            pst = connection.prepareStatement(sql);
            pst.setInt(1, id);
            rs = pst.executeQuery();
            if (rs.next()) {
                
                return new Actor(rs.getInt("id"),rs.getString("nom"), rs.getString("email"),rs.getString("password"), rs.getInt("phone"),rs.getString("date"),rs.getBoolean("psyc"));//,rs.getString("specialiste"),rs.getString("adresse")
            }
        } catch (SQLException exp) {
            System.out.println(exp.getMessage());
        }
        return null;
	}

	@Override
	public List getAll() {
		// TODO Auto-generated method stub
		List<Actor> list = new ArrayList<Actor>();
        PreparedStatement pst = null;
        ResultSet rs;
        String sql = "select * from user";
        try {
            pst = connection.prepareStatement(sql);
            rs = pst.executeQuery();
            while (rs.next()) {
                list.add(new Actor(rs.getInt("id"),rs.getString("nom"), rs.getString("email"),rs.getString("password"), rs.getInt("phone"),rs.getString("date"),rs.getBoolean("psyc")));//,rs.getString("specialiste"),rs.getString("adresse")
     }
        } catch (SQLException exp) {
            System.out.println(exp.getMessage());
        }
        return list;
	}
	public  Integer getByEmail(String email) {
		// TODO Auto-generated method stub
		PreparedStatement pst = null;
        ResultSet rs;
        System.out.println("email: "+email);
        String sql = "select * from user where email=?";
      
        try {
            pst = connection.prepareStatement(sql);
            pst.setString(1, email);
            rs = pst.executeQuery();
            if (rs.next()) {
                System.out.println(rs.getInt("id") + "" + rs.getString("nom"));
                 
                 return rs.getInt("id");
             }
        } catch (SQLException exp) {
            System.out.println(exp.getMessage());
        }
        return null;
	}
	

	public void update(Object obj) {
		// TODO Auto-generated method stub
		PreparedStatement pst = null;
        String sql = "update user SET nom=?, email=?, password=?, daate=?, psyc=?, specialiste=NULL, adresse=NULL where id= ?";
        try {
            pst = connection.prepareStatement(sql); 
            pst.setString(1, ((Actor) obj).getNom());
            pst.setString(2, ((Actor) obj).getEmail());
            pst.setString(3, ((Actor) obj).getPassword());
            pst.setInt(4, ((Actor) obj).getPhone());
            pst.setString(5, ((Actor) obj).getDate());
            pst.setBoolean(6, ((Actor) obj).getPsyc());
            
            pst.setInt(5,((Actor) obj).getId());
            
            pst.executeUpdate();
        } catch (SQLException exp) {
            System.out.println(exp.getMessage());
        }
	}

	
	

		   
}

	

