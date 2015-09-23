package com.csu.biz.zck;

import java.util.HashMap;
import java.util.List;

import com.csu.dao.zck.WriteInfoDao;

public class WriteInfoBiz {

	public List<HashMap<String, String>> findDept() {
		WriteInfoDao dao = new WriteInfoDao();
		return dao.findDept();
	}

	public List<HashMap<String, String>> findJob() {
		WriteInfoDao dao = new WriteInfoDao();
		return dao.findJob();
	}

}
