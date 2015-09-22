package com.csu.dao.xyb;

import java.util.HashMap;
import java.util.List;

import com.neu.dao.BaseDao;

public class FindNewDao extends BaseDao{
    //查找新进人员的信息的sql语句
	public List<HashMap<String, String>> findNewByTime(String starttime, String endtime, String deptname) {
		// TODO Auto-generated method stub
		String sql="select emp.emp_number,dept_name,job_name,emp_name,emp_sex,toworktime,education "
		        +"  from EMPINFO emp,JOB job,relationship rp  "  
		        +" where rp.emp_number=emp.emp_number and job.job_number=rp.job_number and job.dept_number=rp.dept_number  "
		        + " and to_date(toworktime,'yyyy-MM-dd')>=to_date(?,'yyyy-MM-dd') "
		        + " and to_date(toworktime,'yyyy-MM-dd')<=to_date(?,'yyyy-MM-dd')  "
		        +"  and dept_name=? "
		        +"  order by emp.emp_number ";    

		
				return super.findBySQL(sql, starttime,endtime,deptname);
	}

}
