<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>�ޱ����ĵ�</title>
<link rel="stylesheet" href="css/common.css" type="text/css" />
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-image: url(../images/bg.gif);
}
.STYLE2 {font-size: 24px}
-->
</style>
</head>

<body>
<div id="man_zone">
  <table width="1015" height="50%" border="0" align="left">
    <tr>
      <td colspan="8" align="center" valign="top"><span class="STYLE2">������Ա���б�</span></td>
    </tr>
    <tr>
      <td width="120" align="left" valign="top">Ա�����</td>
      <td width="120">����</td>
      <td width="120">��������</td>
      <td width="120">��λ����</td>
      <td width="120"><span class="STYLE3">������״̬</span></td>
      <td width="120">�����ڿ�ʼ����</td>
      <td width="120">�����ڽ�������</td>
      <td width="123">&nbsp;</td>
    </tr>
    
<c:forEach var="info" items="${sessionScope.emp_t }">  
    <tr>
      <td>${info.emp_number }</td>
      <td>${info.emp_name }</td>
      <td>${info.dept_name }</td>
      <td>${info.job_name }</td>
      <td><span class="STYLE3">${info.trystate }</span></td>
      <td>${info.begintime }</td>
      <td>${info.endtime}</td>
      <td><form id="form3" name="form3" method="post" action="FindTemporaryByNumberServlet?empnumber=${info.emp_number }">
          <input type="submit" name="Submit3" value="�޸�"/>
      </form></td>
    </tr>
   
  </c:forEach>   
   
  
    <tr>
      <td colspan="8"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="right-font08">
        <tr>
          <td width="41%" height="34">�� <span class="right-text09">5</span> ҳ | �� <span class="right-text09">1</span> ҳ</td>
          <td width="57%" align="right"> [<a href="#" class="right-font08">��ҳ</a> | <a href="#" class="right-font08">��һҳ</a> | <a href="#" class="right-font08">��һҳ</a> | <a href="#" class="right-font08">ĩҳ</a>] </td>
          <td width="2%">&nbsp;</td>
        </tr>
      </table></td>
    </tr>
  </table>
</div>
</body>
</html>