package com.csu.dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;


/**
 * 
 * @author Administrator
 * �������ݿ�Ĺ���
 * ��дsql����������
 */
public class BaseDao {
	private Connection conn;
	private PreparedStatement stmt;
	private ResultSet rst;
	
	public int exeuteUpdate(String sql,Object...args){
		int count=0;
		try {
			conn=JdbcUtils.getConnection();
			stmt=conn.prepareStatement(sql);
			if(args!=null){
				for(int i=0;i<args.length;i++){
					stmt.setObject(i+1, args[i]);
				}
			}
			count=stmt.executeUpdate();
		} catch (SQLException e) {
			throw new RuntimeException("ִ��sql�������",e);
		}finally{
			JdbcUtils.close(conn, stmt, rst);
		}
		return count;
	}
	
	//����Ҫ�ṩ������ֻ��Ҫsql���Ͳ�������
		public  List<HashMap<String, String>> findBySQL(String sql,
				Object...params){
//			<>��ʾ ���� 
//			�����������е�����
			List<HashMap<String, String>> list=
					new ArrayList<HashMap<String,String>>();
//			����ÿһ���е�ÿһ������
			HashMap<String, String> item=null;
			try {
				conn=JdbcUtils.getConnection();
				stmt=conn.prepareStatement(sql);
				if(params!=null){
					for(int i=0;i<params.length;i++){
						stmt.setObject(i+1, params[i]);
					}
				}
				rst=stmt.executeQuery();
				//���Ի�ȡ��ѯ������Ŀ
				ResultSetMetaData meta=rst.getMetaData();
				int count=meta.getColumnCount();
				String[] colNames=new String[count];
				for(int i=0;i<count;i++){
					colNames[i]=meta.getColumnName(i+1);
				}
				//System.out.println(Arrays.toString(colNames));
				while(rst.next()){
					item=new HashMap<String, String>();
					for(int i=0;i<count;i++){
						String value=rst.getString(colNames[i]);
						item.put(colNames[i].toLowerCase(), value);
					}
					list.add(item);
				}
			} catch (SQLException e) {
				throw new RuntimeException("ִ�в�ѯ�쳣", e);
			} finally{
				JdbcUtils.close(conn, stmt, rst);
			}
			return list;
		}
}
