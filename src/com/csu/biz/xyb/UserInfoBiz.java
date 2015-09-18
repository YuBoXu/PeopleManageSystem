package com.csu.biz.xyb;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.csu.dao.xyb.UserInfoDao;


public class UserInfoBiz {

	private UserInfoDao dao;
//	构造方法的作用
	public UserInfoBiz(){
		dao=new UserInfoDao();
	}
	public HashMap<String, String> checkLogin(
			Map<String, String[]> map){
		String name=map.get("user_name")[0];
		String pwd=map.get("password")[0];
		return dao.checkLogin(name, pwd);
		
	}
	public List<HashMap<String, String>> findAll(){
		return  dao.findAll();
	}
//	public boolean doDelete(Map<String,String[]> map){
//		String id=map.get("userId")[0];
//		int i=dao.doDelete(id);
//		return i>0?true:false;
//	}
//	public HashMap<String, String> findById(
//			Map<String,String[]> map){
//		String id=map.get("userId")[0];
//		return dao.findById(id);
//	}
//	public boolean doUpdate(
//			Map<String,String[]> map){
//		String name=map.get("user_name")[0];
//		String pwd=map.get("user_pwd")[0];
//		String id=map.get("user_id")[0];
//		int i=dao.doUpdate(name, pwd, id);
//		return i>0?true:false;
//	}
	public boolean checkName(String name) {
		// TODO Auto-generated method stub
		boolean i=dao.checkName(name);
		
		return i;
	}
	public boolean checkAdmain(String username) {
		// TODO Auto-generated method stub
		boolean   flag=dao.checkAdmain(username);
		return flag;
	}
	public boolean doSave(Map<String, String[]> map) {
		// TODO Auto-generated method stub
		String name=map.get("userName")[0];
		String pwd=map.get("password")[0];
		String tel=map.get("telephone")[0];
		
		boolean flag=dao.doSave(name,pwd, tel);
		return flag;
	}
	public List<HashMap<String, String>> findSignByTime(String time) {
		// TODO Auto-generated method stub
		
		return dao.findSignByTime(time);
	}
}
