package com.csu.biz.xyq;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.csu.dao.xyq.YgxxDao;

/**
 * 
 * @author xiongyuqiong
 *在职员工查询的业务层
 */
public class YgxxBiz {
	
	private YgxxDao dao=new YgxxDao();
	
	
    public List<HashMap<String, String>> find(Map<String, String[]> map) {		
		String idcard=null;
		String emp_number=null;
		
		if(map.get("idcard")!=null){
			idcard=map.get("idcard")[0];
		}
		if(map.get("emp_number")!=null){
			emp_number=map.get("emp_number")[0];
		}
		
		List<HashMap<String,String>> list=dao.findYgxx(idcard,emp_number);
		return list;
	}

    
    

	public List<HashMap<String, String>> findEmpByIdCard(String id) {
		List<HashMap<String,String>> list = dao.findEmpByIdCard(id);
		return list;
	}


	public List<HashMap<String, String>> findRlationByNumber(String number) {
		List<HashMap<String,String>> list = dao.findRelationByNumber(number);
		return list;
	}


	public List<HashMap<String, String>> findOccupationByNumber(String number) {
		List<HashMap<String,String>> list = dao.findOccupationByNumber(number);
		return list;
	}
}
