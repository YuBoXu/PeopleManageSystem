package com.csu.dao.xyq;

import java.util.HashMap;
import java.util.List;

import com.neu.dao.BaseDao;

public class YgxxDao extends BaseDao {
	public HashMap<String, String> findYgxx(String idcard, String emp_number){
		String sql="select e.emp_number,e.emp_name,e.emp_sex,e.birthday,e.idcard,"
				+ "e.emptype,e.empfrom,e.politic,e.birthplace,e.phone,e.email,"
				+ "e.height,e.blood,e.marital,e.home,e.education,"
				+ "e.degree,e.school,e.major,e.language,e.languageskill,"
				+ "o.begintime,o.endtime,o.company,"
				+ "o.jobdescribe,o.position,o.salary,o.referencepeople,"
				+ "o.referenceposition,o.referencephone,o.explanation,"
				+ "sr.ralation,sr.sname,sr.job,sr.position,sr.phone,"
				+ "ss.emp_number,ss.job_number,"
				+ "j.job_number,j.job_name,j.dept_number,"
				+ "d.dept_number,d.dept_name"
				+ "from empInfo e"
				+ "inner join occupationcareer o on e.emp_number = o.emp_number"
				+ "inner join skstaff ss on e.emp_number  = ss.emp_number"
				+ "inner join job j on ss.job_number = j.job_number"
				+ "inner join dept d on j.dept_number = d.dept_number"
				+ "inner join societyrelation sr on sr.emp_number = e.emp_number"
				+ "where 1=1";
		if(idcard!=null){
			sql+=" and  idcard ="+idcard;
		}
		if(emp_number!=null){
			sql+=" and emp_number"+emp_number;
		}			
		
		List<HashMap<String, String>> list = super.findBySQL(sql);
		if(list!=null && list.size()>0){
			return list.get(0);
		}
		return null;
	}


}
