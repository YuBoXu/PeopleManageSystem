package com.csu.dao.zck;

import java.util.HashMap;
import java.util.List;

import com.neu.dao.BaseDao;

public class JobDao extends BaseDao{
	/**
	 * 添加岗位信息
	 * @param name
	 * @param type
	 * @param count
	 * @param limit
	 * @return counts
	 */
	public int addJob(String name,String type,String count,String limit) {
		String sql="insert into job (job_number,job_name,job_type,job_count,job_limit)"
				+ " values (seq_job_id.nextval,?,?,?,?)";
		int counts =super.exeuteUpdate(sql, name,type,count,limit);
		return counts;
	}
	/**
	 * 按页查询岗位信息
	 * @param pageindex
	 * @param pageCount
	 * @return list
	 */
  public List<HashMap<String, String>> findJobByPage(int pageindex,int pageCount){
	/*  String sql = "select j.job_number,j.job_name,j.job_type,j.job_count,j.job_limit,d.dept_number,d.dept_name from job j "
	  		+ " left join relationship r on r.job_number=j.job_number and j.state=1 and r.state=1 "
	  		+ " left join dept d on d.dept_number=r.dept_number and d.state=1 order by j.job_number";*/
	 String sql="select * from "
	 		+ " (select a.*,rownum r from (select j.job_number,j.job_name,j.job_type,"
	 		+ " j.job_count,j.job_limit,d.dept_number,d.dept_name from job j left join relationship r "
	 		+ " on r.job_number=j.job_number and j.state=1 and r.state=1 left join dept d on "
	 		+ " d.dept_number=r.dept_number and d.state=1 order by j.job_number) a "
	 		+ " where rownum<=?) b  where r>?";
	 int min =(pageindex-1)*pageCount;
	 int max =pageindex*pageCount;
	  List<HashMap<String, String>> list = super.findBySQL(sql,max,min);
	  return list;
  }
  
  /**
   * 按照员工编号查询岗位信息
   * @param number
   * @return list
   */
public List<HashMap<String, String>> findJobById(String number) {
	String sql = "select *from job where state=1 and job_number=?";
	List<HashMap<String, String>> list = super.findBySQL(sql, number);
	return list;
}
/**
 * 编辑岗位信息
 * @param name
 * @param type
 * @param count
 * @param limit
 * @param deptname
 * @param number
 * @return row
 */
public int editJob(String name, String type, String count, String limit, String deptname, String number){
	String sql = "update job set job_name=?,job_type=?,job_count=?,"
			+ "job_limit=?,dept_name=? where job_number=?";
	int row = super.exeuteUpdate(sql, name,type,count,limit,deptname,number);
	return row;
}

/**
 * 
 * @param jobnumber 岗位编号
 * @return list
 * 此方法用于查询岗位下的员工，
 */
public List<HashMap<String, String>> findJonEmpInfoByJobNumber(String jobnumber) {
	String sql =" select * from  (select dept.dept_number,dept.dept_name,empinfo.*,job.job_number,job.job_name from "
			+ " empinfo,relationship,dept,job where empinfo.emp_number=relationship.emp_number and "
			+ " dept.dept_number=relationship.dept_number   and job.job_number=relationship.job_number) a,"
			+ " (select j.job_name,count(j.job_name) job_sum from job j left join relationship r on "
			+ " r.job_number=j.job_number group by j.job_name) b "
			+ " where a.job_name=b.job_name and a.job_number=?";
	List<HashMap<String, String>> list = super.findBySQL(sql, jobnumber);
	return list;
}

/**
 * 
 * @return count
 * 查询岗位的记录条数
 */
public int getPageNumber() {
	String sql="select count(*) quantity "
			+ " from job j left join relationship r on r.job_number=j.job_number "
			+ " and j.state=1 and r.state=1left join dept d on d.dept_number=r.dept_number "
			+ " and d.state=1 order by j.job_number";
	List<HashMap<String, String>> list = super.findBySQL(sql);
	HashMap<String, String> map = list.get(0);
	String quality = map.get("quantity");
	int count = Integer.parseInt(quality);
	return count;
}
}
