package com.csu.dao.xyb;

import java.util.HashMap;
import java.util.List;

import com.neu.dao.BaseDao;

public class MonthListDao extends BaseDao{
    /**
     * 获取月报信息
     * @param begintime
     * @param endtime
     * @return List<HashMap<String, String>>
     */
	public List<HashMap<String, String>> findMonthList(String begintime, String endtime) {
		String sql="select f.*,d.dept_name from dept d,( "
				+ " select  beginnumber.dept_number, beginmonth,endmonth,enternumber,outputnumber,"
				+ " postgraduatenumber,undergraduatenumber,juniorcollegenumber,hightscoolnumber,"
				+ " turnout,turnin from (select r.dept_number,count(*) beginmonth from empinfo e,"
				+ "relationship r where e.emp_number=r.emp_number "
				+ " and to_date(toworktime,'yyyy-mm-dd') >= to_date(?,'YYYY-MM') "
				+ "  group by r.dept_number) beginnumber full join  (select r.dept_number,count(*) "
				+ " endmonth from empinfo e,relationship r where e.emp_number=r.emp_number and "
				+ " to_date(toworktime,'yyyy-mm-dd') >= to_date(?,'YYYY-MM') "
				+ " group by r.dept_number) endnumber on beginnumber.dept_number=endnumber.dept_number "
				+ " full join (select r.dept_number,count(*) enternumber from empinfo e,relationship r "
				+ " where e.emp_number=r.emp_number and to_date(toworktime,'yyyy-mm-dd') >= to_date(?,'YYYY-MM') "
				+ "  and to_date(toworktime,'yyyy-mm-dd') <=to_date(?,'YYYY-MM') group by r.dept_number) "
				+ " inter on endnumber.dept_number=inter.dept_number and beginnumber.dept_number=inter.dept_number "
				+ " full join  (select r.dept_number,count(*) outputnumber from empinfo e,relationship r,leave l "
				+ " where e.emp_number=r.emp_number and e.emp_number=l.emp_number and r.emp_number=l.emp_number "
				+ " and   to_date(l.leave_time,'yyyy-mm-dd') >= to_date(?,'YYYY-MM') group by r.dept_number) "
				+ " output on inter.dept_number=output.dept_number and endnumber.dept_number=output.dept_number "
				+ "  and beginnumber.dept_number=output.dept_number  full join  (select r.dept_number, "
				+ " count(*) postgraduatenumber  from empinfo e,relationship r where e.emp_number=r.emp_number "
				+ " and to_date(toworktime,'yyyy-mm-dd') >= to_date(?,'YYYY-MM') and "
				+ "  e.education= '研究生' group by r.dept_number) postgraduate on output.dept_number=postgraduate.dept_number "
				+ " and inter.dept_number=postgraduate.dept_number    and endnumber.dept_number=postgraduate.dept_number "
				+ " and beginnumber.dept_number=postgraduate.dept_number   full join "
				+ "  (select r.dept_number,count(*) undergraduatenumber from empinfo e,relationship r "
				+ " where e.emp_number=r.emp_number and to_date(toworktime,'yyyy-mm-dd') >= to_date(?,'YYYY-MM') "
				+ " and    e.education= '本科' group by r.dept_number）undergraduate on "
				+ " postgraduate.dept_number=undergraduate.dept_number and output.dept_number=undergraduate.dept_number "
				+ " and inter.dept_number=undergraduate.dept_number   "
				+ " and endnumber.dept_number=undergraduate.dept_number and beginnumber.dept_number=undergraduate.dept_number  "
				+ "  full join   (select r.dept_number, count(*) juniorcollegenumber from empinfo e,relationship r "
				+ " where e.emp_number=r.emp_number and to_date(toworktime,'yyyy-mm-dd') >= to_date(?,'YYYY-MM') and "
				+ "    e.education= '大专' group by r.dept_number) juniorcollege on "
				+ " undergraduate.dept_number=juniorcollege.dept_number and postgraduate.dept_number=juniorcollege.dept_number "
				+ " and     output.dept_number=juniorcollege.dept_number and inter.dept_number=juniorcollege.dept_number  "
				+ "  and endnumber.dept_number=juniorcollege.dept_number and beginnumber.dept_number=juniorcollege.dept_number "
				+ "   full join    (select r.dept_number,count(*) hightscoolnumber from empinfo e,relationship r "
				+ " where e.emp_number=r.emp_number and to_date(toworktime,'yyyy-mm-dd') >= to_date(?,'YYYY-MM') and  "
				+ "   e.education= '高中以下' group by r.dept_number) hightschool on juniorcollege.dept_number=hightschool.dept_number "
				+ " and undergraduate.dept_number=hightschool.dept_number and postgraduate.dept_number=hightschool.dept_number "
				+ " and     output.dept_number=hightschool.dept_number and inter.dept_number=hightschool.dept_number "
				+ "  and endnumber.dept_number=hightschool.dept_number and beginnumber.dept_number=hightschool.dept_number "
				+ " full join    (select  count(*) turnout,dept_number from changeinfo,dept where "
				+ "  changeinfo.olddept=dept.dept_name and to_date(depttime,'YYYY-MM-DD')>=to_date(?,'YYYY-MM') "
				+ " and to_date(depttime,'YYYY-MM-DD')<=to_date(?,'YYYY-MM')  "
				+ " group by dept_number) turnouttable on hightschool.dept_number=turnouttable.dept_number "
				+ " and juniorcollege.dept_number=turnouttable.dept_number and "
				+ " undergraduate.dept_number=turnouttable.dept_number and postgraduate.dept_number=turnouttable.dept_number "
				+ " and   output.dept_number=turnouttable.dept_number and inter.dept_number=turnouttable.dept_number  "
				+ "  and endnumber.dept_number=turnouttable.dept_number and beginnumber.dept_number=turnouttable.dept_number "
				+ "  full join   (select count(*) turnin,dept_number from changeinfo,dept where "
				+ " changeinfo.newdept=dept.dept_name and to_date(depttime,'YYYY-MM-DD')>=to_date(?,'YYYY-MM') "
				+ " and to_date(depttime,'YYYY-MM-DD')<=to_date(?,'YYYY-MM')  "
				+ " group by dept_number) turnintable on turnouttable.dept_number=turnintable.dept_number and "
				+ " hightschool.dept_number=turnintable.dept_number and juniorcollege.dept_number=turnintable.dept_number "
				+ " and undergraduate.dept_number=turnintable.dept_number and postgraduate.dept_number=turnintable.dept_number "
				+ " and    output.dept_number=turnintable.dept_number and inter.dept_number=turnintable.dept_number  "
				+ " and endnumber.dept_number=turnintable.dept_number and beginnumber.dept_number=turnintable.dept_number    )"
				+ " f where f.dept_number = d.dept_number";
		
		List<HashMap<String, String>> list = super.findBySQL(sql,endtime,begintime,begintime,endtime,begintime,begintime,begintime,begintime,
				begintime,begintime,endtime,begintime,endtime);
		return list;
	}

}
