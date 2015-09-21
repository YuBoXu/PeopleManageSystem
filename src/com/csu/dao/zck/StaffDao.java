package com.csu.dao.zck;

import java.util.HashMap;
import java.util.List;

import com.neu.dao.BaseDao;

public class StaffDao extends BaseDao {

	public List<HashMap<String, String>> findLeavingInfo(String deptnumber, String deptname, String empnumber,
			String empname) {
		StringBuffer sql = new StringBuffer("select e.emp_name,e.emp_number,e.idcard,d.dept_name,d.dept_number,r.job_number from "
				+ " empinfo e,dept d,relationship r,skstaff s where e.emp_number=r.emp_number and "
				+ " e.emp_number=s.emp_number and d.dept_number=r.dept_number and r.job_number=s.job_number "
				+ " and s.workstate='Õý³£' ");
		StringBuffer add = new StringBuffer();
		/*List<String> params = new ArrayList<>();	
		if( deptname!=null && !deptname.trim().isEmpty()){
			add.append(" and d.dept_name=? ");
			params.add(deptname);
		}
		if( deptnumber!=null && !deptnumber.trim().isEmpty()){
			add.append(" and d.dept_number=? ");
			params.add(deptnumber);
		}
		if( empnumber!=null && !empnumber.trim().isEmpty()){
			add.append(" and e.emp_number=? ");
			params.add(empnumber);
		}
		if( empname!=null && !empname.trim().isEmpty()){
			add.append(" add e.emp_name like ?");
			params.add("%"+empname+"%");
		}*/
//System.out.println(sql.append(add).toString());	
//System.out.println(params.toString());
		if( deptname!=null && !deptname.trim().isEmpty()){
			add.append(" and d.dept_name= "+"'"+deptname+"'");		
		}
		if( deptnumber!=null && !deptnumber.trim().isEmpty()){
			add.append(" and d.dept_number= "+"'"+deptnumber+"'");			
		}
		if( empnumber!=null && !empnumber.trim().isEmpty()){
			add.append(" and e.emp_number= "+"'"+empnumber+"'");
		}
		if( empname!=null && !empname.trim().isEmpty()){
			add.append(" and e.emp_name like  "+"'%"+empname+"%'");
			}
//	System.out.println(sql.append(add).toString());
		List<HashMap<String, String>> list = super.findBySQL(sql.append(add).toString());
		return list;
	}

	
	public int leavingOperate(String empnumber, String jobnumber, String place, String leavetime, String reason,
			String radiobutton) {
		String sql = "insert into leave (emp_number,jobid,place,leave_time,reason,peoplelibrary) values(?,?,?,?,?,?)";
		int row =super.exeuteUpdate(sql, empnumber,jobnumber,place,leavetime,reason,radiobutton);
		return row;
	}

	public int updateSkStaffInfo(String empnumber, String string) {
		String sql="update skstaff set workstate=? where emp_number=?";
		int row = super.exeuteUpdate(sql, string,empnumber);
		return row;
	}


	public List<HashMap<String, String>> findLeavingInfoByEmpNumber(String empnumber) {
		String sql = "select e.*,d.dept_name,j.job_name,j.job_number,s.cometime from "
				+ " empinfo e,dept d,job j,relationship r,skstaff s where e.emp_number=r.emp_number "
				+ " and e.emp_number=s.emp_number and d.dept_number=r.dept_number and "
				+ " j.job_number=r.job_number and j.job_number=s.job_number and "
				+ " r.emp_number=s.emp_number and r.job_number=s.job_number and e.emp_number=?";
		
		List<HashMap<String, String>> list = super.findBySQL(sql, empnumber);
		return list;
	}


	public List<HashMap<String, String>> findLeavedEmpInfo(String empnumber, String empname, String deptname,
			String jobname, String leavtype) {
		StringBuffer sql = new StringBuffer("select e.*,d.dept_name,j.job_name,j.job_number,s.cometime,l.leave_time,l.place,l.reason, l.peoplelibrary from "
				+ " empinfo e,dept d,job j,relationship r,skstaff s,leave l where e.emp_number=r.emp_number and e.emp_number=s.emp_number "
				+ " and e.emp_number=l.emp_number and r.emp_number=s.emp_number and j.job_number=r.job_number and j.job_number=s.job_number  "
				+ " and r.job_number=s.job_number and r.job_number=l.jobid and d.dept_number=r.dept_number ");
		StringBuffer add = new StringBuffer();
		if( empnumber!=null && !empnumber.trim().isEmpty()){
			add.append(" and e.emp_number= "+"'"+empnumber+"'");
		}
		if(empname!=null && !empname.trim().isEmpty()){
			add.append(" and e.emp_name= "+"'"+empname+"'");
		}
		if( deptname!=null && !deptname.trim().isEmpty()){
			add.append(" and d.dept_name=  "+"'"+deptname+"'");
		}
		if( jobname!=null && !jobname.trim().isEmpty()){
			add.append(" and j.job_name= "+"'"+jobname+"'");
		}
		if( leavtype!=null && !leavtype.trim().isEmpty()){
			add.append(" and l.reason= "+"'"+leavtype+"'");
		}
System.err.println(sql.append(add).toString());		
		List<HashMap<String, String>> list = super.findBySQL(sql.append(add).toString());
		return list;
	}

}
