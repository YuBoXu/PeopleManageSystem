<%@ page language="java"  contentType="application/vnd.ms-excel;charset=GBK"
    pageEncoding="GB18030"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>部门调动表</title>
</head>
<body>
<table id="subtree1" style="DISPLAY: " width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
      
      <tr>
        <td height="40" class="font42"><table width="100%" border="0" align="center" cellpadding="4" cellspacing="1" class="newfont03">
          <tr class="CTitle" >
            <td height="22" colspan="6" align="right" style="font-size:16px"><div align="center"><span class="STYLE3">岗位调动员工列表 </span></div></td>
            
            </tr>
          <tr bgcolor="#EEEEEE">
            <td width="128" height="30" align="center">选择</td>
            <td width="128">原部门名称</td>
            <td width="128">新部门名称</td>
       
            <td width="128">姓名 </td>
            <td width="128">性别</td>
            <td width="130">调动日期</td>
            <td>调动原因</td>
          </tr>
          <c:forEach var="info" items="${sessionScope.info }">
          <tr bgcolor="#FFFFFF">
            <td height="20"><input type="checkbox" name="delid"/></td>
            <td>${info.olddept}
            </td>
            <td>${info.newdept}
            </td>
            <td>${info.emp_name}
            </td>
            <td>${info.emp_sex}
            </td>
            <td>${info.depttime}
            </td>
            <td>${info.deptreason}
            </td>
          </tr>
         </c:forEach>
         
   
        </table>
</body>
</html>