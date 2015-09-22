package com.csu.dao.xyb;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.neu.dao.BaseDao;

public class FindLeaveDao extends BaseDao{
    /**查找离职人员信息
     * 
     * @param starttime
     * @param endtime
     * @param deptname
     * @return
     */
	public List<HashMap<String, String>> findLeaveByTime(String starttime, String endtime, String deptname,
			int pageindex,int pagecount) {
		// TODO Auto-generated method stub
		String sql="select lv.emp_number,place,job_name,emp_name,emp_sex,leave_time,reason "
        +"from EMPINFO emp,LEAVE lv,JOB job "  
        +"where emp.emp_number=lv.emp_number and job.job_number=lv.jobid "
        + "and to_date(leave_time,'YYYY-MM-DD ')>=to_date(?,'YYYY-MM-DD') "
        + "and to_date(leave_time,'YYYY-MM-DD')<=to_date(?,'YYYY-MM-DD') "
        +"and place=? "
        +"order by lv.emp_number";                                                      

	//	return super.findBySQL(sql, starttime,endtime,deptname);
		int min =(pageindex-1)*pagecount;
		int max = pageindex*pagecount;
		String pagesql = "select * from (select rownum r,a.* from ("+sql+") a where rownum<=?) b "
				+ " where r>?";
		return super.findBySQL(pagesql, starttime,endtime,deptname,max,min);

	}

	public int getLeavePageNumber(String starttime, String endtime, String deptname) {
		String sql = "select count(*) quality "
		        +"from EMPINFO emp,LEAVE lv,JOB job "  
		        +"where emp.emp_number=lv.emp_number and job.job_number=lv.jobid "
		        + "and to_date(leave_time,'YYYY-MM-DD ')>=to_date(?,'YYYY-MM-DD') "
		        + "and to_date(leave_time,'YYYY-MM-DD')<=to_date(?,'YYYY-MM-DD') "
		        +"and place=? "
		        +"order by lv.emp_number";
		List<HashMap<String, String>> list = super.findBySQL(sql, starttime,endtime,deptname);		
		int sum=0;
		if (!list.isEmpty()) {
			Map<String, String> map = list.get(0);
			String quality = map.get("quality");
			sum = Integer.parseInt(quality);
		}
		return sum;
	}

}
