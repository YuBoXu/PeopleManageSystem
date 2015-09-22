package com.csu.dao.xyb;

import java.util.HashMap;
import java.util.List;

import com.neu.dao.BaseDao;

public class MoveEmpDao extends BaseDao {

	public List<HashMap<String, String>> FindMoveDeptByTime(String starttime, String endtime) {
		// TODO Auto-generated method stub
		String sql="select olddept,newdept,emp_name,emp_sex,depttime,deptreason " 
		        +"from EMPINFO emp,Changeinfo ci "
		       +"where ci.emp_number=emp.emp_number " 
		       +"and to_date(depttime,'YYYY-MM-DD ')>=to_date(?,'YYYY-MM-DD') "
		        +"and to_date(depttime,'YYYY-MM-DD')<=to_date(?,'YYYY-MM-DD')  "
		        +"order by depttime   ";    

		
				return super.findBySQL(sql, starttime,endtime);
	}

	public List<HashMap<String, String>> FindMoveJobByTime(String starttime, String endtime) {
		// TODO Auto-generated method stub
		String sql="select newdept,oldjob,newjob,emp_name,emp_sex,jobtime,jobreason " 
		        +"from EMPINFO emp,Changeinfo ci "
		       +"where ci.emp_number=emp.emp_number " 
		       +"and to_date(jobtime,'YYYY-MM-DD ')>=to_date(?,'YYYY-MM-DD') "
		        +"and to_date(jobtime,'YYYY-MM-DD')<=to_date(?,'YYYY-MM-DD')  "
		        +"order by jobtime   ";    

		
				return super.findBySQL(sql, starttime,endtime);
	}

	public List<HashMap<String, String>> FindEmpToMove(String empid) {
		// TODO Auto-generated method stub
		String sql="select emp_number,emp_name,emp_sex,birthday,politic,emp_national,nativehome,idcard,marital,height,blood,phone,"
				+"birthplace,home,education,heightdegree,school,major,graduatedata,email "
				+"from  empinfo emp "
				+"where emp_number=? ";   

		
				return super.findBySQL(sql, empid);
	}

	public List<HashMap<String, String>> FindJobToMove(String empid) {
		// TODO Auto-generated method stub
		String sql="select rp.dept_number,rp.job_number,dept_name,job_name "
                          +"from relationship rp,job j "
                          +"where emp_number=? and rp.job_number=j.job_number";
		return super.findBySQL(sql, empid);
	}

}
