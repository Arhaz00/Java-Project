package DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Models.Like;


public class LikeDaoImpl extends AbstractDAOA implements IDAO{

	public LikeDaoImpl() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public void add(Object obj) {
		// TODO Auto-generated method stub
		PreparedStatement pst = null;
        String sql = "insert into like (id_post,id_user) values (?,?)";
        try {
            pst = connection.prepareStatement(sql);
            pst.setInt(1, ((Like) obj).getPost());
            pst.setInt(2, ((Like) obj).getUser());
           
            pst.executeUpdate();
        } catch (SQLException exp) {
            System.out.println(exp.getMessage());
        }
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		
	}
	public void deleteLike(int idpost,int iduser) {
		// TODO Auto-generated method stub
		PreparedStatement pst = null;
        String sql = "delete from like where id_post= ? and id_user=?";

        try {
            pst = connection.prepareStatement(sql);
            pst.setInt(1, idpost);
            pst.setInt(2, iduser);
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
        String sql = "select *from like where id= ?";
        try {
            pst = connection.prepareStatement(sql);
            pst.setLong(1, id);
            rs = pst.executeQuery();
            if (rs.next()) {
                
                return new Like(rs.getInt("id"), rs.getInt("id_post"),rs.getInt("id_user"));
            }
        } catch (SQLException exp) {
            System.out.println(exp.getMessage());
        }
        return null;
	}

	@Override
	public List getAll() {
		// TODO Auto-generated method stub
		return null;
	}
	public int nombreLikes(int idpost) {
		PreparedStatement pst = null;
        ResultSet rs;
        String sql = "select count(*) AS total from like where id_post=?";
        try {
            pst = connection.prepareStatement(sql);
            pst.setInt(1, idpost);
            rs = pst.executeQuery();
            if (rs.next()) {
                return rs.getInt("total");
            }
        } catch (SQLException exp) {
            System.out.println(exp.getMessage());
        }
        return 1;
	}
	//fonction pour compter le nombre de like d'un utilisateur par poste 
	
	public int UtilisateurUnique(int idpost,int iduser) {
		PreparedStatement pst = null;
        ResultSet rs;
        String sql = "select count(*) AS nombre from like where id_post=? and id_user=?";
        try {
            pst = connection.prepareStatement(sql);
            pst.setInt(1, idpost);
            pst.setInt(2, iduser);
            rs = pst.executeQuery();
            if (rs.next()) {
                return rs.getInt("nombre");
            }
        } catch (SQLException exp) {
            System.out.println(exp.getMessage());
        }
        return 1;
	}
	
	
	public static  List getLikes(int post) {
		// TODO Auto-generated method stub
		List<Like> list = new ArrayList<Like>();
        PreparedStatement pst = null;
        ResultSet rs;
        String sql = "select * from like where id_post=?";
        try {
            pst = connection.prepareStatement(sql);
            pst.setInt(1, post);
            rs = pst.executeQuery();
            while (rs.next()) {
                list.add(new Like(rs.getInt("id"),rs.getInt("id_user"),rs.getInt("id_post")));
            }
        } catch (SQLException exp) {
            System.out.println(exp.getMessage());
        }
        return list;
	}

	public String getUsers(int post,int user) {
		// TODO Auto-generated method stub
		List<Like> list = new ArrayList<Like>();
        PreparedStatement pst = null;
        ResultSet rs;
        String value="";
        String sql = "select u.nom from user u,like p where p.id_post=? and u.id=?";
        try {
            pst = connection.prepareStatement(sql);
            pst.setInt(1, post);
            pst.setInt(2, user);
            rs = pst.executeQuery();
            while (rs.next()) {
             
               value=rs.getString(1);
               
            }
            pst.close();
            
        } catch (SQLException exp) {
            System.out.println(exp.getMessage());
        }
        
        return value;
	}

}