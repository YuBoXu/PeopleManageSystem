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
    //����ʱ����ҵ��벿����Ա��Ϣ
	public List<HashMap<String, String>> FindMoveDeptByTime(Map<String, String[]> map) {
		// TODO Auto-generated method stub
        String starttime=map.get("starttime")[0];	
		String endtime=map.get("endtime")[0];
		return dao.FindMoveDeptByTime(starttime,endtime);
	}
    //����ʱ����ҵ���������Ա��Ϣ
	public List<HashMap<String, String>> FindMoveJobByTime(Map<String, String[]> map) {
		// TODO Auto-generated method stub
		 String starttime=map.get("starttime")[0];	
			String endtime=map.get("endtime")[0];
			return dao.FindMoveJobByTime(starttime,endtime);
	}
}
