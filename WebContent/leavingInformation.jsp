<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<link rel="stylesheet" href="css/common.css" type="text/css" />
<title>离职办理</title>
<style type="text/css">
<!--
.STYLE1 {
	font-size: 16px;
	font-weight: bold;
	font-family: "新宋体";
}
-->
</style>
</head>

<body>
<div id="man_zone">
<table width="1014" height="181" border="1" bordercolor="#FFFFFF" bgcolor="#FFFFFF">
  <tr bgcolor="#33CCFF">
    <td colspan="6"><div align="center" class="STYLE1">员工信息 </div></td>
  </tr>
  <tr>
    <td width="91"><div align="center">员工姓名</div></td>
    <td width="128"><div align="center">员工编号</div></td>
    <td width="124"><div align="center">部门名</div></td>
    <td width="138"><div align="center">部门编号</div></td>
    <td width="314"><div align="center">身份证号</div></td>
    <td width="179"><div align="center">操作</div></td>
  </tr>
  
 <c:forEach var="leaving" items="${sessionScope.leavinginfo }">
  <tr>
    <td><div align="center">${leaving.emp_name }</div></td>
    <td><div align="center">${leaving.emp_number }</div></td>
    <td><div align="center">${leaving.dept_name }</div></td>
    <td><div align="center">${leaving.dept_number }</div></td>
    <td><div align="center">${leaving.idcard }</div></td>
    <td><div align="center"><a href="FindLeavingInfoServlet?empnumber=${leaving.emp_number }">查询详细信息
    </a> <a href="leaving.jsp?empnumber=${leaving.emp_number }&jobnumber=${leaving.job_number }">离职</a></div></td>
  </tr>
</c:forEach>   
  
  
</table>
<form id="form1" name="form1" method="post" action="">
  <label>
  <input type="submit" name="Submit" value="上一页" />
  </label>
  <label>
  <input name="textfield" type="text" value="1"  size="3" />
  </label>
  <label>
  <input type="submit" name="Submit2" value="下一页" />
  </label>
</form>
</div>
</body>
</html>