package com.neu.dao.hy;

import java.util.HashMap;
import java.util.List;

import com.neu.dao.BaseDao;
/**
 * 
 * @author hy
 * 操作manager表
 * 编写SQL语句
 *
 */
public class hyManagerInfoDao extends BaseDao {
	//添加管理员功能中保存输入的管理员信息
	public int save(String name,String pwd,String dept,String tel,String date){
		String sql="insert into manager "
				+ "values(seq_manager_id.nextval,?,?,?,?,?,'','','',1)";
		int i=super.exeuteUpdate(sql, name,pwd,dept,tel,date);
		return i;
	}
    //查询管理员时通过输入的查询条件查询管理员信息
	public HashMap<String, String> selectManagerInfo(String id, String name, String dept) {
		// TODO Auto-generated method stub
        String sql="select * from manager where 1=1 ";
		
		if(id!=null){
			sql+=" and manager_id ="+id;
		}
		if(name!=null){
			sql+=" and manager_name like '%"+name+"%'";
		}
		if(dept!=null){
			sql+=" and manager_dept='"+dept+"'";
		}
		super.findBySQL(sql);
		return null;
	}
    //获取查询到管理员信息的总的数据量
	public int findSignCount(String id, String name, String dept) {
		// TODO Auto-generated method stub
		String sql="select count(manager_id) c from manager where 1=1 ";
		
		if(id!=null){
			sql+=" and manager_id ="+id;
		}
		if(name!=null){
			sql+=" and manager_name like '%"+name+"%'";
		}
		if(dept!=null){
			sql+=" and manager_dept='"+dept+"'";
		}
		System.out.println(""+sql);
		List<HashMap<String, String>> list=super.findBySQL(sql);
		
		return Integer.parseInt(list.get(0).get("c"));
	}
//高级查询，分页
	public List<HashMap<String, String>> findSignById(String id, String name, String dept,int pageIndex) {
		// TODO Auto-generated method stub
		int max=pageIndex*4;
		int min=(pageIndex-1)*4;
		String sql="select * from "
				+ "(select rownum r,a.* from "
				+ "(select * from manager where 1=1 ";
		if(id!=null){
			sql+=" and  manager_id ="+id;
		}
		if(name!=null){
			sql+=" and manager_name like '%"+name+"%'";
		}
		if(dept!=null){
			sql+=" and manager_dept='"+dept+"'";
		}
		sql+=") a  where rownum<=?) b where r>?";
		System.out.println(sql);
		return super.findBySQL(sql,max,min);
	
	}
//修改管理员信息
	public int updateManager(String id,String name, String pwd, String dept, String tel,
			String date) {
		// TODO Auto-generated method stub
		String sql="update manager "
				+ "set manager_pwd=? , manager_dept=? , manager_tel=? "
				+ ", manager_date=? , manager_name=? where manager_id=?";
		int i = super.exeuteUpdate(sql, pwd,dept,tel,date,name,id);
		return i;
	}
//删除管理员信息
	public int doDeleteManager(String id) {
		// TODO Auto-generated method stub
		String sql="delete from manager "
				+ " where manager_id="+id;
		int i=super.exeuteUpdate(sql);
		return i;
	}
//编辑管理员信息时通过此方法获取要修改的管理员的信息
	public List<HashMap<String, String>> findAll() {
		// TODO Auto-generated method stub
		String sql="select * from manager order by manager_id";
		List<HashMap<String, String>> list=
				super.findBySQL(sql);
		return list;
	}

	public List<HashMap<String, String>> findSignById(String id) {
		// TODO Auto-generated method stub
		String sql="select * from manager where manager_id=?";
		return super.findBySQL(sql, id);
	}
//管理员登录时获取输入信息进行查询验证
	public HashMap<String, String> checkLogin(String name, String pwd) {
		// TODO Auto-generated method stub
		String sql="select * from manager where "
				+ "manager_name=? and manager_pwd=?";
		List<HashMap<String, String>> list=
				super.findBySQL(sql, name,pwd);
		if(list!=null && list.size()>0){
			return list.get(0);
		}
		return null;
	}
	
}