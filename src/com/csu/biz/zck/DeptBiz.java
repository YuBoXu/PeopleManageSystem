package com.csu.biz.zck;

import java.util.Map;

import com.csu.dao.zck.DeptDao;

public class DeptBiz {
	private DeptDao dao;

	public DeptBiz() {
		dao = new DeptDao();
	}
	
	public int EditDept(Map<String, String[]> map){
		String number = map.get("number")[0];
		String name = map.get("name")[0];
		String type = map.get("select")[0];
		String phone = map.get("phone")[0];
		String fax = map.get("fax")[0];
		String describe = map.get("describle")[0];
		String top = map.get("super")[0];
		String date = map.get("date")[0];
		DeptBiz biz = new DeptBiz();
		biz.EditDept(map);
		return 0;
		
	}
}
