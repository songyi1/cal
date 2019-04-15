package jp.co.cal;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class OracleJDBC {
	Connection ora_conn = null;
	PreparedStatement ora_pstmt = null;

	public int Connection() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			System.err.println("error = " + e);
			System.exit(1);
		}
	
		final String URL = "jdbc:oracle:thin:@localhost:1521:orcl";
		final String ID = "system";
		final String PASS = "123456";
		
		try {
			ora_conn = DriverManager.getConnection(URL, ID, PASS);
		} catch (SQLException e) {
			System.err.println("sql error = " + e);
			System.exit(1);
		}
		return 0;
	}
	
	public int Login(){
		try {
			String query = null;
			ora_pstmt = ora_conn.prepareStatement(query);
			ResultSet ora_rs = ora_pstmt.executeQuery();
			while (ora_rs.next()) {
				String add = "(" + ora_rs.getString("zipcode") + " )";
				add += ora_rs.getString("sido") + " ";
				add += ora_rs.getString("gugun") + " ";
				add += ora_rs.getString("dong") + " ";
				String a = ora_rs.getString("r1");
				if (a != null && a.trim().length() != 0)
					add += a + " ";
				String b = ora_rs.getString("bunji");
				if (b != null && b.trim().length() != 0)
					add += b;
				System.out.println(add);
			}
		} catch (SQLException e) {
			System.err.println("sql error = " + e);
		}
		return 0;
	}
}