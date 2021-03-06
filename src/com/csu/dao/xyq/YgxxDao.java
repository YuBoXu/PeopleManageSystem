package com.csu.dao.xyq;

import java.util.HashMap;
import java.util.List;

import com.neu.dao.BaseDao;
/**
 * 
 * @author xiongyuqiong
 *在职员工查询 dao文件  
 */
public class YgxxDao extends BaseDao {
	public List<HashMap<String, String>> findYgxx(String idcard, String emp_number){
		/*String sql="select e.emp_number,e.emp_name,e.emp_sex,e.birthday,e.idcard,"
				+ "e.emptype,e.empfrom,e.politic,e.birthplace,e.phone,e.email,"
				+ "e.height,e.blood,e.marital,e.home,e.education,e.native,e.national"
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
				+ "where 1=1";*/
		
		String sql="  select e.*,d.dept_name,j.job_name,o.*,s.* from empinfo e "
				+ " inner join  occupationcareer o on e.emp_number=o.emp_number "
				+ " inner join  societyrelation s on e.emp_number=s.emp_number   "
				+ " inner join relationship r on r.emp_number =e.emp_number "
				+ " inner join dept d on r.dept_number=d.dept_number  "
				+ " inner join job j on j.job_number=r.job_number ";
		if(idcard!=null){
			sql+=" and  idcard ="+"'"+idcard+"'";
		}
		if(emp_number!=null){
			sql+=" and emp_number"+"'"+emp_number+"'";
		}			
		
		List<HashMap<String, String>> list = super.findBySQL(sql);
		return list;
	}

	public List<HashMap<String, String>> findEmpByIdCard(String id) {
		String sql ="select * from empinfo where state=1 and idcard=?";
		List<HashMap<String, String>> list = super.findBySQL(sql, id);
		return list;
	}

	public List<HashMap<String, String>> findRelationByNumber(String number) {
		String sql ="select * from societyrelation where state = 1 and emp_number=?";
		List<HashMap<String, String>> list = super.findBySQL(sql, number);
		return list;
	}

	public List<HashMap<String, String>> findOccupationByNumber(String number) {
		String sql = "select * from occupationcareer where state = 1 and emp_number=?";
		List<HashMap<String, String>> list = super.findBySQL(sql, number);
		return list;
	}


}
