package dao;
import java.sql.SQLException;

import entity.User;

public interface UserDAO {
	
	public User getUser(String unm, String pwd) throws SQLException;
		
}
