package com.csu.biz.zck;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.csu.dao.zck.EmpInfoDao;
import com.sun.xml.internal.ws.developer.StreamingAttachment;

public class EmpInfoBiz {
	private EmpInfoDao dao;
	public  EmpInfoBiz() {
		dao = new EmpInfoDao();
	}
	

	public int  addEmpInfo(Map<String, String[]> map) {
		int row = 0;
		SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
		String toworktime = sf.format(new Date());
		String empname = map.get("ename")[0];
		String sex = map.get("sex")[0];
		String nation = map.get("nation")[0];
		String birthday = map.get("bthday")[0];
		String idcard = map.get("idcard")[0];
		String emptype = map.get("emptype")[0];
		String empfrom = map.get("empfrom")[0];
		String politic = map.get("politic")[0];
		String birthplace = map.get("birthplace")[0];
		String nationalhome = map.get("nationalhome")[0];
		String home = map.get("home")[0];
		String phone = map.get("phone")[0];
		String email = map.get("email")[0];
		String height=map.get("height")[0];
		String blood = map.get("blood")[0];
		String marital = map.get("marital")[0];
		String education = map.get("education")[0];
		String hightdegree = map.get("hightdegree")[0];
		String school = map.get("school")[0];		
		String major = map.get("major")[0];
		String graduatedate = map.get("graduatedate")[0];
		String otherlanguage=map.get("otherlanguage")[0];
		String languageskill  = map.get("languageskill")[0];
		row = dao.addEmpInfo(empname,sex,nation,birthday,idcard,emptype,empfrom,politic,birthplace,nationalhome,
				home,phone,email,height,blood,marital,education,hightdegree,school,major,graduatedate,
				otherlanguage,languageskill,toworktime);
		List<HashMap<String, String>> list = dao.findEmpByName(empname);
		HashMap<String, String> empmap = list.get(0);
		
		String empnumber = empmap.get("emp_number");
		
		String  deptnumber = map.get("job_dept_r_id")[0];
		String  jobnumber= map.get("job_job_r_id")[0];
		row = dao.addRelationship(empnumber,deptnumber,jobnumber);
		
		String  tryuse = map.get("tryuse")[0];
		String  starttime = map.get("starttime")[0];
		String  endtime = map.get("endtime")[0];
		String  other = map.get("other")[0];
		if (tryuse.equals("是")) {
			row =dao.addTemporaryInfo(empnumber,jobnumber,starttime,endtime,other,"试用");
		}else{
			row= dao.addSkstaff(jobnumber,starttime,empfrom,empnumber,"正常");
		}
		
		
		String  begintime = map.get("begintime")[0];
		String  lasttime = map.get("lasttime")[0];
		String  company = map.get("company")[0];
		String  jobdescribe = map.get("jobdescribe")[0];
		String  position = map.get("position")[0];
		String  slary = map.get("slary")[0];
		String  referencepeople = map.get("referencepeople")[0];
		String  referenceposition = map.get("referenceposition")[0];
		String  referencephone = map.get("referencephone")[0];
		String  explannation = map.get("explannation")[0];
		row= dao.addOccupationCareer(empnumber,begintime,lasttime,company,jobdescribe,position,slary,referencepeople,
				referenceposition,referencephone,explannation);
		
		String  ralation = map.get("ralation")[0];
		String  ralationname = map.get("ralationname")[0];
		String  ralationjob = map.get("ralationjob")[0];
		String ralationposition = map.get("ralationposition")[0];
		String  ralationphone = map.get("ralationphone")[0];
		row = dao.addSocialRelation(empnumber,ralation,ralationname,ralationjob,ralationposition,ralationphone);
		return row;	
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


	public List<HashMap<String, String>> findTemporaeyEmpInfo(Map<String, String[]> map) {
		String number = map.get("bianhao")[0];
		String name = map.get("xingming")[0];
		String starttime = map.get("starttime2")[0];
		String endtime = map.get("time2")[0];
		List<HashMap<String, String>> empmap = dao.findTemporaeyEmpInfo(number,name,starttime,endtime);
		return empmap;
	}


	public List<HashMap<String, String>> findTemporaryInfoByNumber(String number) {
		List<HashMap<String, String>> list = dao.findTemporaryInfoByNumber(number);
		return list;
	}


	public int editTemproryInfo(Map<String, String[]> map) {
		String state = map.get("zt")[0];
		String dealtime = map.get("time")[0];
		String reslut = map.get("pingyu")[0];
		String explanation =map.get("textarea")[0];
		String number = map.get("number")[0];
		if(dealtime.equals("")){
			SimpleDateFormat sf= new SimpleDateFormat("yyyy-MM-dd");
			dealtime = sf.format(new Date());
		}
		int row = dao.editTemproryInfo(state,dealtime,reslut,explanation,number);
		if(state.equals("转正")){
			List<HashMap<String, String>> list = dao.findEmpByNumber(number);
			Map<String, String> infomap =list.get(0);
			row = dao.addEmpSkstaff(infomap.get("job_number"),infomap.get("empfrom"),number,dealtime,"正常");
		}
		return row;
	}


	public List<HashMap<String, String>> findSkStaffEmp(Map<String, String[]> map) {
		String number = map.get("bianhao")[0];
		String name=map.get("xingming")[0];
		String deptname=map.get("bumen")[0];
		String time = map.get("time")[0];
		List<HashMap<String, String>> list = dao.findSkStaffEmp(number,name,deptname,time);
		return list;
	}

}
