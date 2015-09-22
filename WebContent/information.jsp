<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<link rel="stylesheet" href="css/common.css" type="text/css" />
<title>详细信息</title>
</head>

<body>
<div id="man_zone">
<form id="form1" name="form1" method="post" action="leaving.jsp?empnumber=${sessionScope.empinfo.emp_number }&jobnumber=${sessionScope.empinfo.job_number }">
  <table width="698" border="1" bordercolor="#FFFFFF" bgcolor="#FFFFFF">
    <tr>
      <th colspan="3" scope="col"><div align="center">员工详细信息</div></th>
    </tr>
    <tr>
      <td width="113"><div align="center">名称</div></td>
      <td width="287"><div align="center">内容</div></td>
      <td width="276"><div align="center">备注</div></td>
    </tr>
    <tr>
      <td><div align="center">员工号：</div></td>
      <td>${sessionScope.empinfo.emp_number }</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><div align="center">姓名：</div></td>
      <td>${sessionScope.empinfo.emp_name }</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><div align="center">性别：</div></td>
      <td>${sessionScope.empinfo.emp_sex }</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><div align="center">出生日期：</div></td>
      <td>${sessionScope.empinfo.birthday }</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><div align="center">身份证号：</div></td>
      <td>${sessionScope.empinfo.idcard }</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><div align="center">部门：</div></td>
      <td>${sessionScope.empinfo.dept_name }</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><div align="center">岗位：</div></td>
      <td>${sessionScope.empinfo.job_name }</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><div align="center">入职日期：</div></td>
      <td>${sessionScope.empinfo.cometime}</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><div align="center">参加工作日期：</div></td>
      <td>${sessionScope.empinfo.cometime }</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><div align="center">用工形式：</div></td>
      <td>${sessionScope.empinfo.emptype }</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><div align="center">人员来源：</div></td>
      <td>${sessionScope.empinfo.empfrom }</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><div align="center">政治面貌：</div></td>
      <td>${sessionScope.empinfo.politic }</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><div align="center">民族：</div></td>
      <td>${sessionScope.empinfo.emp_national }</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><div align="center">籍贯：</div></td>
      <td>${sessionScope.empinfo.nativehome }</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><div align="center">联系电话：</div></td>
      <td>${sessionScope.empinfo.phone }</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><div align="center">电子邮件：</div></td>
      <td>${sessionScope.empinfo.email }</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><div align="center">身高：</div></td>
      <td>${sessionScope.empinfo.height }</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><div align="center">血型：</div></td>
      <td>${sessionScope.empinfo.blood }</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><div align="center">婚姻状况：</div></td>
      <td>${sessionScope.empinfo.marital }</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><div align="center">籍贯：</div></td>
      <td>${sessionScope.empinfo.nativehome }</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><div align="center">出生地：</div></td>
      <td>${sessionScope.empinfo.birthplace }</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><div align="center">户口所在地：</div></td>
      <td>${sessionScope.empinfo.home }</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><div align="center">最高学历：</div></td>
      <td>${sessionScope.empinfo.education }</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><div align="center">最高学位：</div></td>
      <td>${sessionScope.empinfo.heightdegree }</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><div align="center">毕业院校：</div></td>
      <td>${sessionScope.empinfo.school }</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><div align="center">所学专业：</div></td>
      <td>${sessionScope.empinfo.major }</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><div align="center">毕业日期：</div></td>
      <td>${sessionScope.empinfo.graduatedata }</td>
      <td>&nbsp;</td>
    </tr>
  </table>
  <p>
    <label>
    <input type="submit" name="Submit" value="办理离职" />
    </label>
    <label>
    <input type="reset" name="Submit2" value="返回" onclick="history.go(-1)"/>
    </label>
  </p>
</form>
</div>
</body>
<!-- <script type="text/javascript">
function back(){
	window.back();
}
</script> -->
</html>
