package com.csu.dao.xyb;

import java.util.HashMap;
import java.util.List;

import com.neu.dao.BaseDao;

//import com.neu.dao.BaseDao;


public class UserInfoDao extends BaseDao {

	public HashMap<String, String> checkLogin(
			String username,
			String pwd){
		HashMap<String, String> item=null;
		String sql="select * from USER_INFO "
				+ "where user_name=? and user_pwd=?";
		List<HashMap<String, String>> list=
				super.findBySQL(sql, username,pwd);
		//判断是否查到数据
		if(list!=null && list.size()>0){
			item=list.get(0);
		}
		return item;
	}
	public List<HashMap<String, String>> findAll(){
		String sql="select * from USER_INFO order by user_name";
		List<HashMap<String, String>> list=
				super.findBySQL(sql);
		return list;
	}
//	public int doDelete(String id){
//		String sql="delete from USER_INFO "
//				+ " where user_id="+id;
//		int i=super.exeuteUpdate(sql);
//		return i;
//	}
//	public HashMap<String, String> findById(String id){
//		String sql="select * from USER_INFO "
//				+ " where user_id="+id;
//		List<HashMap<String, String>> list=
//				super.findBySQL(sql);
//		if(list!=null && list.size()>0){
//			return list.get(0);
//		}
//		return null;
//	}
	
//	public int doUpdate(String name,String pwd,
//			String id){
//		String sql="update USER_INFO "
//				+ "set user_name=?,user_pwd=? "
//				+ "where user_id="+id;
//		int i=super.exeuteUpdate(sql, name,pwd);
//		return i;
//	}
	public boolean checkName(String name)  {
		
		String sql="select * from USER_INFO "
				+ "where user_name=?";
		List<HashMap<String, String>> list=
				super.findBySQL(sql,name);
		if(list!=null && list.size()>0){
			return true; 
		}
		else{
		return false;
		}
	}
	public boolean checkAdmain(String username) {
		// TODO Auto-generated method stub
		
		String sql="select * from USER_INFO "
				+ "where user_name=? and user_flag=1";
		List<HashMap<String, String>> list=
				super.findBySQL(sql,username);
		if(list!=null && list.size()>0){
			return true; 
		}
		else{
		return false;
		}
	}
	public boolean doSave(String name, String pwd, String tel) {
		// TODO Auto-generated method stub
		String sql="insert into USER_INFO "
				+ "values(?,?,?,0)";
		int i=super.exeuteUpdate(sql,name,pwd,tel);
		return i>0?true:false;
	}
	public List<HashMap<String, String>> findSignByTime(String time) {
		// TODO Auto-generated method stub
		String sql="select stu.user_name,"
				+ "sign.checkin_time,sign.checkout_time "
				+ "from USER_INFO stu "
				+ "inner join CHECKIN_INFO sign "
				+ "on sign.user_name=stu.user_name "
				+ "where instr(checkin_time,?)>0 or instr(checkout_time,?)>0 "
				+ "order by stu.user_name ";
		return super.findBySQL(sql, time,time);
	}
}




