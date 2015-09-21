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
	  String sql = "select j.job_number,j.job_name,j.job_type,j.job_count,j.job_limit,d.dept_number,d.dept_name from job j "
	  		+ " left join relationship r on r.job_number=j.job_number and j.state=1 and r.state=1 "
	  		+ " left join dept d on d.dept_number=r.dept_number and d.state=1 order by j.job_number";
	  List<HashMap<String, String>> list = super.findBySQL(sql);
	  return list;
  }
  
  
public List<HashMap<String, String>> findJobById(String number) {
	String sql = "select *from job where state=1 and job_number=?";
	List<HashMap<String, String>> list = super.findBySQL(sql, number);
	return list;
}

public int editJob(String name, String type, String count, String limit, String deptname, String number){
	String sql = "update job set job_name=?,job_type=?,job_count=?,"
			+ "job_limit=?,dept_name=? where job_number=?";
	int row = super.exeuteUpdate(sql, name,type,count,limit,deptname,number);
	return row;
}
}
