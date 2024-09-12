package com.net.story.storyDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.net.admin.connect.Connect;
import com.net.story.storyBean.StoryBean;

public class StoryDAO {
	static Connection con = null;
	static PreparedStatement ps = null;
	static int rowCount = 0;
	static ResultSet rs = null;
	static int status = 0;

	public static int NewStory(StoryBean sb) {
		try {
			con = Connect.getConnection();
			String sql = "INSERT INTO ss(sname, cname, position, octc, batch, experience) VALUES (?, ?, ?, ?, ?, ?)";
			ps = con.prepareStatement(sql);
						
			ps.setString(1, sb.getSname());
			ps.setString(2, sb.getCname());
			ps.setString(3, sb.getPosition());
			ps.setInt(4, sb.getOctc());
			ps.setString(5, sb.getBatch());
			ps.setString(6, sb.getExperience());
			
			
			rowCount = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			}
		return rowCount;
	}
	
	
	public static ResultSet UpdateStory(StoryBean sb, String sname) {
		try { 
			con = Connect.getConnection();
			String sql = 	"update ss set  sname=?, cname=?,  position=?, octc=?,  batch=?,  experience=?  where sname=?;";

			ps = con.prepareStatement(sql);
			
			ps.setString(1, sb.getSname());
			ps.setString(2, sb.getCname());
			ps.setString(3, sb.getPosition());
			ps.setInt(4, sb.getOctc());
			ps.setString(5, sb.getBatch());
			ps.setString(6, sb.getExperience());
			ps.setString(7, sname);
			
			
			rs = ps.executeQuery();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return rs;
	}
	
	
	public static ResultSet ViewStory() {
		try {
			con = Connect.getConnection();
			String sql = "select * from ss  ;";
			ps = con.prepareStatement(sql);

			rs = ps.executeQuery();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return rs;
	}
	
	
	public static int DeleteStory(int ssid) {
		try {
			con = Connect.getConnection();
			String sql = "delete from ss where ssid=? ;";
			ps = con.prepareStatement(sql);
			ps.setInt(1, ssid);

			rowCount = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			}
		return rowCount;
	}
	
}
