package com.csu.biz.xyb;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.csu.dao.xyb.FindLeaveDao;

import javafx.beans.property.IntegerProperty;


public class FindLeaveBiz{

	private FindLeaveDao dao;
//	构造方法的作用
	public FindLeaveBiz(){
		dao=new FindLeaveDao();
	}
	/**根据时间查找离职信息
	 * 
	 * @param map
	 * @return List<HashMap<String, String>>
	 */
	public List<HashMap<String, String>> findLeaveByTime(Map<String, String[]> map,String page) {
		// TODO Auto-generated method stub
		String starttime=map.get("starttime")[0];
		String endtime=map.get("endtime")[0];
		String deptname=map.get("deptname")[0];
		int pageindex = Integer.parseInt(page);
		return dao.findLeaveByTime(starttime,endtime,deptname,pageindex,10);
	}
	public int getLeavePageNumber(Map<String, String[]> map) {
		String starttime=map.get("starttime")[0];
		String endtime=map.get("endtime")[0];
		String deptname=map.get("deptname")[0];
		int count= dao.getLeavePageNumber(starttime,endtime,deptname);
		int pagenumber=count%10==0?count/10:count/10+1;
		return pagenumber;
	}
	
//	public List<HashMap<String, String>> findAll(){
//		return  dao.findAll();
//	}

}
