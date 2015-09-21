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



	public List<HashMap<String, String>> findAllJob() {
		
		return dao.findAllJob();
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

}
