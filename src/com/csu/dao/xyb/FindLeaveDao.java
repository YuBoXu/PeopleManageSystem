package com.csu.dao.xyb;

import java.util.HashMap;
import java.util.List;

import com.neu.dao.BaseDao;

public class FindLeaveDao extends BaseDao{
    //查找离职人员信息
	public List<HashMap<String, String>> findLeaveByTime(String starttime, String endtime, String deptname) {
		// TODO Auto-generated method stub
		String sql="select lv.emp_number,place,job_name,emp_name,emp_sex,leave_time,reason "
        +"from EMPINFO emp,LEAVE lv,JOB job "  
        +"where emp.emp_number=lv.emp_number and job.job_number=lv.jobid "
        + "and to_date(leave_time,'YYYY-MM-DD ')>=to_date(?,'YYYY-MM-DD') "
        + "and to_date(leave_time,'YYYY-MM-DD')<=to_date(?,'YYYY-MM-DD') "
        +"and place=? "
        +"order by lv.emp_number";                                                      

		return super.findBySQL(sql, starttime,endtime,deptname);

	}

}
