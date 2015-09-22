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
	public List<HashMap<String, String>> findNewByTime(Map<String, String[]> map) {
		// TODO Auto-generated method stub
		String starttime=map.get("starttime")[0];
		
		String endtime=map.get("endtime")[0];
	
		String deptname=map.get("deptname")[0];
		
		
		return dao.findNewByTime(starttime,endtime,deptname);
	}

}
