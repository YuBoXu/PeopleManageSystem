package com.csu.dao.zck;

import com.neu.dao.BaseDao;

public class JobDao extends BaseDao{
	public int addJob(String name,String type,String count,String limit) {
		String sql="insert into job (job_number,job_name,job_type,job_count,job_limit)"
				+ " values (seq_job_id.nextval,?,?,?,?)";
		int counts =super.exeuteUpdate(sql, name,type,count,limit);
		return counts;
	}

}
