package service;

import dto.UserDTO;

public interface UserBO {
	
	public UserDTO getUser(String unm,String pwd);
}
