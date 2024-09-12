package com.net.company.companyDAO;

import java.sql.*;

import com.net.admin.connect.Connect;
import com.net.company.Bean.CompanyBean;
import com.net.student.bean.StudentBean;

public class CompanyDAO {
	
	static Connection con = null;
	static PreparedStatement ps = null;
	static int rowCount = 0;
	static ResultSet rs = null;
	static int status =0;

	public static int addCompany(CompanyBean cb) {
		try {
			con = Connect.getConnection();
			String sql = "insert into company (cname, requirement, location, role, ctc)  values(?,?,?,?,?);";
			ps = con.prepareStatement(sql);
						
			ps.setString(1, cb.getCname());
			ps.setString(2, cb.getRequirement());
			ps.setString(3, cb.getLocation());
			ps.setString(4, cb.getRole());
			ps.setString(5, cb.getCtc());
		
			rowCount = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			}
		return rowCount;
	}
	
	
	
	public static ResultSet Show() {	
		try {
			con = Connect.getConnection();
			String sql = "select * from company;";
	        ps=con.prepareStatement(sql);

	   rs = ps.executeQuery();
	  } catch (Exception e) {
	            e.printStackTrace();
		}		
			return rs;		
		}
	
	
	public static ResultSet ShowApplied() {	
		try {
			con = Connect.getConnection();
//			String sql = "SELECT c.cid, c.cname,c.requirement,c.location, c.role, c.ctc GROUP_CONCAT(a.sid ORDER BY a.sid SEPARATOR ', ')"+
//			"AS students FROM company c INNER JOIN applied a ON c.cid = a.cid GROUP BY c.cid, c.cname;";
			String sql = "SELECT c.cid, c.cname,  c.requirement, c.location,  c.role,c.ctc, GROUP_CONCAT(a.sid ORDER BY a.sid ASC) AS sid_list FROM company c INNER JOIN applied a ON c.cid = a.cid GROUP BY  c.cid, c.cname, c.requirement,  c.location, c.role, c.ctc;";
					
	        ps=con.prepareStatement(sql);

	   rs = ps.executeQuery();
	  } catch (Exception e) {
	            e.printStackTrace();
		}		
			return rs;		
		}
	
	
	public static ResultSet ShowUpdate(int cid) {	
		try {
			con = Connect.getConnection();
			String sql = "select cname, requirement, location, role, ctc from company where cid=?;";
	        ps=con.prepareStatement(sql);
	        
	        ps.setInt(1, cid);

	        rs = ps.executeQuery();
	  } catch (Exception e) {
	            e.printStackTrace();
		}		
			return rs;		
		}
	
	
	public static int CompanyUpdate(CompanyBean cb) {	
		try {
			con = Connect.getConnection();
			String sql = 
	"update company set  cname=?, requirement=?, location=?, role=?, ctc=? where cid=?;";
	        ps=con.prepareStatement(sql);
	        
	        ps.setString(1, cb.getCname());
			ps.setString(2, cb.getRequirement());
			ps.setString(3, cb.getLocation());
			ps.setString(4, cb.getRole());
			ps.setString(5, cb.getCtc());
			ps.setInt(6, cb.getCid());
		
			
	        status = ps.executeUpdate();
	      } catch (Exception e) {
	            e.printStackTrace();
	     }		
			return status;	
	  }
	
	public static int AddCompany(CompanyBean cb) {	
		try {
			con = Connect.getConnection();
			String sql = "insert into company (cname, requirement, location, role, ctc) values(?,?,?,?,?)";
	        ps=con.prepareStatement(sql);
	        
	        ps.setString(1, cb.getCname());
			ps.setString(2, cb.getRequirement());
			ps.setString(3, cb.getLocation());
			ps.setString(4, cb.getRole());
			ps.setString(5, cb.getCtc()); 

			status = ps.executeUpdate();
	  } catch (Exception e) {
	            e.printStackTrace();
		}		
			return status;		
		}
}
