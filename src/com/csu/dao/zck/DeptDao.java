package com.csu.dao.zck;

import java.util.HashMap;
import java.util.List;

import com.neu.dao.BaseDao;

public class DeptDao extends BaseDao{
	
	public int addDept(String name,String type,String phone,String fax,String describe,String top,String date){
		String sql="insert into dept"
				+ " (dept_number,dept_name,dept_type,dept_phone,dept_fax,dept_describe,dept_top,dept_date)"
				+ " values (seq_dept_id.nextval,?,?,?,?,?,?,?)";
		int count = super.exeuteUpdate(sql,name,type,phone,fax,describe,top,date);
		return count;
	}

	public List<HashMap<String, String>> findDept(){
		String sql="select * from dept where state=1 order by dept_number";
		List<HashMap<String, String>> list = super.findBySQL(sql);
		return list;
	}
	
	public List<HashMap<String, String>> findDeptById(String number){
		String sql="select * from dept where state=1 and dept_number=?";
		List<HashMap<String, String>> list = super.findBySQL(sql,number);
		return list;
	}
	
	public int editDept(String number, String name, String type, String phone, String fax, String describe, String top, String date){
		String sql="update dept set dept_name=?,dept_type=?,dept_phone=?,dept_fax=?,dept_describe=?,"
				+ "dept_top=?,dept_date=? where dept_number=?";
		int count = super.exeuteUpdate(sql, name,type,phone,fax,describe,top,date,number);
		return count;
	}
}
