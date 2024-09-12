package com.net.student.studentDAO;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.net.admin.connect.Connect;
import com.net.student.bean.StudentBean;


public class StudentDAO {
	static Connection con = null;
	static PreparedStatement ps = null;
	static int rowCount = 0;
	static ResultSet rs = null;
	static int status =0;

	public static int Register(StudentBean sb) {
		try {
			con = Connect.getConnection();
			String sql = "insert into student values(?,?,?,?,?,?,?);";
			ps = con.prepareStatement(sql);
						
			ps.setInt(1, sb.getSid());
			ps.setString(2, sb.getName());
			ps.setString(3, sb.getEmail());
			ps.setString(4, sb.getDob());
			ps.setInt(5, sb.getRollno());
			ps.setString(6, sb.getPhno());
			ps.setString(7, sb.getSkill());
//			ps.setString(8, sb.getResu());
			
			
			rowCount = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			}
		return rowCount;
	}
	
	public static int Login(StudentBean sb) {
		try {
			con = Connect.getConnection();
			String sql = "select * from student where rollno = ? and dob=?";
			ps = con.prepareStatement(sql);
			ps.setInt(1, sb.getRollno());
			ps.setString(2,sb.getDob());	
		
			rs = ps.executeQuery();
			if(rs.next()) {
				rowCount = 1;
			}
			else {
				rowCount = 0;
			}
		} catch (Exception e) {
			e.printStackTrace();
			}
		
		return rowCount;
	}
	
//	public static int asd(StudentBean sb) {
//		try {
//			con = Connect.getConnection();
//			String sql = "select * from student where rollno = ? and dob=?";
//			ps = con.prepareStatement(sql);
//						
//			ps.setInt(1, sb.getRollno());
////			ps.setDate(2, (Date) sb.getDob());	
//			java.sql.Date sqlDob = new java.sql.Date(sb.getDob().getTime());
//	        ps.setDate(2, sqlDob);
//		
//			rs = ps.executeQuery();
//			
//			if(rs.next()) {
//				rowCount = 1;
//			}
//			else {
//				rowCount = 0;
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//			}
//		
//		return rowCount;
//	}
	
	public static ResultSet Show() {	
		try {
			con = Connect.getConnection();
			String sql = "select * from student;";
	        ps=con.prepareStatement(sql);

	   rs = ps.executeQuery();
	  } catch (Exception e) {
	            e.printStackTrace();
		}		
		return rs;		
	}
	
	
	public static int Update(StudentBean sb) {	
		try {
			con = Connect.getConnection();
			String sql = 
	"update student set  name=?, email=?, dob=?, rollno=?,phno=?,skill=? where rollno=?;";
	        ps=con.prepareStatement(sql);
	        
			ps.setString(1, sb.getName());
			ps.setString(2, sb.getEmail());
			ps.setString(3, sb.getDob());
			ps.setInt(4, sb.getRollno());
			ps.setString(5, sb.getPhno());
			ps.setString(6, sb.getSkill());
			ps.setInt(7, sb.getRollno());
//			ps.setString(8, sb.getResu());
			
	        status = ps.executeUpdate();
	      } catch (Exception e) {
	            e.printStackTrace();
	     }		
			return status;	
	  }
	
	public static int Exist(int cid , int sid) {	
		try {
			con = Connect.getConnection();
			String sql = "select * from applied where cid=? and sid=?;";
	        ps=con.prepareStatement(sql);
			ps.setInt(1, cid);
			ps.setInt(2, sid);

			rs = ps.executeQuery();
			
			if(rs.next()) {
				rowCount = 1;
			}
			else {
				rowCount = 0;
			}
		} catch (Exception e) {
			e.printStackTrace();
			}
		
		return rowCount;
	}
	
	public static int Apply(int cid, int sid) {	
		try {
			con = Connect.getConnection();
			String sql = "insert into applied values(?,?);";
	        ps=con.prepareStatement(sql);
			ps.setInt(1, cid);
			ps.setInt(2, sid);

	   status = ps.executeUpdate();
	  } catch (Exception e) {
	            e.printStackTrace();
		}		
			return status;		
		}
	
	public static int Remove(int cid, int sid) {	
		try {
			con = Connect.getConnection();
			String sql = "delete from applied where cid=? and sid=?;";
			ps=con.prepareStatement(sql);
			ps.setInt(1, cid);
			ps.setInt(2, sid);
			
			status = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}		
		return status;		
	}
	
	
	public static ResultSet Getsid(int rollno) {	
		try {
			con = Connect.getConnection();
			String sql = "select sid from student where rollno=?;";
			ps=con.prepareStatement(sql);
			ps.setInt(1, rollno);
			
			 rs = ps.executeQuery();
		  } catch (Exception e) {
		            e.printStackTrace();
			}		
			return rs;		
		}
	
	public static ResultSet StudentProfile(int sid) {	
		try {
			con = Connect.getConnection();
			String sql = "select name, email, dob, rollno, phno, skill, resume where sid=?";
			ps=con.prepareStatement(sql);
			
			ps.setInt(1, sid);
			
			rs = ps.executeQuery();
		} catch (Exception e) {
			e.printStackTrace();
		}		
		return rs;		
	}
		
}