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
import entity.QuarantineCenter;

@WebServlet("/qc")
public class QuarantineCenterServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
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
						.prepareStatement("select * From qc where id=?");
				pst.setString(1, req.getParameter("qid"));
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
						.prepareStatement("delete From qc where id=?");
				pst.setString(1, req.getParameter("qid"));
				int i = pst.executeUpdate();
				if (i > 0) {
					res.sendRedirect("qc.jsp?q=1");
				} else {
					res.sendRedirect("qc.jsp?q=0");
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
					.prepareStatement("delete * FROM qc where id=?");
			pstm.setString(1, req.getParameter("qid"));
			int i = pstm.executeUpdate();
			if (i <= 0) {

			} else {

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	public ArrayList<QuarantineCenter> qcs1 = getAll();

	public ArrayList<QuarantineCenter> getAll() {
		ArrayList<QuarantineCenter> qcs = new ArrayList<QuarantineCenter>();
		try {
			PreparedStatement pst = DBConnection.getInstance().getConnection()
					.prepareStatement("select * From qc");
			ResultSet r = pst.executeQuery();
			while (r.next()) {
				QuarantineCenter qc = new QuarantineCenter(r.getString(1), r.getString(2), r.getString(3), r.getString(4),
						r.getString(5), r.getString(6), r.getString(7), r.getString(8), r.getString(9));
				qcs.add(qc);
			}

			return qcs;
		} catch (SQLException e) {

			e.printStackTrace();
		}
		return null;
	}

	public void insert(HttpServletRequest req, HttpServletResponse res) throws IOException {
		try {
			PreparedStatement pstm = DBConnection.getInstance().getConnection()
					.prepareStatement("insert into qc values(?,?,?,?,?,?,?,?,?)");
			pstm.setString(1, req.getParameter("qid"));
			pstm.setString(2, req.getParameter("qnm"));
			pstm.setString(3, req.getParameter("city"));
			pstm.setString(4, req.getParameter("dis").toString());
			pstm.setString(5, req.getParameter("head"));
			pstm.setString(6, req.getParameter("hcon"));
			pstm.setString(7, req.getParameter("qcon1"));
			pstm.setString(8, req.getParameter("qcon2"));
			pstm.setString(9, req.getParameter("capa"));
			
			

			int i = pstm.executeUpdate();

			if (i > 0) {
				// res.setStatus(404);
				/*
				 * res.setContentType("text/html"); PrintWriter writer=res.getWriter();
				 * writer.append("<center><h1>NEW RECORD ADDED SUCCESSFULLY</h1></center>");
				 */
				res.sendRedirect("qc.jsp?i=1");

			} else {
				/*
				 * res.setContentType("text/html"); PrintWriter writer=res.getWriter();
				 * writer.append("<center><h1>Failed To Add the Record</h1><br></center>" +
				 * "<a href=\\\"covid19/WebContent/global.jsp\\\"><button style=\\\"background-color: black; color:blue\\\">BACK</button></a>"
				 * ); writer.
				 * append("<a href=\"covid19/WebContent/global.jsp\"><button style=\"background-color: black; color:blue\">BACK</button></a>"
				 * ); res.setIntHeader("Refresh", 5);
				 */

				res.sendRedirect("qc.jsp?i=0");
			}

		} catch (SQLException e) {

			e.printStackTrace();
		}
	}

	public void update(HttpServletRequest req, HttpServletResponse res) throws IOException {
		try {
			PreparedStatement pstm = DBConnection.getInstance().getConnection().prepareStatement(
					"update qc set `name`=?,city=?,district=?,head=?,head_contact=?,center_contact1=?,center_contact2=?,capacity=? where id=?");
			pstm.setString(1, req.getParameter("qnm"));
			pstm.setString(2, req.getParameter("city"));
			pstm.setString(3, req.getParameter("dis").toString());
			pstm.setString(4, req.getParameter("head"));
			pstm.setString(5, req.getParameter("hcon"));
			pstm.setString(6, req.getParameter("qcon1"));
			pstm.setString(7, req.getParameter("qcon2"));
			pstm.setString(8, req.getParameter("capa"));
			pstm.setString(9, req.getParameter("qid"));
			

			int i = pstm.executeUpdate();

			if (i > 0) {
				// res.setStatus(404);
				/*
				 * res.setContentType("text/html"); PrintWriter writer=res.getWriter();
				 * writer.append("<center><h1>NEW RECORD ADDED SUCCESSFULLY</h1></center>");
				 */
				res.sendRedirect("qc.jsp?p=1");

			} else {
				/*
				 * res.setContentType("text/html"); PrintWriter writer=res.getWriter();
				 * writer.append("<center><h1>Failed To Add the Record</h1><br></center>" +
				 * "<a href=\\\"covid19/WebContent/global.jsp\\\"><button style=\\\"background-color: black; color:blue\\\">BACK</button></a>"
				 * ); writer.
				 * append("<a href=\"covid19/WebContent/global.jsp\"><button style=\"background-color: black; color:blue\">BACK</button></a>"
				 * ); res.setIntHeader("Refresh", 5);
				 */

				res.sendRedirect("qc.jsp?p=0");
			}

		} catch (SQLException e) {

			e.printStackTrace();
		}
	}

}
