package DAO;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Models.RDV;

public class RDVDaoImpl extends AbstractDAOA implements IDAO{

	@Override
	public void add(Object obj) {
		PreparedStatement pst = null;
        String sql = "insert into rdv (id_user,id_spec,gravite,dateRDV,lieuRDV) values (?,?,?,?,?)";
        try {
            pst = connection.prepareStatement(sql);
            pst.setInt(1,((RDV)obj).getId_user());
            pst.setInt(2,((RDV)obj).getId_spec());
            pst.setString(3, ((RDV)obj).getGravite());
            pst.setString(4,((RDV)obj).getDateRDV());
            pst.setString(5, ((RDV)obj).getLieuRDV());
            
            pst.executeUpdate();
            System.out.println("RDV cree");
        } catch (SQLException exp) {
            System.out.println(exp.getMessage());
        }		
	}

	@Override
	public void delete(int id) {
		PreparedStatement pst = null;
        String sql = "delete from rdv where id= ?";
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
		PreparedStatement pst = null;
        ResultSet rs;
        String sql = "select * from rdv where id= ?";
        try {
            pst = connection.prepareStatement(sql);
            pst.setInt(1, id);
            rs = pst.executeQuery();
            if (rs.next()) {
             
                return new RDV(rs.getInt("id"),rs.getInt("id_user"),rs.getInt("id_spec"),rs.getString("gravite"), rs.getString("dateRDV"), rs.getString("lieuRDV") );
            }
        } catch (SQLException exp) {
            System.out.println(exp.getMessage());
        }
        return null;
	}

	@Override
	public List getAll() {
		
		List<RDV> list = new ArrayList<RDV>();
        PreparedStatement pst = null;
        ResultSet rs;
        String sql = "select * from rdv";
        try {
            pst = connection.prepareStatement(sql);
            rs = pst.executeQuery();
            while (rs.next()) {
                list.add(new RDV(rs.getInt("id"),rs.getInt("id_user"),rs.getInt("id_spec"),rs.getString("gravite"), rs.getString("dateRDV"), rs.getString("lieuRDV") ));
            }
        } catch (SQLException exp) {
            System.out.println(exp.getMessage());
        }
        return list;
	}

}
