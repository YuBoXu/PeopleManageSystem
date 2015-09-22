package com.csu.dao.zck;

import java.util.HashMap;
import java.util.List;

import com.neu.dao.BaseDao;

public class DeptDao extends BaseDao{
	/**
	 * 添加部门信息
	 * @param name
	 * @param type
	 * @param phone
	 * @param fax
	 * @param describe
	 * @param top
	 * @param date
	 * @return count
	 */
	public int addDept(String name,String type,String phone,String fax,String describe,String top,String date){
		String sql="insert into dept"
				+ " (dept_number,dept_name,dept_type,dept_phone,dept_fax,dept_describe,dept_top,dept_date)"
				+ " values (seq_dept_id.nextval,?,?,?,?,?,?,?)";
		int count = super.exeuteUpdate(sql,name,type,phone,fax,describe,top,date);
		return count;
	}

	/**
	 * 按页查找部门信息
	 * @param pageIndex 
	 * @param pageCount
	 * @return list
	 * 按分页查询
	 */
	public List<HashMap<String, String>> findDeptByPage(int pageIndex,int pageCount){
	//	String sql="select * from dept where state=1 order by dept_number";
		String sql ="select * from  "
				+ " (select rownum r ,a.* from "
				+ " (select * from dept where state=1) a where rownum<=?)"
				+ "  b where r>?";
		int min = (pageIndex-1)*pageCount;
		int max =pageIndex*pageCount;
		List<HashMap<String, String>> list = super.findBySQL(sql,max,min);
		return list;
	}
	/**
	 * 通过编号查找部门信息
	 * @param number
	 * @return list
	 */
	public List<HashMap<String, String>> findDeptById(String number){
		String sql="select * from dept where state=1 and dept_number=?";
		List<HashMap<String, String>> list = super.findBySQL(sql,number);
		return list;
	}
	/**
	 * 编辑部门信息
	 * @param number
	 * @param name
	 * @param type
	 * @param phone
	 * @param fax
	 * @param describe
	 * @param top
	 * @param date
	 * @return count
	 */
	public int editDept(String number, String name, String type, String phone, String fax, String describe, String top, String date){
		String sql="update dept set dept_name=?,dept_type=?,dept_phone=?,dept_fax=?,dept_describe=?,"
				+ "dept_top=?,dept_date=? where dept_number=?";
		int count = super.exeuteUpdate(sql, name,type,phone,fax,describe,top,date,number);
		return count;
	}

	
	/**
	 * 
	 * @param deptnumber 部门编号
	 * @return list
	 * 此方法用于查询部门下的员工，通过部门号查询部门下的员工
	 */
	public List<HashMap<String, String>> findDeptEmpInfoByDeptNumber(String deptnumber) {
		String sql=" select * from "
				+ " (select dept.dept_number,dept.dept_name,empinfo.*,job.job_number,job.job_name "
				+ " from empinfo,relationship,dept,job where empinfo.emp_number=relationship.emp_number "
				+ " and dept.dept_number=relationship.dept_number and job.job_number=relationship.job_number) a, "
				+ " (select d.dept_name,count(d.dept_name) dept_sum from dept d left join relationship r on "
				+ " r.dept_number=d.dept_number group by d.dept_name) b    "
				+ "  where a.dept_name=b.dept_name and a.dept_number=?";
		List<HashMap<String, String>> list = super.findBySQL(sql, deptnumber);
		return list;
	}

	/**
	 * 
	 * @return count
	 * 查询dept表中的记录数，查询有多少条记录
	 */
	public int getPageNumber() {
		String sql = " select count(*）quantity from dept";
		List<HashMap<String, String>> list = super.findBySQL(sql);
		HashMap<String, String> map = list.get(0);
		String quality = map.get("quantity");
		int count = Integer.parseInt(quality);
		return count;
	}

	public List<HashMap<String, String>> findDropDeptInfo(String deptnumbet) {
		//System.out.println(deptnumbet);
		/*String sql="select d.* from dept d,relationship r where d.state=1 and d.dept_number in ? and r.dept_number not in ? ";
		List<HashMap<String, String>> list = super.findBySQL(sql, deptnumbet,deptnumbet);*/
		/*String sql="select d.* from dept d,relationship r where "
				+ " d.state=1 and d.dept_number in "+deptnumbet+""
						+ "  and r.dept_number not in "+deptnumbet;*/
		String sql="select d.* from dept d where d.dept_number in"+deptnumbet+" and "
				+ " d.dept_number not in (select r.dept_number from  relationship r "
				+ " where r.dept_number in "+deptnumbet+")";
		
		List<HashMap<String, String>> list = super.findBySQL(sql);
		return list;
	}

	public int updateDeptInfo(String deptnumber) {
		String sql = " update dept set state=0 where dept_number=?";
		int row = super.exeuteUpdate(sql, deptnumber);
		return row;
	}
}
