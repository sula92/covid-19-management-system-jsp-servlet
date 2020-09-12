package controller;

import java.io.IOException;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserDAO;
import dao.impl.UserDAOImpl;
import db.DBConnection;
import dto.UserDTO;
import javafx.scene.control.Alert;
import javafx.scene.control.Alert.AlertType;
import service.UserBO;
import service.BOImpl.UserBOImpl;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	
	UserBO userbo=new UserBOImpl();
	
	public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException {
		
		System.out.println("XXXXX");
		
		
		HttpSession session=req.getSession();
		String unm=(String) req.getParameter("unm");
		String pwd=(String) req.getParameter("pwd");

		
       System.out.println(unm);	
       System.out.println(pwd);	
		
		UserDTO u=userbo.getUser(unm, pwd);
		System.out.println(u.getRole());
		if(!u.equals(null)) {
			
			String usernm=u.getUnm();
			String pswd=u.getUnm();
			String role=u.getUnm();
			
			session.setAttribute(unm,u.getUnm());
			session.setAttribute(pwd, u.getPwd());
			session.setAttribute(pwd, u.getRole());
			res.sendRedirect("dashboard.jsp");
		}
		else {
			res.sendRedirect("index.jsp");
			
		}
		
	}
	
	

}
