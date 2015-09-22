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
    //根据时间查找调离部门人员信息
	public List<HashMap<String, String>> FindMoveDeptByTime(Map<String, String[]> map) {
		// TODO Auto-generated method stub
        String starttime=map.get("starttime")[0];	
		String endtime=map.get("endtime")[0];
		return dao.FindMoveDeptByTime(starttime,endtime);
	}
    //根据时间查找调换工作人员信息
	public List<HashMap<String, String>> FindMoveJobByTime(Map<String, String[]> map) {
		// TODO Auto-generated method stub
		 String starttime=map.get("starttime")[0];	
			String endtime=map.get("endtime")[0];
			return dao.FindMoveJobByTime(starttime,endtime);
	}
}
