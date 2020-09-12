package dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import dao.UserDAO;
import db.DBConnection;
import entity.User;

public class UserDAOImpl implements UserDAO {
	

	@Override
	public User getUser(String unm,String pwd) throws SQLException {
		/*Class.forName("com.mysql.jdbc.Driver");
		Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/covid19","root","root");*/
		Connection connection=DBConnection.getInstance().getConnection();
		PreparedStatement pstm=connection.prepareStatement("select * From user where unm=? AND pwd=?");
		pstm.setString(1, unm);
		pstm.setString(2, pwd);
		
		ResultSet r=pstm.executeQuery();
		if(r.next()) {
			System.out.println("exist");
			//return new User(r.getString(1),r.getString(2),r.getString(3),r.getString(4),r.getString(5),r.getString(6),r.getString(7),r.getString(8));
			return null;
		}
		else {
			return null;
		}
	}

}
