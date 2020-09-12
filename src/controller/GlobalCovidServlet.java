package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.DBConnection;
import entity.Global;

@WebServlet("/Global")
public class GlobalCovidServlet extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		
		
	}
	
	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		if(req.getParameter("btnsubmit")!=null){
		
		
		try {
			PreparedStatement pst=DBConnection.getInstance().getConnection().prepareStatement("select * From globaldata where date_of_updated=?");
			pst.setDate(1,Date.valueOf(req.getParameter("date")));
			ResultSet r=pst.executeQuery();
			if(r.next()) {
				update(req,res);
			}
			else {
				insert(req,res);
			}
			
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		
		}
		
		
	}
	
	@Override
	public void doPut(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
	}
	
	@Override
	public void doDelete(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
	}
	
	public Global getAll() {
		
		try {
			PreparedStatement pst=DBConnection.getInstance().getConnection().prepareStatement("select * From globaldata");
			ResultSet r=pst.executeQuery();
			r.last();
			Global global=new Global(r.getDate(1),r.getString(2),r.getString(3),r.getString(4));
			return global;
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return null;
	}
	
	public void insert(HttpServletRequest req,HttpServletResponse res) throws IOException {
		try {
			PreparedStatement pst=DBConnection.getInstance().getConnection().prepareStatement("insert into globaldata values(?,?,?,?)");
			pst.setDate(1,Date.valueOf(req.getParameter("date")));
			pst.setString(2, req.getParameter("con"));
			pst.setString(3, req.getParameter("rec"));
			pst.setString(4, req.getParameter("death"));
			int i=pst.executeUpdate();
			
			
			if(i>0) {
				//res.setStatus(404);
				/*res.setContentType("text/html");
				PrintWriter writer=res.getWriter();
				writer.append("<center><h1>NEW RECORD ADDED SUCCESSFULLY</h1></center>");*/
				res.sendRedirect( "global.jsp?i=1" );
	           
			}
			else {
				/*res.setContentType("text/html");
				PrintWriter writer=res.getWriter();
				writer.append("<center><h1>Failed To Add the Record</h1><br></center>"
						+ "<a href=\\\"covid19/WebContent/global.jsp\\\"><button style=\\\"background-color: black; color:blue\\\">BACK</button></a>");
				writer.append("<a href=\"covid19/WebContent/global.jsp\"><button style=\"background-color: black; color:blue\">BACK</button></a>");
				res.setIntHeader("Refresh", 5);
				
				res.sendRedirect( "global.jsp?i=0" );*/
			}
			
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	}
	
	public void update(HttpServletRequest req,HttpServletResponse res) throws IOException {
		try {
			PreparedStatement pst=DBConnection.getInstance().getConnection().prepareStatement("UPDATE globaldata SET confirmed=?, recovered=?, death=? WHERE date_of_updated=?");
			 pst.setObject(1, req.getParameter("con"));
             pst.setObject(2, req.getParameter("rec"));
             pst.setObject(3, req.getParameter("death"));
             pst.setObject(4,Date.valueOf(req.getParameter("date")));
			
			
			int i=pst.executeUpdate();
			
			
			if(i>0) {
				//res.setStatus(404);
				/*res.setContentType("text/html");
				PrintWriter writer=res.getWriter();
				writer.append("<center><h1>NEW RECORD ADDED SUCCESSFULLY</h1></center>");*/
				res.sendRedirect( "global.jsp?i=1" );
	           
			}
			else {
				/*res.setContentType("text/html");
				PrintWriter writer=res.getWriter();
				writer.append("<center><h1>Failed To Add the Record</h1><br></center>"
						+ "<a href=\\\"covid19/WebContent/global.jsp\\\"><button style=\\\"background-color: black; color:blue\\\">BACK</button></a>");
				writer.append("<a href=\"covid19/WebContent/global.jsp\"><button style=\"background-color: black; color:blue\">BACK</button></a>");
				res.setIntHeader("Refresh", 5);*/
				
				res.sendRedirect( "global.jsp?i=0" );
			}
			
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	}
	

}
