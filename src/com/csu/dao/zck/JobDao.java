package com.csu.dao.zck;

import java.util.HashMap;
import java.util.List;

import com.neu.dao.BaseDao;

public class JobDao extends BaseDao{
	public int addJob(String name,String type,String count,String limit) {
		String sql="insert into job (job_number,job_name,job_type,job_count,job_limit)"
				+ " values (seq_job_id.nextval,?,?,?,?)";
		int counts =super.exeuteUpdate(sql, name,type,count,limit);
		return counts;
	}
  public List<HashMap<String, String>> findAllJob(){
	  String sql = "select *from job where state=1";
	  List<HashMap<String, String>> list = super.findBySQL(sql);
	  return list;
  }
}
