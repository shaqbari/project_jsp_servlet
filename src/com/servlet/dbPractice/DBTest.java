package com.servlet.dbPractice;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "dbtest", description = "5.1배운거 복습", urlPatterns = { "/dbtest" })
public class DBTest extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	String driver="oracle.jdbc.driver.OracleDriver";
	String url="jdbc:oracle:thin:@192.168.1.150:1521:XE";
	String user="bread";
	String password="bread";
	
	Connection con;
	PreparedStatement pstmt;
	ResultSet rs;
	
    public DBTest() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/plain;charset=UTF-8");
	
		
		PrintWriter out=response.getWriter();
		out.print("랄라");
		
		try {
			Class.forName(driver);
			
			con=DriverManager.getConnection(url, user, password);
			if (con!=null) {
				out.print("접속성공");
			}
			String sql="select * from room_option";
			pstmt=con.prepareStatement(sql);
			rs=pstmt.executeQuery();
			
			while(rs.next()){
				out.println(rs.getString("room_option_name"));
				
			}
						
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (rs!=null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (pstmt!=null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		
	}

}
