package com.csu.dao.zck;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.csu.dao.BaseDao;

public class EmailDao extends BaseDao {

	public String sendEmail(String number, String name) {
		StringBuffer sql = new StringBuffer("select email from empinfo where state=1  ");
		StringBuffer add = new StringBuffer();
		if(number!=null && !number.trim().isEmpty()){
			add.append(" and emp_number= "+number);
		}
		if(name!=null && !name.trim().isEmpty()){
			add.append(" and emp_name= "+"'"+name+"'");
		}
		String finasql = sql.append(add).toString();
		List<HashMap<String, String>> list = super.findBySQL(finasql);
		String email= null;
		if(!list.isEmpty()){
			Map<String, String> map = list.get(0);
			 email = map.get("email");
		}
		return email;
	}

	public List<HashMap<String, String>> sendAllEmail() {
		String sql = "select email from empinfo where state=1  ";
		List<HashMap<String, String>> list = super.findBySQL(sql);
		
		return list;
	}

}
