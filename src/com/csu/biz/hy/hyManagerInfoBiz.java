package com.csu.biz.hy;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.csu.dao.hy.hyManagerInfoDao;
import com.csu.util.hy.Crypt;
//ע��
public class hyManagerInfoBiz {
	private hyManagerInfoDao dao=new hyManagerInfoDao();
	
	public boolean doSave(Map<String, String[]> map){
	   //��ȡ�����Ҫ��ӵĹ���Ա����Ϣ.
		System.out.println(map);
		String name=map.get("manager_name")[0];
		String pwd=map.get("manager_pwd")[0];
		String dept=map.get("manager_dept")[0];
		String tel=map.get("manager_tel")[0];
		String date=map.get("manager_date")[0];
//		������֤������ת��
		int i=dao.save( name, pwd, dept, tel,date);
		return i>0?true:false;
	}
//��ѯ����Ա
	public List<HashMap<String, String>> selectManager(Map<String, String[]> map) {
		// TODO Auto-generated method stub
		String id=null;
		String name=null;
		String dept=null;
		if(map.get("manager_id")!=null&&!"".equals(map.get("manager_id")[0])){
			id=map.get("manager_id")[0];
		}
		if(map.get("manager_name")!=null &&!"".equals(map.get("manager_name")[0])){
			name=map.get("manager_name")[0];
		}
		if(map.get("manager_dept")!=null &&!"".equals(map.get("manager_dept")[0])){
			dept=map.get("manager_dept")[0];
		}
		List<HashMap<String,String>> list=(List<HashMap<String, String>>) dao.selectManagerInfo(id,name,dept);
		return list;
	}

	public int getPageCount(Map<String, String[]> map) {
		// TODO Auto-generated method stub
		String id=null;
		String name=null;
		String dept=null;
		if(map.get("manager_id")!=null&&!"".equals(map.get("manager_id")[0])){
			id=map.get("manager_id")[0];
		}
		if(map.get("manager_name")!=null &&!"".equals(map.get("manager_name")[0])){
			name=map.get("manager_name")[0];
		}
		if(map.get("manager_dept")!=null &&!"".equals(map.get("manager_dept")[0])){
			dept=map.get("manager_dept")[0];
		}
		int count=dao.findSignCount(id,name,dept);
		int num=count%4==0?count/4:count/4+1;
		return num;
	}

	public List<HashMap<String, String>> findSignById(Map<String, String[]> map,int pageIndex) {
		
		String id=null;
		String name=null;
		String dept=null;
		if(map.get("manager_id")!=null&&!"".equals(map.get("manager_id")[0])){
			id=map.get("manager_id")[0];
		}
		if(map.get("manager_name")!=null &&!"".equals(map.get("manager_name")[0])){
			name=map.get("manager_name")[0];
		}
		if(map.get("manager_dept")!=null &&!"".equals(map.get("manager_dept")[0])){
			dept=map.get("manager_dept")[0];
		}
		return dao.findSignById(id,name,dept,1);
	
	}

	//�޸Ĺ���Ա��ȡҪ�޸ĵĹ���Ա����Ϣ
	public HashMap<String, String> updateManager(Map<String, String[]> map) {
		// TODO Auto-generated method stub
		String id=map.get("userId")[0];
		List<HashMap<String, String>> list=dao.findSignById(id);
		if(list!=null && list.size()>0){
			return list.get(0);
		}
		return null;
	}
    //�༭����Ա
	public boolean editManagerInfo(Map<String, String[]> map){
		String id=map.get("manager_id")[0];
		String name=map.get("manager_name")[0];
		String pwd=map.get("manager_pwd")[0];
		String dept=map.get("manager_dept")[0];
		String tel=map.get("manager_tel")[0];
		String date=map.get("manager_date")[0];
		int i=dao.updateManager(id,name, pwd, dept, tel, date);
		return i>0?true:false;
	}
	//ɾ������Ա
	public boolean doDeleteManager(Map<String, String[]> map) {
		// TODO Auto-generated method stub
		String id=map.get("manager_id")[0];
		int i=dao.doDeleteManager(id);
		return i>0?true:false;
	}
    //��ȡ����Ա��Ϣ
	public List<HashMap<String, String>> findAll() {
		// TODO Auto-generated method stub
		return  dao.findAll();
	}
    //����Ա��Ϣ��¼��֤
	public HashMap<String, String> checkLogin(Map<String, String[]> map) {
		// TODO Auto-generated method stub
		String name=map.get("manager_name")[0];
		String pwd=map.get("manager_pwd")[0];
		HashMap<String, String> item=
				dao.checkLogin(name,pwd);
		return item;
	}
}