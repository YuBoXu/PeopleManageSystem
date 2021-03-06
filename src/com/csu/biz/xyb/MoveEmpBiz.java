package com.csu.biz.xyb;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.csu.dao.xyb.MoveEmpDao;
public class MoveEmpBiz {
private MoveEmpDao dao;
	
	public MoveEmpBiz(){
		dao=new MoveEmpDao();
	}
    /**
     * 查找调换部门人员信息
     * @param map
     * @return List<HashMap<String, String>>
     */
	public List<HashMap<String, String>> FindMoveDeptByTime(Map<String, String[]> map,String page) {
		// TODO Auto-generated method stub
        String starttime=map.get("starttime")[0];	
		String endtime=map.get("endtime")[0];
		int pageindex = Integer.parseInt(page);
		return dao.FindMoveDeptByTime(starttime,endtime,pageindex,10);
	}
	/**
	 * 获取调动部门的员工信息的分页的页数
	 * @param map
	 * @return int
	 */
	public int getPageFindMoveDept(Map<String, String[]> map) {
		String starttime=map.get("starttime")[0];	
		String endtime=map.get("endtime")[0];
		int page = dao.getPageFindMoveDept(starttime,endtime);
		int pagenumber = page%10==0?page/10:page/10+1;
			return pagenumber;
		}
	/**
     * 查找调换岗位人员信息
     * @param map
     * @return List<HashMap<String, String>>
     */
	public List<HashMap<String, String>> FindMoveJobByTime(Map<String, String[]> map,String page) {
		// TODO Auto-generated method stub
		 String starttime=map.get("starttime")[0];	
			String endtime=map.get("endtime")[0];
			int pageindex = Integer.parseInt(page);
			return dao.FindMoveJobByTime(starttime,endtime,pageindex,10);
	}
	/**
	 * 获取调动岗位的人员信息的页数
	 * @param map
	 * @return int
	 */
	public int getPageMovejob(Map<String, String[]> map) {
		String starttime=map.get("starttime")[0];	
		String endtime=map.get("endtime")[0];
		int page = dao.getPageMovejob(starttime,endtime);
		int count = page%10==0?page/10:page/10+1;
		
			return count;
		}
	/**
     * 查找有岗位或部门变动的人员信息
     * @param map
     * @return List<HashMap<String, String>>
     */
	public List<HashMap<String, String>> FindEmpToMove(Map<String, String[]> map) {
		// TODO Auto-generated method stub
		
		String empid=map.get("empid")[0];
		return dao.FindEmpToMove(empid);
	}
    /**
     * 获取调动岗位的信息
     * @param map
     * @return List<HashMap<String, String>>
     */
	public List<HashMap<String, String>> FindJobToMove(Map<String, String[]> map) {
		// TODO Auto-generated method stub
		String empid=map.get("empid")[0];
		return dao.FindJobToMove(empid);	
	}
	//调配.
	/**
	 * 获取调动员工的信息
	 * @param map
	 * @return int
	 */
	public int MoveEmp(Map<String, String[]> map) {
		// TODO Auto-generated method stub
		String empid=map.get("empid")[0];
		//System.out.println("错误在这里"+empid);
		String olddept_name=map.get("dept_name")[0];
		//System.out.println(""+olddept_name);
		String newjob_number=map.get("newjob_id")[0];
		String move_type=map.get("type")[0];
		String move_reason=map.get("reason")[0];
		String move_time=map.get("movetime")[0];
		String oldjob_name=map.get("job_name")[0];
		String newdept_name=map.get("newdept_name")[0];
		List<HashMap<String, String>> item=
				dao.FindInfoToMove(newjob_number);
		Map<String,String>info=item.get(0);
		String  newdept_number=info.get("dept_number");
		String  newjob_name=info.get("job_name");
		return dao.MoveEmp(empid,olddept_name,oldjob_name,newjob_number,move_type,move_reason,move_time,newdept_name,newdept_number,newjob_name);
	}
	/**
	 * 按页获取调动员工的信息
	 * @param map
	 * @param page
	 * @return List<HashMap<String, String>>
	 */
	public List<HashMap<String, String>> FindMovedEmp(Map<String, String[]> map,String page) {
		// TODO Auto-generated method stub
		String empid=map.get("empid")[0];
		String emp_name=map.get("emp_name")[0];
		String starttime=map.get("starttime")[0];
		String endtime=map.get("endtime")[0];
		String moveway=map.get("moveway")[0];
		String movereason=map.get("movereason")[0];
		
		int pageindex = Integer.parseInt(page);
		return dao.FindMovedEmp(empid,emp_name,starttime,endtime,moveway,movereason,pageindex,10);
	}
	/**
	 * 获取调动信息的分页的页数
	 * @param map
	 * @return int
	 */
	public int  getPageFindMovedInfo(Map<String, String[]> map) {
		String empid=map.get("empid")[0];
		String emp_name=map.get("emp_name")[0];
		String starttime=map.get("starttime")[0];
		String endtime=map.get("endtime")[0];
		String moveway=map.get("moveway")[0];
		String movereason=map.get("movereason")[0];
		int page = dao.getPageFindMovedInfo(empid,emp_name,starttime,endtime,moveway,movereason);
		int sum = page%10==0?page/10:page/10+1;
		return sum;
	}
	
	
}
