package com.csu.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import com.mchange.v2.c3p0.ComboPooledDataSource;

public class JdbcUtils {
	// 配置文件的默认配置！要求你必须给出c3p0-config.xml！！！
	private static ComboPooledDataSource dataSource = new ComboPooledDataSource();

	/**
	 * 使用连接池返回一个连接对象
	 * 
	 * @return
	 * @throws SQLException
	 */
	public static Connection getConnection() throws SQLException {
		return dataSource.getConnection();
	}

	/**
	 * 返回连接池对象！
	 * 
	 * @return
	 */
	public static DataSource getDataSource() {
		return dataSource;
	}

	/**
	 * 
	 * @param conn
	 * @param stmt
	 * @param rst
	 *            关闭连接对象
	 */
	public static void close(Connection conn, PreparedStatement stmt, ResultSet rst) {

		if (rst != null) {
			try {
				rst.close();
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				rst = null;
			}
		}
		if (stmt != null) {
			try {
				stmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				stmt = null;
			}
		}
		if (conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				conn = null;
			}
		}
	}
}
