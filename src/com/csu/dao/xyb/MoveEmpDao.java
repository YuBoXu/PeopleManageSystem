package com.csu.dao.xyb;

import java.util.HashMap;
import java.util.List;

import com.neu.dao.BaseDao;
//员工调换信息
public class MoveEmpDao extends BaseDao {
    //查找员工调换部门信息
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
    //查找员工调换岗位信息
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

}
