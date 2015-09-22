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
		       +"and to_date(toworktime,'YYYY-MM-DD ')>=to_date(?,'YYYY-MM-DD') "
		        +"and to_date(toworktime,'YYYY-MM-DD')<=to_date(?,'YYYY-MM-DD')  "
		        +"order by depttime   ";    

		
				return super.findBySQL(sql, starttime,endtime);
	}

}
