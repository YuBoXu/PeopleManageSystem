package com.csu.biz.zck;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.csu.dao.zck.StaffDao;

public class StaffBiz {
	private StaffDao dao;
	
	public StaffBiz(){
		dao = new StaffDao();
	}

	/**
	 * 
	 * @param map
	 * @param page
	 * @return
	 * 
	 */
	public List<HashMap<String, String>> findLeavingInfo(Map<String, String[]> map, String page) {
		String deptnumber = map.get("bmnum")[0];
		String deptname = map.get("bmname")[0];
		String empnumber = map.get("ygnum")[0];
		String empname = map.get("ygname")[0];
		int pageindex = Integer.parseInt(page);
		List<HashMap<String, String>> list = dao.findLeavingInfo(deptnumber,deptname,empnumber,empname,pageindex,10);
		return list;
	}
	/**
	 * 
	 * @param map
	 * @return
	 */
	public int getPageLeavingInfo(Map<String, String[]> map) {
		String deptnumber = map.get("bmnum")[0];
		String deptname = map.get("bmname")[0];
		String empnumber = map.get("ygnum")[0];
		String empname = map.get("ygname")[0];
		int count = dao.getPageLeavingInfo(deptnumber,deptname,empnumber,empname);
		int sum = count%10==0?count/10:count/10+1;
		return sum;
	}


	
	public int leavingOperate(Map<String, String[]> map) {
		String leavetime = map.get("lztime")[0];
		String reason =map.get("lztype")[0];
		String place = map.get("lzgoto")[0];
		String radiobutton = map.get("radiobutton")[0];
		String empnumber = map.get("empnumber")[0];
		String jobnumber = map.get("jobnumber")[0];
		int row = dao.leavingOperate(empnumber,jobnumber,place,leavetime,reason,radiobutton);
		 row = dao.updateSkStaffInfo(empnumber,"¿Î÷∞");
		return row;
		
	}


	public List<HashMap<String, String>> findLeavingInfoByEmpNumber(String empnumber) {
		List<HashMap<String, String>> list =dao.findLeavingInfoByEmpNumber(empnumber);
		return list;
	}


	public List<HashMap<String, String>> findLeavedEmpInfo(Map<String, String[]> map) {
		String empnumber = map.get("ygnum")[0];
		String empname=map.get("ygname")[0];
		String deptname = map.get("bmname")[0];
		String jobname = map.get("gwname")[0];
		String leavtype = map.get("lztype")[0];
		List<HashMap<String, String>> list = dao.findLeavedEmpInfo(empnumber,empname,deptname,jobname,leavtype);
		return list;
	}


	




}
