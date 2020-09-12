package controller;

import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.DBConnection;
import entity.Hospital;
import entity.User;

@WebServlet("/user")
public class UserServlet extends HttpServlet {
	

	@Override
	protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uid=req.getParameter("id");
	try {
		PreparedStatement pst=DBConnection.getInstance().getConnection().prepareStatement("delete from user where userid=?");
		pst.setString(1, uid);
		int i=pst.executeUpdate();
		if(i>0) {
			resp.sendRedirect("user.jsp?x=1");
		}
		else {
			resp.sendRedirect("user.jsp?x=0");
		}
	} catch (SQLException e) {
		
		e.printStackTrace();
	}
	
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		if (req.getParameter("btnSave") != null) {
			try {
				PreparedStatement pst = DBConnection.getInstance().getConnection()
						.prepareStatement("select * From user where unm=?");
				pst.setString(1, req.getParameter("unm"));
				ResultSet r = pst.executeQuery();
				if (r.next()) {
					System.out.println("user");
					update(req, resp);
				} else {
					insert(req, resp);
				}

			} catch (SQLException e) {

				e.printStackTrace();
			}

		}

		
	}

	@Override
	protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPut(req, resp);
	}
	
	
	public void insert(HttpServletRequest req, HttpServletResponse res) throws IOException {
		try {
			PreparedStatement pstm = DBConnection.getInstance().getConnection()
					.prepareStatement("insert into user values(?,?,?,?,?,?,?,?,?)");
			pstm.setString(1, "");
			pstm.setString(2, req.getParameter("nm"));
			pstm.setString(3, req.getParameter("con"));
			pstm.setString(4, req.getParameter("emai"));
			pstm.setString(5, req.getParameter("unm"));
			pstm.setString(6, req.getParameter("pwd"));
			pstm.setString(7, req.getParameter("role"));
			
			
			String role=req.getParameter("role");
			
			if(role.equalsIgnoreCase("admin") || role.equalsIgnoreCase("pstf") ) {
				pstm.setString(8,"");
				pstm.setString(9,"");
				
			}
			else if(role.equalsIgnoreCase("Hospital-IT")) {
				pstm.setString(8,req.getParameter("wplace"));
				pstm.setString(9,"");
			}
			else {
				pstm.setString(8,"");
				pstm.setString(9,req.getParameter("wplace"));
			}
			

			int i = pstm.executeUpdate();

			if (i > 0) {
				// res.setStatus(404);
				/*
				 * res.setContentType("text/html"); PrintWriter writer=res.getWriter();
				 * writer.append("<center><h1>NEW RECORD ADDED SUCCESSFULLY</h1></center>");
				 */
				res.sendRedirect("user.jsp?i=1");

			} else {
				/*
				 * res.setContentType("text/html"); PrintWriter writer=res.getWriter();
				 * writer.append("<center><h1>Failed To Add the Record</h1><br></center>" +
				 * "<a href=\\\"covid19/WebContent/global.jsp\\\"><button style=\\\"background-color: black; color:blue\\\">BACK</button></a>"
				 * ); writer.
				 * append("<a href=\"covid19/WebContent/global.jsp\"><button style=\"background-color: black; color:blue\">BACK</button></a>"
				 * ); res.setIntHeader("Refresh", 5);
				 */

				res.sendRedirect("user.jsp?i=0");
			}

		} catch (SQLException e) {

			e.printStackTrace();
		}
	}
	
	
	public void update(HttpServletRequest req, HttpServletResponse res) throws IOException {
		try {
			PreparedStatement pstm = DBConnection.getInstance().getConnection().prepareStatement(
					"update user set `contact`=?,email=?,name=?,pwd=?,role=?,hospitalid=?,qcid=? where unm=?");
			
			pstm.setString(8, req.getParameter("unm"));
			pstm.setString(1, req.getParameter("con"));
			pstm.setString(2, req.getParameter("emai"));
			pstm.setString(3, req.getParameter("nm"));
			pstm.setString(4, req.getParameter("pwd"));
			pstm.setString(5, req.getParameter("role"));
			
            String role=req.getParameter("role");
			
			if(role.equalsIgnoreCase("admin") || role.equalsIgnoreCase("pstf") ) {
				pstm.setString(6,"");
				pstm.setString(7,"");
				
			}
			else if(role.equalsIgnoreCase("Hospital-IT")) {
				pstm.setString(6,req.getParameter("wplace"));
				pstm.setString(7,"");
			}
			else {
				pstm.setString(6,"");
				pstm.setString(7,req.getParameter("wplace"));
			}

			int i = pstm.executeUpdate();

			if (i > 0) {
				// res.setStatus(404);
				/*
				 * res.setContentType("text/html"); PrintWriter writer=res.getWriter();
				 * writer.append("<center><h1>NEW RECORD ADDED SUCCESSFULLY</h1></center>");
				 */
				res.sendRedirect("user.jsp?p=1");

			} else {
				/*
				 * res.setContentType("text/html"); PrintWriter writer=res.getWriter();
				 * writer.append("<center><h1>Failed To Add the Record</h1><br></center>" +
				 * "<a href=\\\"covid19/WebContent/global.jsp\\\"><button style=\\\"background-color: black; color:blue\\\">BACK</button></a>"
				 * ); writer.
				 * append("<a href=\"covid19/WebContent/global.jsp\"><button style=\"background-color: black; color:blue\">BACK</button></a>"
				 * ); res.setIntHeader("Refresh", 5);
				 */

				res.sendRedirect("user.jsp?p=0");
			}

		} catch (SQLException e) {

			e.printStackTrace();
		}
	}
	

	
	public ArrayList<User> getAll() {
		ArrayList<User> users = new ArrayList<User>();
		try {
			PreparedStatement pst = DBConnection.getInstance().getConnection()
					.prepareStatement("select * From user");
			ResultSet r = pst.executeQuery();
			while (r.next()) {
				User u = new User(r.getString(1), r.getString(2), r.getString(3), r.getString(4),
						r.getString(5), r.getString(6), r.getString(7), r.getString(8),r.getString(9));
				users.add(u);
			}

			return users;
		} catch (SQLException e) {

			e.printStackTrace();
		}
		return null;
	}
}
