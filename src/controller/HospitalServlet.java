package controller;

import java.io.IOException;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.DBConnection;
import entity.Global;
import entity.Hospital;

@WebServlet("/hospital")
public class HospitalServlet extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		String action = req.getServletPath();
		System.out.println(action);

	}

	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		if (req.getParameter("btnSave") != null) {
			try {
				PreparedStatement pst = DBConnection.getInstance().getConnection()
						.prepareStatement("select * From hospital where id=?");
				pst.setString(1, req.getParameter("hid"));
				ResultSet r = pst.executeQuery();
				if (r.next()) {
					update(req, res);
				} else {
					insert(req, res);
				}

			} catch (SQLException e) {

				e.printStackTrace();
			}

		}

		if (req.getParameter("btnDel") != null) {
			try {
				PreparedStatement pst = DBConnection.getInstance().getConnection()
						.prepareStatement("delete From hospital where id=?");
				pst.setString(1, req.getParameter("hid"));
				int i = pst.executeUpdate();
				if (i > 0) {
					res.sendRedirect("hospital.jsp?q=1");
				} else {
					res.sendRedirect("hospital.jsp?q=0");
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

		try {
			PreparedStatement pstm = DBConnection.getInstance().getConnection()
					.prepareStatement("delete * FROM hospital where id=?");
			pstm.setString(1, req.getParameter("hid"));
			int i = pstm.executeUpdate();
			if (i <= 0) {

			} else {

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	public ArrayList<Hospital> hos = getAll();

	public ArrayList<Hospital> getAll() {
		ArrayList<Hospital> hospitals = new ArrayList<Hospital>();
		try {
			PreparedStatement pst = DBConnection.getInstance().getConnection()
					.prepareStatement("select * From hospital");
			ResultSet r = pst.executeQuery();
			while (r.next()) {
				Hospital hospital = new Hospital(r.getString(1), r.getString(2), r.getString(3), r.getString(4),
						r.getString(5), r.getString(6), r.getString(7), r.getString(8), r.getString(9), r.getString(10),
						r.getString(11));
				hospitals.add(hospital);
			}

			return hospitals;
		} catch (SQLException e) {

			e.printStackTrace();
		}
		return null;
	}

	public void insert(HttpServletRequest req, HttpServletResponse res) throws IOException {
		try {
			PreparedStatement pstm = DBConnection.getInstance().getConnection()
					.prepareStatement("insert into hospital values(?,?,?,?,?,?,?,?,?,?,?)");
			pstm.setString(1, req.getParameter("hid"));
			pstm.setString(2, req.getParameter("hnm"));
			pstm.setString(3, req.getParameter("city"));
			pstm.setString(4, req.getParameter("dis").toString());
			pstm.setString(5, req.getParameter("capa"));
			pstm.setString(6, req.getParameter("dir"));
			pstm.setString(7, req.getParameter("dircon"));
			pstm.setString(8, req.getParameter("hcon1"));
			pstm.setString(9, req.getParameter("hcon2"));
			pstm.setString(10, req.getParameter("fax"));
			pstm.setString(11, req.getParameter("emai"));

			int i = pstm.executeUpdate();

			if (i > 0) {
				// res.setStatus(404);
				/*
				 * res.setContentType("text/html"); PrintWriter writer=res.getWriter();
				 * writer.append("<center><h1>NEW RECORD ADDED SUCCESSFULLY</h1></center>");
				 */
				res.sendRedirect("hospital.jsp?i=1");

			} else {
				/*
				 * res.setContentType("text/html"); PrintWriter writer=res.getWriter();
				 * writer.append("<center><h1>Failed To Add the Record</h1><br></center>" +
				 * "<a href=\\\"covid19/WebContent/global.jsp\\\"><button style=\\\"background-color: black; color:blue\\\">BACK</button></a>"
				 * ); writer.
				 * append("<a href=\"covid19/WebContent/global.jsp\"><button style=\"background-color: black; color:blue\">BACK</button></a>"
				 * ); res.setIntHeader("Refresh", 5);
				 */

				res.sendRedirect("hospital.jsp?i=0");
			}

		} catch (SQLException e) {

			e.printStackTrace();
		}
	}

	public void update(HttpServletRequest req, HttpServletResponse res) throws IOException {
		try {
			PreparedStatement pstm = DBConnection.getInstance().getConnection().prepareStatement(
					"update hospital set `name`=?,city=?,district=?,capacity=?,director=?,director_contact_co=?,hospital_contact1=?,hospital_contact2=?,fax=?,email=? where id=?");
			pstm.setString(1, req.getParameter("hnm"));
			pstm.setString(2, req.getParameter("city"));
			pstm.setString(3, req.getParameter("dis").toString());
			pstm.setString(4, req.getParameter("capa"));
			pstm.setString(5, req.getParameter("dir"));
			pstm.setString(6, req.getParameter("dircon"));
			pstm.setString(7, req.getParameter("hcon1"));
			pstm.setString(8, req.getParameter("hcon2"));
			pstm.setString(9, req.getParameter("fax"));
			pstm.setString(10, req.getParameter("emai"));
			pstm.setString(11, req.getParameter("hid"));

			int i = pstm.executeUpdate();

			if (i > 0) {
				// res.setStatus(404);
				/*
				 * res.setContentType("text/html"); PrintWriter writer=res.getWriter();
				 * writer.append("<center><h1>NEW RECORD ADDED SUCCESSFULLY</h1></center>");
				 */
				res.sendRedirect("hospital.jsp?p=1");

			} else {
				/*
				 * res.setContentType("text/html"); PrintWriter writer=res.getWriter();
				 * writer.append("<center><h1>Failed To Add the Record</h1><br></center>" +
				 * "<a href=\\\"covid19/WebContent/global.jsp\\\"><button style=\\\"background-color: black; color:blue\\\">BACK</button></a>"
				 * ); writer.
				 * append("<a href=\"covid19/WebContent/global.jsp\"><button style=\"background-color: black; color:blue\">BACK</button></a>"
				 * ); res.setIntHeader("Refresh", 5);
				 */

				res.sendRedirect("hospital.jsp?p=0");
			}

		} catch (SQLException e) {

			e.printStackTrace();
		}
	}

}
