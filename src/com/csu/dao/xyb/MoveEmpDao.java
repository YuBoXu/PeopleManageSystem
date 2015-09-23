package com.csu.dao.xyb;

import java.security.cert.CertPathValidatorException.Reason;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.neu.dao.BaseDao;

public class MoveEmpDao extends BaseDao {
    /**
     * 根据时间查找部门调动人员信息
     * @param starttime
     * @param endtime
     * @return List<HashMap<String, String>>
     */
	public List<HashMap<String, String>> FindMoveDeptByTime(String starttime, String endtime,
			int pageindex, int pagecount ) {
		// TODO Auto-generated method stub
		String sql="select olddept,newdept,emp_name,emp_sex,depttime,deptreason " 
		        +"from EMPINFO emp,Changeinfo ci "
		       +"where ci.emp_number=emp.emp_number " 
		       +"and to_date(depttime,'YYYY-MM-DD ')>=to_date(?,'YYYY-MM-DD') "
		        +"and to_date(depttime,'YYYY-MM-DD')<=to_date(?,'YYYY-MM-DD')  "
		        +"order by depttime   ";    

		
		//		return super.findBySQL(sql, starttime,endtime);
		int min = (pageindex-1)*pagecount;
		int max = pageindex*pagecount;
		String pagesql = "select * from (select rownum r,a.* from ("+sql+") a where rownum<=?) b "
				+ " where r>?";
		return super.findBySQL(pagesql, starttime,endtime,max,min);
	}
	
	public int getPageFindMoveDept(String starttime, String endtime) {
		String sql="select count(*) quality " 
		        +"from EMPINFO emp,Changeinfo ci "
		       +"where ci.emp_number=emp.emp_number " 
		       +"and to_date(depttime,'YYYY-MM-DD ')>=to_date(?,'YYYY-MM-DD') "
		        +"and to_date(depttime,'YYYY-MM-DD')<=to_date(?,'YYYY-MM-DD')  "
		        +"order by depttime   ";   
		List<HashMap<String, String>> list = super.findBySQL(sql, starttime,endtime);
		int sum = 0;
		if(!list.isEmpty()){
			Map<String, String> map = list.get(0);
			sum = Integer.parseInt(map.get("quality"));
		}
		return sum;
	}

	/**
     * 根据时间查找岗位调动人员信息
     * @param starttime
     * @param endtime
     * @return List<HashMap<String, String>>
     */
	public List<HashMap<String, String>> FindMoveJobByTime(String starttime, String endtime,
			int pageindex,int pagecount) {
		// TODO Auto-generated method stub
		String sql="select newdept,oldjob,newjob,emp_name,emp_sex,jobtime,jobreason " 
		        +"from EMPINFO emp,Changeinfo ci "
		       +"where ci.emp_number=emp.emp_number " 
		       +"and to_date(jobtime,'YYYY-MM-DD ')>=to_date(?,'YYYY-MM-DD') "
		        +"and to_date(jobtime,'YYYY-MM-DD')<=to_date(?,'YYYY-MM-DD')  "
		        +"order by jobtime   ";    

		
			//	return super.findBySQL(sql, starttime,endtime);
		int min = (pageindex-1)*pagecount;
		int max = pageindex*pagecount;
		String pagesql = "select * from (select rownum r, a.* from ("+sql+") a where rownum<=?) b where r>?";
		return super.findBySQL(pagesql, starttime,endtime,max,min);
	}

	public int getPageMovejob(String starttime, String endtime) {
		String sql="select count(*) quality " 
		        +"from EMPINFO emp,Changeinfo ci "
		       +"where ci.emp_number=emp.emp_number " 
		       +"and to_date(jobtime,'YYYY-MM-DD ')>=to_date(?,'YYYY-MM-DD') "
		        +"and to_date(jobtime,'YYYY-MM-DD')<=to_date(?,'YYYY-MM-DD')  "
		        +"order by jobtime   ";    
		List<HashMap<String, String>> list = super.findBySQL(sql, starttime,endtime);
		int number = 0;
		if(!list.isEmpty()){
			Map<String, String> map = list.get(0);
			number = Integer.parseInt(map.get("quality"));
		}
		return number;
	}
	

    /**
     * 根据时间查找有调动情况的员工信息
     * @param deptname
     * @param jobname
     * @param empid
     * @return List<HashMap<String, String>>
     */
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


	public int MoveEmp(String empid, String olddept_name, String oldjob_name, String newjob_number, String move_type,
			String move_reason, String move_time, String newdept_name, String newdept_number, String newjob_name) {
		// TODO Auto-generated method stub
		String sql="insert into changeinfo "
                           +"values(?,?,?,?,?,?,?,?,?,?,?,1,'1','1','1') ";
        String  sql2="update relationship "
                           +"set dept_number=? ,job_number=? "
                            +"where  emp_number=? ";
        int   result,tip1,tip2;
        tip1=super.exeuteUpdate(sql, empid,olddept_name,newdept_name,move_type,move_reason,move_time,oldjob_name,newjob_name,move_reason,move_type,move_time);
		tip2=super.exeuteUpdate(sql2, newdept_number,newjob_number,empid);
		result=tip1*tip2;
        return result;
	}
//查找其他信息.。
	public List<HashMap<String, String>> FindInfoToMove(String newjob_number) {
		// TODO Auto-generated method stub
		String sql="select dept_number,job_name "
                +"from job j "
                +"where job_number=? ";
		return  super.findBySQL(sql, newjob_number);
	}

	public List<HashMap<String, String>> FindMovedEmp(String empid, String emp_name, String starttime, String endtime,
			String moveway, String movereason) {
		// TODO Auto-generated method stub
		String   SQL;
		StringBuffer sql = new StringBuffer("select ci.emp_number,emp_name,olddept,oldjob,newdept,newjob,depttime,deptreason,depttime  "
				+ "from changeinfo ci,empinfo ef "
				+ "where  ci.emp_number=ef.emp_number ");
		StringBuffer add = new StringBuffer();
		if(empid!=null&&!empid.trim().isEmpty()){
			add.append(" and ci.emp_number="+"'"+empid+"'");		
		}
		if(starttime!=null&&endtime!=null&&!starttime.trim().isEmpty()&&!endtime.trim().isEmpty()){
			add.append(" and to_date(depttime,'yyyy-mm-dd')>=to_date('"+starttime+"','yyyy-mm-dd')  and to_date(depttime,'yyyy-mm-dd')<=to_date('"+endtime+"','yyyy-mm-dd')");		
					
		}
		if(movereason!=null&&!movereason.trim().isEmpty()){
			add.append(" and deptreason="+"'"+movereason+"'");		
		}
		if(moveway!=null&&!moveway.trim().isEmpty()){
			add.append(" and depttype="+"'"+moveway+"'");		
		}
		SQL=sql.append(add).toString();
		
		return super.findBySQL(SQL);
	}

}
