package com.csu.dao.zck;

import java.util.HashMap;
import java.util.List;

import com.neu.dao.BaseDao;

public class DeptDao extends BaseDao{
	
	public int addDept(String number,String name,String type,String phone,String fax,String describe,String top,String date){
		String sql="insert into dept"
				+ " (dept_number,dept_name,dept_type,dept_phone,dept_fax,dept_describe,dept_top,dept_date)"
				+ " values (?,?,?,?,?,?,?,?)";
		int count = super.exeuteUpdate(sql,number,name,type,phone,fax,describe,top,date);
		return count;
	}

	public List<HashMap<String, String>> findDept(){
		String sql="select * from dept";
		List<HashMap<String, String>> list = super.findBySQL(sql);
		return list;
	}
	
	
}
