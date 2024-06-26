package dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import JBDC.JDBCUtil;
import bean.Users;
import dao.IUserDao;

public class IUserDaoImpl implements IUserDao{

	@Override
	public int register(Users user) {
		// 把user对象插入到users表中，然后返回插入结果
		Connection conn = JDBCUtil.getConn();
		PreparedStatement pstmt = null;
		String sql = "insert into users(userName,password) value(?,?)";
		try { 
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user.getUserName());
			pstmt.setString(2, user.getPassword());
			int i = pstmt.executeUpdate();
			return i;
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JDBCUtil.close(null, pstmt, null);
		}
		return 0;
	}

	@Override
	public int login(Users user) {
		Connection conn = JDBCUtil.getConn();
		PreparedStatement pstmt = null;
		int uid = 0;
		String sql = "select uid from users where userName like ? and password = ? ";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user.getUserName());
			pstmt.setString(2, user.getPassword());
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				uid = rs.getInt("uid");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return uid;
	}
	
}
