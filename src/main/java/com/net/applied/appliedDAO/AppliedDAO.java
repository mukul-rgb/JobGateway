package com.net.applied.appliedDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.net.admin.connect.Connect;

public class AppliedDAO {
	static Connection con = null;
	static PreparedStatement ps = null;
	static int rowCount = 0;
	static ResultSet rs = null;
	static int status = 0;
	
	public static int NewCompany(int cid) {
		try {
			con = Connect.getConnection();
			String sql = "INSERT INTO applied (cid) VALUES (?)";
			ps = con.prepareStatement(sql);
						
			ps.setInt(1, cid);
			
			rowCount = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			}
		return rowCount;
	}

	
	
}
