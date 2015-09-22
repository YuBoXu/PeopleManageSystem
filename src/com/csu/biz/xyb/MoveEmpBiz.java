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
     * @return
     */
	public List<HashMap<String, String>> FindMoveDeptByTime(Map<String, String[]> map,String page) {
		// TODO Auto-generated method stub
        String starttime=map.get("starttime")[0];	
		String endtime=map.get("endtime")[0];
		int pageindex = Integer.parseInt(page);
		return dao.FindMoveDeptByTime(starttime,endtime,pageindex,10);
	}
	
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
     * @return
     */
	public List<HashMap<String, String>> FindMoveJobByTime(Map<String, String[]> map) {
		// TODO Auto-generated method stub
		 String starttime=map.get("starttime")[0];	
			String endtime=map.get("endtime")[0];
			return dao.FindMoveJobByTime(starttime,endtime);
	}
	/**
     * 查找有岗位或部门变动的人员信息
     * @param map
     * @return
     */
	public List<HashMap<String, String>> FindEmpToMove(Map<String, String[]> map) {
		// TODO Auto-generated method stub
		
		String empid=map.get("empid")[0];
		return dao.FindEmpToMove(empid);
	}

	public List<HashMap<String, String>> FindJobToMove(Map<String, String[]> map) {
		// TODO Auto-generated method stub
		String empid=map.get("empid")[0];
		return dao.FindJobToMove(empid);	
	}
	
}
