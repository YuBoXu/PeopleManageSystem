package com.csu.biz.zck;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.csu.dao.zck.DeptDao;

public class DeptBiz {
	private DeptDao dao;

	public DeptBiz() {
		dao = new DeptDao();
	}
	
	/**
	 * �༭������Ϣ
	 * @param map
	 * @return int
	 */
	public int EditDept(Map<String, String[]> map){
		String number = map.get("number")[0];
		String name = map.get("name")[0];
		String type = map.get("select")[0];
		String phone = map.get("phone")[0];
		String fax = map.get("fax")[0];
		String describe = map.get("describle")[0];
		String top = map.get("super")[0];
		String date = map.get("date")[0];	
		return dao.editDept(number,name, type, phone, fax, describe, top, date);
		
	}

    /**
     * ��Ӳ���
     * @param map
     */
	public void addDept(Map<String, String[]> map) {
		String deptname= map.get("deptname")[0];
		String type = map.get("select")[0];
		String phone = map.get("tele")[0];
		String fax = map.get("fax")[0];
		String describ = map.get("discrip")[0];
		String sueper = map.get("super")[0];
		String date = map.get("createtime")[0];		
		dao.addDept(deptname, type, phone, fax, describ,sueper, date);
		
	}

    /**
     * ���Ҳ�����Ϣ
     * @param number
     * @return list
     */
	public List<HashMap<String, String>> findDeptById(String number) {
		List<HashMap<String, String>>  list = dao.findDeptById(number);
		return list;
	}

	/**
	 * 
	 * @param page
	 * @return
	 * ��ѯ��ҳ��¼��Ϊ��һҳ��10����¼
	 */
	public List<HashMap<String, String>> findDeptByPage(String page) {
		int pageIndex = Integer.parseInt(page);
		
		return dao.findDeptByPage(pageIndex,10);
	}

    /**
     * ͨ�����ű�Ų��Ҳ�����Ϣ��Ա����Ϣ
     * @param deptnumber
     * @return
     */
	public List<HashMap<String, String>> findDeptEmpInfoByDeptNumber(String deptnumber) {
		List<HashMap<String, String>> list = dao.findDeptEmpInfoByDeptNumber(deptnumber);
		return list;
	}

	/**
	 * 
	 * @return
	 * �õ���ҳ����ÿҳ10����¼
	 */
	public int getpagenumber() {
		int count = dao.getPageNumber();
		int sum= count%10==0?count/10:count/10+1;
		return sum;
	}
}
