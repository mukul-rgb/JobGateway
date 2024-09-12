package com.net.admin.connect;

import java.sql.Connection;
import java.sql.DriverManager;

import com.net.admin.provider.AProvider;

public class Connect implements AProvider {
	
	static Connection con = null;
	public static Connection getConnection() {
		try {
			Class.forName(dclass);
			con = DriverManager.getConnection(url, username, password);
		} catch (Exception e) {
				e.printStackTrace();
		}
		
		return con;
	}
}
 