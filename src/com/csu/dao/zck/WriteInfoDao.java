package com.csu.dao.zck;

import java.util.HashMap;
import java.util.List;

import com.csu.dao.BaseDao;

public class WriteInfoDao extends BaseDao{

	public List<HashMap<String, String>> findDept() {
		String sql = "select dept_number,dept_name from dept where state=1 order by dept_number";
		return super.findBySQL(sql);
	}

	public List<HashMap<String, String>> findJob() {
		String sql ="select job_number,job_name from job where state=1 order by job_number";
		return super.findBySQL(sql);
	}

}
