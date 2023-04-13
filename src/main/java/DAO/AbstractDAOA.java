package DAO;
import java.sql.Connection;

import Controller.SingleConnexion;


public class AbstractDAOA {
	protected static Connection connection = SingleConnexion.getConnection();
}
