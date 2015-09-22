package com.csu.dao.zck;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.neu.dao.BaseDao;
import com.sun.org.apache.bcel.internal.generic.Select;

/**
 * 
 * @author ZhaoChangKui
 * 此类用于查询用户的信息，
 *
 */
public class EmpInfoDao extends BaseDao {

	public int addEmpInfo(String empname, String sex, String nation, String birthday, String idcard, String emptype,
			String empfrom, String politic, String birthplace, String nationalhome, String home, String phone,
			String email,String height, String blood, String marital, String education, String hightdegree, String school,
			String major, String graduatedate, String otherlanguage, String languageskill,String toworktime) {
		
		String sql="insert into empinfo (emp_number,emp_name,emp_sex,emp_national,birthday,idcard,emptype,empfrom,politic,birthplace,"
				+ "nativehome,home,phone,email,height,blood,marital,education,heightdegree,school,"
				+ "major,graduatedata,otherlanguage,languageskill,toworktime)values(seq_emp_id.nextval,?,?,?,?,?,?,?,?,?,"
				+ "?,?,?,?,?,?,?,?,?,?,"
				+ "?,?,?,?,?)";
		int row = super.exeuteUpdate(sql, empname,sex,nation,birthday,idcard,emptype,empfrom,politic,birthplace,nationalhome,
				home,phone,email,height,blood,marital,education,hightdegree,school,major,graduatedate,
				otherlanguage,languageskill,toworktime);
		return row;
	}

	/**
	 * 通过员工姓名查找员工信息
	 * @param empname
	 * @return list
	 */
	public List<HashMap<String, String>> findEmpByName(String empname) {
		String sql="select *from empinfo where emp_name=? and state=1";
		List<HashMap<String, String>> list = super.findBySQL(sql,empname);
		return list;
	}

	/**
	 * 添加员工信息与岗位表关联信息
	 * @param empnumber
	 * @param job_number
	 * @param starttime
	 * @param endtime
	 * @param other
	 * @param state
	 * @return row
	 */
	public int addTemporaryInfo(String empnumber,String job_number, String starttime, String endtime, String other,String state) {
		String sql ="insert into temporaryinfo (emp_number,job_number,begintime,endtime,explanation,trystate) values (?,?,?,?,?,?)";
		int row = super.exeuteUpdate(sql, empnumber,job_number,starttime,endtime,other,state);
		return row;
	}

    /**
     * 添加职业生涯信息
     * @param empnumber
     * @param begintime
     * @param lasttime
     * @param company
     * @param jobdescribe
     * @param position
     * @param slary
     * @param referencepeople
     * @param referenceposition
     * @param referencephone
     * @param explannation
     * @return row
     */
	public int addOccupationCareer(String empnumber, String begintime, String lasttime, String company,
			String jobdescribe, String position, String slary, String referencepeople, String referenceposition,
			String referencephone, String explannation) {
		
		String sql="insert into occupationcareer (emp_number,begintime,endtime,company,jobdescribe,position,salary,referencepeople,referenceposition,referencephone,explanation)"
				+ " values(?,?,?,?,?,?,?,?,?,?,?)";
		int row = super.exeuteUpdate(sql, empnumber,begintime,lasttime,company,jobdescribe,position,slary,referencepeople,
				referenceposition,referencephone,explannation);
		return row;
		
	}

    /**
     * 添加社会关系信息
     * @param empnumber
     * @param ralation
     * @param ralationname
     * @param ralationjob
     * @param ralationposition
     * @param ralationphone
     * @return row
     */
	public int addSocialRelation(String empnumber, String ralation, String ralationname, String ralationjob,
			String ralationposition, String ralationphone) {
		String sql ="insert into societyrelation (ralation,sname,job,position,phone,emp_number) values"
				+ " (?,?,?,?,?,?)";
		int row = super.exeuteUpdate(sql, ralation,ralationname,ralationjob,ralationposition,ralationphone,empnumber);
		return row;
		
	}
    /**
     * 向关系表中添加员工
     * 部门和岗位的关系
     * @param empnumber
     * @param deptnumber
     * @param jobnumber
     * @return row
     */
	public int addRelationship(String empnumber, String deptnumber, String jobnumber) {
			String sql="insert into relationship (emp_number,dept_number,job_number) values (?,?,?)";
			int row = super.exeuteUpdate(sql, empnumber,deptnumber,jobnumber);
			return row;
		}
    /**
     * 添加正式员工
     * @param jobnumber
     * @param starttime
     * @param empfrom
     * @param empnumber
     * @param state
     * @return row
     */
	public int addSkstaff(String jobnumber, String starttime, String empfrom, String empnumber,String state) {
		String sql = "insert into skstaff (job_number,cometime,peoplefrom,emp_number,workstate) values(?,?,?,?,?)";
		int row = super.exeuteUpdate(sql, jobnumber,starttime,empfrom,empnumber,state);
		return row;
	}
    /**
     * 通过编号查找员工信息
     * @param id
     * @return list
     */
	public List<HashMap<String, String>> findEmpByIdCard(String id) {
		String sql ="select * from empinfo where state=1 and idcard=?";
		List<HashMap<String, String>> list = super.findBySQL(sql, id);
		return list;
	}

    /**
     * 通过编号查找社会关系
     * @param number
     * @return list
     */
	public List<HashMap<String, String>> findRelationByNumber(String number) {
		String sql ="select * from societyrelation where state = 1 and emp_number=?";
		List<HashMap<String, String>> list = super.findBySQL(sql, number);
		return list;
	}

    /**
     * 通过编号查找员工职业生涯信息
     * @param number
     * @return list
     */
	public List<HashMap<String, String>> findOccupationByNumber(String number) {
		String sql = "select * from occupationcareer where state = 1 and emp_number=?";
		List<HashMap<String, String>> list = super.findBySQL(sql, number);
		return list;
	}

	/**
	 * 
	 * @param number
	 * @param name
	 * @param starttime
	 * @param endtime
	 * @param pageindex
	 * @param pagecount
	 * @return
	 * 按条件   分页进行查询
	 */
	public List<HashMap<String, String>> findTemporaeyEmpInfo(String number, String name, String starttime, String endtime,int pageindex,int pagecount) {
		StringBuffer sql=new StringBuffer("select e.emp_number,e.emp_name,d.dept_name,j.job_name,t.trystate,t.begintime,t.endtime "
				+ " from empinfo e,job j,dept d,temporaryinfo t,relationship r "
				+ " where e.emp_number=t.emp_number and e.emp_number=r.emp_number and "
				+ " t.emp_number=r.emp_number and j.job_number=r.job_number and d.dept_number=r.dept_number ");
		StringBuilder addsql = new StringBuilder();
		List<Object> parement = new ArrayList<>();
		if (number != null && !number.trim().isEmpty()) {
			addsql.append(" and e.emp_number="+number);
			parement.add(number);
		}
		if(name != null && !name.trim().isEmpty()){
			addsql.append(" and e.emp_name like "+"'%"+name+"%'");
			parement.add("%"+name+"%");
		}
		if(starttime != null && !starttime.trim().isEmpty()){
			addsql.append(" and t.begintime="+"'"+starttime+"'");
			parement.add(starttime);
		}
		if(endtime != null && !endtime.trim().isEmpty()){
			addsql.append(" and t.endtime="+"'"+endtime+"'");
			parement.add(endtime);
		}
		
//		System.out.println(sql.append(addsql).toString());
	//	System.out.println(parement.toString());
		int min=(pageindex-1)*pagecount;
		int max=pageindex*pagecount;
		String allsql = sql.append(addsql).toString();
		String finallysal ="select * from (select rownum r,a.* from ("+allsql+") a where rownum<=?) b where r>?" ;
	//	List<HashMap<String, String>> list = super.findBySQL(sql.append(addsql).toString());
		List<HashMap<String, String>> list = super.findBySQL(finallysal,max,min);
		return list;
	}

	/**
	 * 
	 * @return count
	 * 查询记录数
	 */
	public int getEmppagenumber(String number, String name, String starttime, String endtime) {
		StringBuffer sql=new StringBuffer("select count(*) quantity "
				+ " from empinfo e,job j,dept d,temporaryinfo t,relationship r "
				+ " where e.emp_number=t.emp_number and e.emp_number=r.emp_number and "
				+ " t.emp_number=r.emp_number and j.job_number=r.job_number and d.dept_number=r.dept_number ");
		StringBuilder addsql = new StringBuilder();
		List<Object> parement = new ArrayList<>();
		if (number != null && !number.trim().isEmpty()) {
			addsql.append(" and e.emp_number="+number);
			parement.add(number);
		}
		if(name != null && !name.trim().isEmpty()){
			addsql.append(" and e.emp_name like "+"'%"+name+"%'");
			parement.add("%"+name+"%");
		}
		if(starttime != null && !starttime.trim().isEmpty()){
			addsql.append(" and t.begintime="+"'"+starttime+"'");
			parement.add(starttime);
		}
		if(endtime != null && !endtime.trim().isEmpty()){
			addsql.append(" and t.endtime="+"'"+endtime+"'");
			parement.add(endtime);
		}
		
		List<HashMap<String, String>> list = super.findBySQL(sql.append(addsql).toString());
		int count = 0;
		if(!list.isEmpty()){
		Map<String, String> map = list.get(0);
		String quantity = map.get("quantity");
		count = Integer.parseInt(quantity);
		}
		return count;
	}

    /**
     * 通过员工编号查找员工信息与岗位表关联信息表
     * @param number
     * @return list
     */
	public List<HashMap<String, String>> findTemporaryInfoByNumber(String number) {
		String sql ="select * from temporaryinfo where state=1 and emp_number=?";
		List<HashMap<String, String>> list = super.findBySQL(sql, number);
		return list;
	}

	/**
	 * 修改试用表，添加考核结果
	 * @param state
	 * @param dealtime
	 * @param reslut
	 * @param explanation
	 * @param number
	 * @return row
	 */
	public int editTemproryInfo(String state, String dealtime, String reslut, String explanation, String number) {
		String sql = "update temporaryinfo set trystate=?,dealtime=?,checkresult=?,checkexplanation=? where emp_number=?";
		int row = super.exeuteUpdate(sql, state, dealtime, reslut, explanation, number);
		return row;
	}
    /**
     * 通过员工编号查找员工信息
     * @param number
     * @return list
     */
	public List<HashMap<String, String>> findEmpByNumber(String number) {
		String sql = "select e.emp_number,e.empfrom,r.job_number  from empinfo e,relationship r  where e.emp_number=r.emp_number and e.emp_number=?";
		List<HashMap<String, String>> list = super.findBySQL(sql, number);
		return list;
	}

    /**
     * 添加员工信息与岗位表关联信息
     * @param jobnumber
     * @param empfrom
     * @param number
     * @param dealtime
     * @param state
     * @return row
     */
	public int addEmpSkstaff(String jobnumber, String empfrom, String number,String dealtime,String state) {
		String sql="insert into skstaff (job_number,cometime,peoplefrom,emp_number,workstate) values(?,?,?,?,?)";
		int row = super.exeuteUpdate(sql,jobnumber,dealtime,empfrom,number,state);
		return row;
	}

	/**
	 * 
	 * @param number
	 * @param name
	 * @param deptname
	 * @param time
	 * @param pageindex
	 * @param pagecount
	 * @return list
	 * 
	 * 按分页、条件查询
	 */
	public List<HashMap<String, String>> findSkStaffEmp(String number, String name, String deptname, String time,int pageindex,int pagecount) {
		StringBuffer sql = new StringBuffer("select e.emp_number,e.emp_name,d.dept_name,j.job_name,t.begintime,t.endtime,s.cometime "
				+ " from empinfo e,job j,dept d,temporaryinfo t,relationship r,skstaff s "
				+ " where e.emp_number=t.emp_number and e.emp_number=r.emp_number and e.emp_number=s.emp_number "
				+ " and t.emp_number=r.emp_number and t.emp_number=s.emp_number and r.emp_number=s.emp_number and "
				+ " j.job_number = r.job_number and j.job_number=s.job_number and r.job_number=s.job_number and "
				+ " d.dept_number=r.dept_number and t.trystate='转正' ");
		StringBuffer add = new StringBuffer();
		if(number!=null && !number.trim().isEmpty()){
			add.append(" and e.emp_number= "+number);
		}
		if(name!=null && !name.trim().isEmpty()){
			add.append(" and e.emp_name like "+"'%"+name+"%'");
		}
		if(deptname!=null && !deptname.trim().isEmpty()){
			add.append(" and d.dept_name= "+"'"+deptname+"'");
		}
		if(time!=null && !time.trim().isEmpty()){
			add.append(" and s.cometime= "+"'"+time+"'");
		}
		
		int min = (pageindex-1)*pagecount;
		int max =pageindex*pagecount;
		String allsql = sql.append(add).toString();
		String finalsql="select * from (select rownum r,a.* from ("+allsql+") a where rownum<=?) b where r>?";
//System.out.println(sql.append(add).toString());		
		List<HashMap<String, String>> list = super.findBySQL(finalsql,max,min);
		return list;
	}

	/**
	 * 
	 * @param number
	 * @param name
	 * @param deptname
	 * @param time
	 * @return count
	 * 查询转正员工的记录数
	 */
	public int getSkStaffpagenumber(String number, String name, String deptname, String time) {
		StringBuffer sql = new StringBuffer("select count(*) quantity "
				+ " from empinfo e,job j,dept d,temporaryinfo t,relationship r,skstaff s "
				+ " where e.emp_number=t.emp_number and e.emp_number=r.emp_number and e.emp_number=s.emp_number "
				+ " and t.emp_number=r.emp_number and t.emp_number=s.emp_number and r.emp_number=s.emp_number and "
				+ " j.job_number = r.job_number and j.job_number=s.job_number and r.job_number=s.job_number and "
				+ " d.dept_number=r.dept_number and t.trystate='转正' ");
		StringBuffer add = new StringBuffer();
		if(number!=null && !number.trim().isEmpty()){
			add.append(" and e.emp_number= "+number);
		}
		if(name!=null && !name.trim().isEmpty()){
			add.append(" and e.emp_name like "+"'%"+name+"%'");
		}
		if(deptname!=null && !deptname.trim().isEmpty()){
			add.append(" and d.dept_name= "+"'"+deptname+"'");
		}
		if(time!=null && !time.trim().isEmpty()){
			add.append(" and s.cometime= "+"'"+time+"'");
		}
		
		List<HashMap<String, String>> list = super.findBySQL(sql.append(add).toString());
		int count = 0;
		if(!list.isEmpty()){
		Map<String, String> map = list.get(0);
		String quantity = map.get("quantity");
		count = Integer.parseInt(quantity);
		}
		return count;
	}



	

	

	

}
