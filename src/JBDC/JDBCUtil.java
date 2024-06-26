package JBDC;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class JDBCUtil {
	private static final String URL = "jdbc:mysql://localhost:3307/xsgame?useUnicode=true&characterEncoding=UTF8&serverTimezone=GMT";
	private static final String USER = "root";
	private static final String PASSWORD = "191024";
	private static Connection connection = null;
	
	// 只需要加载一次
	static {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * 获取JDBC连接对象
	 * @return
	 */
	public static Connection getConn() {
		try {
			// 当connection对象为null或被关闭时重新创建
			if(null == connection || connection.isClosed()) {
				connection = DriverManager.getConnection(URL, USER, PASSWORD);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return connection;
	}
	
	/**
	 * 关闭JDBC资源对象
	 * @param rs
	 * @param pstmt
	 * @param connection
	 */
	public static void close(ResultSet rs,PreparedStatement pstmt,Connection connection) {
		try {
			if(null != rs) {
				rs.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if(null != pstmt) {
					pstmt.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}finally {
				try {
					if(null != connection) {
						connection.close();
					}
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
	}

}
