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
	public List<HashMap<String, String>> FindMoveDeptByTime(Map<String, String[]> map) {
		// TODO Auto-generated method stub
        String starttime=map.get("starttime")[0];	
		String endtime=map.get("endtime")[0];
		return dao.FindMoveDeptByTime(starttime,endtime);
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
		String deptname=map.get("deptname")[0];	
		String jobname=map.get("jobname")[0];
		String empid=map.get("empid")[0];
		return dao.FindEmpToMove(deptname,jobname,empid);
	}
}
