package com.csu.biz.xyb;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.csu.dao.xyb.MonthListDao;

public class MonthListBiz {
	private MonthListDao dao;
	
	public MonthListBiz(){
		dao = new MonthListDao();
	}

	public List<HashMap<String, String>> findMonthList(Map<String, String[]> map) {
		
		String year = map.get("year")[0];
		String month = map.get("month")[0];
		int mon = Integer.parseInt(month);
		String month1 = String.valueOf((mon-1));
		String begintime = year+"-"+month;
		String endtime = year+"-"+month1;
	//	System.out.println(begintime+"      "+endtime);
		List<HashMap<String, String>> list = dao.findMonthList(begintime,endtime);
		return list;
	}

}
