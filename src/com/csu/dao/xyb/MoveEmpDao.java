package com.csu.dao.xyb;

import java.security.cert.CertPathValidatorException.Reason;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.neu.dao.BaseDao;

public class MoveEmpDao extends BaseDao {
    /**
     * ����ʱ����Ҳ��ŵ�����Ա��Ϣ
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
	/**
	 * ���������ʱ��λ�ȡ��ҳ�Ĳ��ŵ�����Ϣ
	 * @param starttime
	 * @param endtime
	 * @return int
	 */
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
     * ����ʱ����Ҹ�λ������Ա��Ϣ
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
    /**
     * ���������ʱ��λ�ȡ��λ�����ķ�ҳ��Ϣ
     * @param starttime
     * @param endtime
     * @return int
     */
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
     * ����ʱ������е��������Ա����Ϣ
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
    /**
     * ����Ա����Ż�ȡ��λ������Ϣ
     * @param empid
     * @return List<HashMap<String, String>>
     */
	public List<HashMap<String, String>> FindJobToMove(String empid) {
		// TODO Auto-generated method stub
		String sql="select j.dept_number,rp.job_number,dept_name,job_name "
                          +"from relationship rp,job j "
                          +"where emp_number=? and rp.job_number=j.job_number";
	  
		return super.findBySQL(sql, empid);
	}

    /**
     * Ա��������Ϣ
     * @param empid
     * @param olddept_name
     * @param oldjob_name
     * @param newjob_number
     * @param move_type
     * @param move_reason
     * @param move_time
     * @param newdept_name
     * @param newdept_number
     * @param newjob_name
     * @return int
     */
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
//����������Ϣ.��
	/**
	 * �����µĸ�λ������Ϣ
	 * @param newjob_number
	 * @return List<HashMap<String, String>>
	 */
	public List<HashMap<String, String>> FindInfoToMove(String newjob_number) {
		// TODO Auto-generated method stub
		String sql="select dept_number,job_name "
                +"from job j "
                +"where job_number=? ";
		return  super.findBySQL(sql, newjob_number);
	}
    /**
     * �����ѵ���Ա����Ϣ
     * @param empid
     * @param emp_name
     * @param starttime
     * @param endtime
     * @param moveway
     * @param movereason
     * @param pageindex
     * @param pagecount
     * @return List<HashMap<String, String>>
     */
	public List<HashMap<String, String>> FindMovedEmp(String empid, String emp_name, String starttime, String endtime,
			String moveway, String movereason,int pageindex,int pagecount) {
		// TODO Auto-generated method stub
		String   SQL=null;
		StringBuffer sql = new StringBuffer("select ci.emp_number,ef.emp_name,ci.olddept,ci.oldjob,ci.newdept,ci.newjob,ci.depttime,ci.deptreason  "
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
		if(emp_name!=null&&!emp_name.trim().isEmpty()){
			add.append(" and emp_name="+"'"+emp_name+"'");		
		}
		if(moveway!=null&&!moveway.trim().isEmpty()){
			add.append(" and depttype="+"'"+moveway+"'");		
		}
		SQL=sql.append(add).toString();
		int min = (pageindex-1)*pagecount;
		int max = pageindex*pagecount;
		
		String pagesql = "select * from (select rownum r,a.* from ( "+ SQL +" ) a where rownum<=? ) b where r>?";
		return super.findBySQL(pagesql,max,min);
	}

    /**
     * ��ȡ��������ķ�ҳ��Ϣ
     * @param empid
     * @param emp_name
     * @param starttime
     * @param endtime
     * @param moveway
     * @param movereason
     * @return int
     */
	public int getPageFindMovedInfo(String empid, String emp_name, String starttime, String endtime, String moveway,
			String movereason) {
		String   SQL;
		StringBuffer sql = new StringBuffer("select count(*) quality  "
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
		if(emp_name!=null&&!emp_name.trim().isEmpty()){
			add.append(" and emp_name="+"'"+emp_name+"'");		
		}
		if(moveway!=null&&!moveway.trim().isEmpty()){
			add.append(" and depttype="+"'"+moveway+"'");		
		}
		SQL=sql.append(add).toString();
		List<HashMap<String, String>> list = super.findBySQL(SQL);
		int count = 0;
		if(!list.isEmpty()){
			HashMap<String, String> pagemap = list.get(0);
			count = Integer.parseInt(pagemap.get("quality"));
		}
		return count;
	}

}
