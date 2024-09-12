package com.net.admin.adminDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.net.admin.bean.AdminBean;
import com.net.admin.connect.Connect;
import com.net.student.bean.StudentBean;


public class AdminDAO {
	static Connection con = null;
	static PreparedStatement ps = null;
	static int rowCount = 0;
	static ResultSet rs = null;
	static int status = 0;

	public static int Register(AdminBean sb) {
		try {
			con = Connect.getConnection();
			String sql = "INSERT INTO adminlogin(name, email, uname, password) VALUES (?, ?, ?, ?)";
			ps = con.prepareStatement(sql);
						
			ps.setString(1, sb.getName());
			ps.setString(2, sb.getEmail());
			ps.setString(3, sb.getAuname());
			ps.setString(4, sb.getPassword());
			
			
			rowCount = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			}
		System.out.println("Hello");
		return rowCount;
	}
	
	public static int Login(AdminBean ab) {
		try {
			con = Connect.getConnection();
			String sql = "select * from adminlogin where uname = ? and password=?;";
			ps = con.prepareStatement(sql);
						
			ps.setString(1, ab.getAuname());
			ps.setString(2, ab.getPassword());			
		
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
	
	
	public static int Delete(String uname) {	
		try {
			con = Connect.getConnection();
			String sql = "delete from adminlogin where uname=?;";
	        ps=con.prepareStatement(sql);
	        
	        ps.setString(1, uname);

	        status = ps.executeUpdate();
	      } catch (Exception e) {
	            e.printStackTrace();
	     }		
			return status;	
	  }
	
	public static ResultSet AdminProfile(int aid) {	
		try {
			con = Connect.getConnection();
			String sql = "select name, email, uname, password from adminlogin where aid=?;";
			ps=con.prepareStatement(sql);
			
			ps.setInt(1, aid);
			
			rs = ps.executeQuery();
		} catch (Exception e) {
			e.printStackTrace();
		}		
		return rs;		
	}
	
	public static int ProfileUpdate(AdminBean ab, int aid ) {	
		try {
			con = Connect.getConnection();
			String sql = "update adminlogin set  name=?, email=?, uname=?, password=?  where aid=?;";
			ps=con.prepareStatement(sql);
			
			ps.setString(1, ab.getName());
			ps.setString(2, ab.getEmail());
			ps.setString(3, ab.getAuname());
			ps.setString(4, ab.getPassword());
			ps.setInt(5, aid);
			
			status = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}		
		return status;		
	}

	
	public static ResultSet ShowUpdate(int rollno) {	
		try {
			con = Connect.getConnection();
			String sql = "select name, email, dob, rollno, phno, skill, resume from student where rollno=?;";
	        ps=con.prepareStatement(sql);
	        
	        ps.setInt(1, rollno);

	        rs = ps.executeQuery();
	  } catch (Exception e) {
	            e.printStackTrace();
		}		
			return rs;		
		}
	
	public static int StudentUpdate(StudentBean sb, int rollno) {	
		try {
			con = Connect.getConnection();
			String sql = 
	"update student set  name=?, email=?, dob=?, rollno=?, phno=?, skill=? where rollno=?;";
	        ps=con.prepareStatement(sql);
	        
			ps.setString(1, sb.getName());
			ps.setString(2, sb.getEmail());
			ps.setString(3, sb.getDob());
			ps.setInt(4, sb.getRollno());
			ps.setString(5, sb.getPhno());
			ps.setString(6, sb.getSkill());
			ps.setInt(7, rollno);
//			ps.setString(8, sb.getResu());
			
	        status = ps.executeUpdate();
	      } catch (Exception e) {
	            e.printStackTrace();
	     }		
			return status;	
	  }
	
	public static int DeleteStudent(int rollno) {	
		try {
			con = Connect.getConnection();
			String sql = "delete from student where rollno=?;";
	        ps=con.prepareStatement(sql);
	        
	        ps.setInt(1, rollno);

	        status = ps.executeUpdate();
	      } catch (Exception e) {
	            e.printStackTrace();
	     }		
			return status;	
	  }
	
	public static int DeleteCompany(int id) {	
		try {
			con = Connect.getConnection();
			
			String sql = "delete from company where cid=?;";
	        ps=con.prepareStatement(sql);
	        
	        ps.setInt(1, id);

	        status = ps.executeUpdate();
	      } catch (Exception e) {
	            e.printStackTrace();
	     }		
			return status;	
	  }public static int DeleteApplied(int id) {	
			try {
				con = Connect.getConnection();
				
				String sql = "delete from applied where cid=?;";
		        ps=con.prepareStatement(sql);
		        
		        ps.setInt(1, id);

		        status = ps.executeUpdate();
		      } catch (Exception e) {
		            e.printStackTrace();
		     }		
				return status;	
		  }
	
	public static int AddStudent(StudentBean sb) {	
		try {
			con = Connect.getConnection();
			String sql = "insert into student (name, email, dob, rollno, phno, skill ) values(?,?,?,?,?,?);";
	        ps=con.prepareStatement(sql);
	        
	        ps.setString(1, sb.getName());
			ps.setString(2, sb.getEmail()); 
			ps.setString(3, sb.getDob());
			ps.setInt(4, sb.getRollno());
			ps.setString(5, sb.getPhno());
			ps.setString(6, sb.getSkill());

			status = ps.executeUpdate();
	  } catch (Exception e) {
	            e.printStackTrace();
		}		
			return status;		
		}
	
	public static ResultSet Getaid(String auname, String password) {	
		try {
			con = Connect.getConnection();
			String sql = "select aid from adminlogin where uname=? and password =? ;";
			ps=con.prepareStatement(sql);
			ps.setString(1, auname);
			ps.setString(2, password);
			
			 rs = ps.executeQuery();
		  } catch (Exception e) {
		            e.printStackTrace();
			}		
			return rs;		
		}
	
}

