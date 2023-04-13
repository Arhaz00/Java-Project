package DAO;

import java.util.Date;


import java.io.InputStream;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import Models.Like;
import Models.Post;
import Models.PostSaved;



public class PostDaoImpl extends AbstractDAOA implements IDAO{

	@Override
	public void add(Object obj) {
		// TODO Auto-generated method stub
		PreparedStatement pst = null;
        String sql = "insert into post (id_user,name,time,content,typePost,img) values (?,?,?,?,?,?)";
        try {
            pst = connection.prepareStatement(sql);
            pst.setInt(1, ((Post) obj).getUser());
            pst.setString(2, ((Post) obj).getName());
            pst.setTimestamp(3, ((Post) obj).getTime()); 
            pst.setString(4, ((Post) obj).getContent());
            pst.setString(5, "Post");
            pst.setString(6, ((Post) obj).getImg());
           
            pst.executeUpdate();
            System.out.println("post cree");
        } catch (SQLException exp) {
            System.out.println(exp.getMessage());
        }
		
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		PreparedStatement pst = null;
        String sql = "delete from post where id= ?";
        try {
            pst = connection.prepareStatement(sql);
            pst.setInt(1, id);
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
        String sql = "select * from post where id= ?";
        try {
            pst = connection.prepareStatement(sql);
            pst.setInt(1, id);
            rs = pst.executeQuery();
            if (rs.next()) {
             
                return new Post(rs.getInt("id"),rs.getInt("user"),rs.getString("name"),rs.getTimestamp("time"), rs.getString("content"), rs.getString("img"), rs.getString("typePost") );
            }
        } catch (SQLException exp) {
            System.out.println(exp.getMessage());
        }
        return null;
	}

	@Override
	public List getAll() {
		// TODO Auto-generated method stub
		List<Post> list = new ArrayList<Post>();
        PreparedStatement pst = null;
        ResultSet rs;
        String sql = "select * from post";
        try {
            pst = connection.prepareStatement(sql);
            rs = pst.executeQuery();
            while (rs.next()) {
                list.add(new Post(rs.getInt("id"),rs.getInt("id_user"),rs.getString("name"),rs.getTimestamp("time"), rs.getString("content"), rs.getString("img"), rs.getString("typePost") ));
            }
        } catch (SQLException exp) {
            System.out.println(exp.getMessage());
        }
        return list;
	}

	  public static ArrayList<Post> getPosts(String typePost){
	    	
	    	 ArrayList<Post> ls=new ArrayList<Post>();
	         PreparedStatement pst = null;
	         ResultSet rs;
	         
	         System.out.println(typePost);
	         String sql = "select * from post where typePost = ?";
	         try {
	 			 pst = connection.prepareStatement(sql);
	 			 pst.setString(1, typePost);
	             rs = pst.executeQuery();
	            
	             while (rs.next()) {
	            	
	            	 UserDaoImpl userDaoImpl = new UserDaoImpl();
	                 ls.add(new Post(rs.getInt("id"),rs.getInt("user"),rs.getString("name"),rs.getTimestamp("time"), rs.getString("content"), rs.getString("img"), rs.getString("typePost") ));
	             }
	         } catch (SQLException exp) {
	             System.out.println(exp.getMessage());
	         }
	         return ls;
	    	 
	    	 
	     }
	  
	  
	  public  ArrayList<Post> getPostsUser(int iduser){
	    	
	    	 ArrayList<Post> ls=new ArrayList<Post>();
	         PreparedStatement pst = null;
	         ResultSet rs;
	         String sql = "select * from post where user=?";
	         
	     
	         try {
	 			 pst = connection.prepareStatement(sql);
	 			 pst.setInt(1, iduser);
	             rs = pst.executeQuery();
	             while (rs.next()) {
	            	
		            	UserDaoImpl userDaoImpl = new UserDaoImpl();
		                ls.add(new Post(rs.getInt("id"),rs.getInt("user"),rs.getString("name"),rs.getTimestamp("time"), rs.getString("content"), rs.getString("img"), rs.getString("typePost") ));
	             }
	         } catch (SQLException exp) {
	             System.out.println(exp.getMessage());
	         }
	         return ls;
	    	 
	    	 
	     }
	  
	  // Enregister un post 
	  
	  public void save(Object obj) {
			PreparedStatement pst = null;
	        String sql = "insert into postsaved (id_user,id_post) values (?,?)";
	        try {
	            pst = connection.prepareStatement(sql);
	            pst.setInt(1, ((PostSaved) obj).getId_user());
	            pst.setInt(2, ((PostSaved) obj).getId_post());
	            pst.executeUpdate();
	        } catch (SQLException exp) {
	            System.out.println(exp.getMessage());
	        }
		}
	  // cette m�thode permet de r�cup�rer les posts enregistr�s 
	  
	  public  ArrayList<Integer> getPostSaved(int iduser){
	    	
		     ArrayList<Integer> ls = new ArrayList<Integer>();
	    	 
	         PreparedStatement pst = null;
	         ResultSet rs;
	         String sql = "select id_post from postsaved where id_user=?";
	         int i=0;
	     
	         try {
	 			 pst = connection.prepareStatement(sql);
	 			 pst.setInt(1, iduser);
	             rs = pst.executeQuery();
	            
	            
	             while (rs.next()) {
	            	
		            UserDaoImpl userDaoImpl = new UserDaoImpl();
	                ls.add(rs.getInt("id_post"));
	                 
	             }
	         } catch (SQLException exp) {
	             System.out.println(exp.getMessage());
	         }
	         return ls;
	     }
	  
	  public  Post getPost(int idpost){
	    	
	    	 ArrayList<Post> ls=new ArrayList<Post>();
	    	 Post post = null;
	         PreparedStatement pst = null;
	         ResultSet rs;
	         String sql = "select * from post where id=?";
	         
	     
	         try {
	 			 pst = connection.prepareStatement(sql);
	 			 pst.setInt(1, idpost);
	             rs = pst.executeQuery();
	             while (rs.next()) {
	            	
		           UserDaoImpl userDaoImpl = new UserDaoImpl();
	               post= new Post(rs.getInt("id"),rs.getInt("user"),rs.getString("name"),rs.getTimestamp("time"), rs.getString("content"), rs.getString("img"), rs.getString("typePost") );
	               
	             }
	         } catch (SQLException exp) {
	             System.out.println(exp.getMessage());
	         }
	         return post;
	    	 
	    	 
	     }
	  
	  public String getUsers(int user) {
			// TODO Auto-generated method stub
			List<Like> list = new ArrayList<Like>();
	        PreparedStatement pst = null;
	        ResultSet rs;
	        String value="";
	        String sql = "select u.username from user u,postsaved ps where ps.id_user=? and u.id=?";
	        try {
	            pst = connection.prepareStatement(sql);
	            
	            pst.setInt(1, user);
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
	  
	  // m�thode pour autoriser un utilisateur d'enregister un tel post une seule fois
	  
	  public int SaveUnique(int idpost,int iduser) {
			PreparedStatement pst = null;
	        ResultSet rs;
	        String sql = "select count(*) AS nombre from postsaved where id_post=? and id_user=?";
	        try {
	            pst = connection.prepareStatement(sql);
	            pst.setInt(1, idpost);
	            pst.setInt(2, iduser);
	            rs = pst.executeQuery();
	            if (rs.next()) {
	            	 System.out.println("nombre postsaved: "+rs.getInt("nombre"));
	                return rs.getInt("nombre");
	            }
	        } catch (SQLException exp) {
	            System.out.println(exp.getMessage());
	        }
	        return 1;
		}
	  

}