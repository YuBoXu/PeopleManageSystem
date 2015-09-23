package com.csu.biz.xyb;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.csu.dao.xyb.FindNewDao;
public class FindNewBiz {
	private FindNewDao dao;
	
	public FindNewBiz(){
		dao=new FindNewDao();
	}
	/**查找新进职员
	 * 
	 * @param map
	 * @return List<HashMap<String, String>>
	 */
	public List<HashMap<String, String>> findNewByTime(Map<String, String[]> map,String page) {
		// TODO Auto-generated method stub
		String starttime=map.get("starttime")[0];
		
		String endtime=map.get("endtime")[0];
	
		String deptname=map.get("deptname")[0];
		
		int pageindex = Integer.parseInt(page);
		
		return dao.findNewByTime(starttime,endtime,deptname,pageindex,10);
	}
	/**
	 * 获取新进员工信息分页的页数
	 * @param map
	 * @return int
	 */
	public int getPageFindNewByTime(Map<String, String[]> map) {
		String starttime=map.get("starttime")[0];
		
		String endtime=map.get("endtime")[0];
	
		String deptname=map.get("deptname")[0];
		
		int count = dao.getPageFindNewByTime(starttime,endtime,deptname);
		int page = count%10==0?count/10:count/10+1;
		return page;
	}

}
