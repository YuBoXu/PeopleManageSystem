<%@ page language="java" contentType="application/vnd.ms-excel;charset=GBK"
    pageEncoding="GB18030"%>
          <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
</head>
<body>
<table id="subtree1" style="DISPLAY: " width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
      
      <tr>
        <td height="40" class="font42"><table width="100%" border="0" cellpadding="4" cellspacing="1" class="newfont03">
          <tr class="CTitle" >
            <td height="22" colspan="7" align="right" style="font-size:16px"><div align="center"><span class="STYLE4">新聘员工列表</span></div></td>
             <td height="22" align="right" style="font-size:16px"><td height="22" align="right" style="font-size:16px"><a href="newemplist_download.jsp"><input type="button" name="Submit"  value="下载" /></a></td>
          </tr>
          <tr bgcolor="#EEEEEE">
            <td width="4%" align="center" height="30">选择</td>
            <td width="10%">员工编号</td>
            <td width="10%">部门名称</td>
            <td width="10%">岗位名称</td>
            <td width="10%">姓名 </td>
            <td width="5%">性别</td>
            <td width="12%">入职日期</td>
            <td width="12%">学历</td>
          </tr>
           <c:forEach var="info" items="${sessionScope.info }">
          <tr bgcolor="#FFFFFF">
            <td height="20"><input type="checkbox" name="delid"/></td>
            <td>${info.emp_number}
            </td>
            <td>${info.dept_name}
            </td>
            <td>${info.job_name}
            </td>
            <td>${info.emp_name }
            </td>
            <td>${info.emp_sex}
            </td>
            <td>${info.toworktime}
            </td>
            <td>${info.education }
            </td>
          </tr>
         </c:forEach>

         
        </table></td>
      </tr>
    </table>
        <p>&nbsp;</p></td>
  </tr>
</table>
</body>
</html>