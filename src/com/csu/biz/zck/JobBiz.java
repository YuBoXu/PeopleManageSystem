package com.csu.biz.zck;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.csu.dao.zck.JobDao;

public class JobBiz {
	private JobDao dao;
	public JobBiz(){
		dao = new JobDao();
	}

	

	public void addJob(Map<String, String[]> map) {
		String name = map.get("jobname")[0];
		String type = map.get("select")[0];
		String count = map.get("size")[0];
		String limit = map.get("select2")[0];		
		dao.addJob(name, type, count, limit);
		
	}



	public List<HashMap<String, String>> findJobByPage(String page) {
		int pagenumber = Integer.parseInt(page);
		return dao.findJobByPage(pagenumber,10);
	}



	public List<HashMap<String, String>> findJobById(String number) {
		
		return dao.findJobById(number);
	}



	public int editJob(Map<String, String[]> map) {
		String number = map.get("jobid")[0];
		String name = map.get("jobname")[0];
		String type = map.get("select")[0];
		String deptname = map.get("deptId")[0];
		String count = map.get("size")[0];
		String limit = map.get("select2")[0];
		return dao.editJob(name,type,count,limit,deptname,number);
	}


	/**
	 * 
	 * @param jobnumber 岗位编号
	 * @return list
	 * 此方法用于查询岗位下的员工，
	 */
	public List<HashMap<String, String>> findJonEmpInfoByJobNumber(String jobnumber) {
		List<HashMap<String, String>> list= dao.findJonEmpInfoByJobNumber(jobnumber);
		return list;
	}



	/**
	 * 
	 * @return
	 * 得到分页数，每页10条记录
	 */
	public int getpagenumber() {
		int count = dao.getPageNumber();
		int sum= count%10==0?count/10:count/10+1;
		return sum;
	}

}
