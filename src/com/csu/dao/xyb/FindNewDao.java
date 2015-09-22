package com.csu.dao.xyb;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.neu.dao.BaseDao;

public class FindNewDao extends BaseDao{
    /**查找新进人员的信息
     * Sql语句
     * @param starttime
     * @param endtime
     * @param deptname
     * @return
     */
	public List<HashMap<String, String>> findNewByTime(String starttime, String endtime, String deptname,
			int pageindex,int pagecount) {
		// TODO Auto-generated method stub
		String sql="select emp.emp_number,dept_name,job_name,emp_name,emp_sex,toworktime,education "
		        +"  from EMPINFO emp,JOB job,relationship rp  "  
		        +" where rp.emp_number=emp.emp_number and job.job_number=rp.job_number and job.dept_number=rp.dept_number  "
		        + " and to_date(toworktime,'yyyy-MM-dd')>=to_date(?,'yyyy-MM-dd') "
		        + " and to_date(toworktime,'yyyy-MM-dd')<=to_date(?,'yyyy-MM-dd')  "
		        +"  and dept_name=? "
		        +"  order by emp.emp_number ";   
		int min = (pageindex-1)*pagecount;
		int max = pageindex*pagecount;
				
		String pagesql ="select * from (select rownum r, a.* from ("+sql+") a where rownum<=?) b where r>?";
		
		//		return super.findBySQL(sql, starttime,endtime,deptname);
		return super.findBySQL(pagesql, starttime,endtime,deptname,max,min);
	}

	
	public int getPageFindNewByTime(String starttime, String endtime, String deptname) {
		String sql="select count(*) quatity "
		        +"  from EMPINFO emp,JOB job,relationship rp  "  
		        +" where rp.emp_number=emp.emp_number and job.job_number=rp.job_number and job.dept_number=rp.dept_number  "
		        + " and to_date(toworktime,'yyyy-MM-dd')>=to_date(?,'yyyy-MM-dd') "
		        + " and to_date(toworktime,'yyyy-MM-dd')<=to_date(?,'yyyy-MM-dd')  "
		        +"  and dept_name=? "
		        +"  order by emp.emp_number ";  
		List<HashMap<String, String>> list = super.findBySQL(sql, starttime,endtime,deptname);
		int count = 0;
		if(!list.isEmpty()){
			Map<String, String> map = list.get(0);
			count=Integer.parseInt(map.get("quatity"));
		}
		return count;
	}

}
