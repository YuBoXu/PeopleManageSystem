package com.csu.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import com.mchange.v2.c3p0.ComboPooledDataSource;

public class JdbcUtils {
	// �����ļ���Ĭ�����ã�Ҫ����������c3p0-config.xml������
	private static ComboPooledDataSource dataSource = new ComboPooledDataSource();

	/**
	 * ʹ�����ӳط���һ�����Ӷ���
	 * 
	 * @return
	 * @throws SQLException
	 */
	public static Connection getConnection() throws SQLException {
		return dataSource.getConnection();
	}

	/**
	 * �������ӳض���
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
	 *            �ر����Ӷ���
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
