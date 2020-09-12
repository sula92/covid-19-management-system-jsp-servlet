package service.BOImpl;


import java.sql.SQLException;
import java.util.ArrayList;

import dao.UserDAO;
import dao.impl.UserDAOImpl;
import dto.UserDTO;
import entity.User;
import service.UserBO;

public class UserBOImpl implements UserBO {
	
	UserDAO userdao=new UserDAOImpl();

	@Override
	public UserDTO getUser(String unm,String pwd) {
		System.out.println("in bo");
		try {
			User u=userdao.getUser(unm, pwd);
			System.out.println(u.getName());
			if(!u.equals(null)) {
				System.out.println(u.getName());
				UserDTO udto=new UserDTO(u.getName(),u.getContact(),u.getEmail(),u.getUnm(),u.getPwd(),u.getRole(),u.getHospitalid(),u.getQcid());
				
				System.out.println(udto.getPwd());
				
				return udto;
				
			}
			else {
			 return null;	
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

}
