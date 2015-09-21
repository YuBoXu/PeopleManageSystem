package com.csu.biz.xyb;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.csu.dao.xyb.FindLeaveDao;


public class FindLeaveBiz{

	private FindLeaveDao dao;
//	构造方法的作用
	public FindLeaveBiz(){
		dao=new FindLeaveDao();
	}
	public List<HashMap<String, String>> findLeaveByTime(Map<String, String[]> map) {
		// TODO Auto-generated method stub
		String starttime=map.get("starttime")[0];
		String endtime=map.get("endtime")[0];
		String deptname=map.get("deptname")[0];
		return dao.findLeaveByTime(starttime,endtime,deptname);
	}
	
//	public List<HashMap<String, String>> findAll(){
//		return  dao.findAll();
//	}

}
