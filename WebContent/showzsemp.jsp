<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
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
.STYLE2 {
	font-size: 24px;
	color: #666;
}
.STYLE3 {color: #666}
-->
</style>

</head>

<body>
<div id="man_zone">
<table width="1015" height="50%" border="0" align="left">

  <tr>
    <td colspan="7" align="center" valign="top"><span class="STYLE2">ת��Ա����Ϣ�б�</span></td>
  </tr>
  <tr>
    <td width="122" align="left" valign="top"><span class="STYLE3">Ա�����</span></td>
    <td width="122"><span class="STYLE3">����</span></td>
    <td width="122"><span class="STYLE3">��������</span></td>
    <td width="123"><span class="STYLE3">��λ����</span></td>
    <td width="122"><span class="STYLE3">�����ڿ�ʼ����</span></td>
    <td width="122"><span class="STYLE3">�����ڽ�������</span></td>
    <td width="127">ת��ʱ��</td>
  </tr>
  
  <c:forEach var="info" items="${sessionScope.staffinfo }">
  <tr>
    <td><span class="STYLE3">${info.emp_number }</span></td>
    <td><span class="STYLE3">${info.emp_name }</span></td>
    <td><span class="STYLE3">${info.dept_name }</span></td>
    <td><span class="STYLE3">${info.job_name }</span></td>
    <td><span class="STYLE3">${info.begintime }</span></td>
    <td><span class="STYLE3">${info.endtime }</span></td>
    <td><span class="STYLE3">${info.cometime }</span></td>
  </tr>
 
 </c:forEach>
 
  
  <tr>
    <td colspan="7" align="center" valign="middle"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="right-font08">
      <tr>
        <td width="50%" height="34" align="left">
        <span class="STYLE3">��${sessionScope.pagenumber } ҳ |
        	 ��${sessionScope.pageindex } ҳ</span></td>
        <td width="47%" align="right">[
        <c:if test="${sessionScope.pageindex==1 }">  
                <a  class="right-font08">��ҳ</a> |
                <a  class="right-font08">��һҳ</a> | 
             </c:if> 
             
             <c:if test="${sessionScope.pageindex>1 }">    
                [<a href="PageFindSkStaffServlet?index=1" class="right-font08">��ҳ</a> |                 
                  <a href="PageFindSkStaffServlet?index=${sessionScope.pageindex-1 }" class="right-font08">��һҳ</a> |
             </c:if> 
                 
              <c:if test="${sessionScope.pageindex < sessionScope.pagenumber }">      
                 <a href="PageFindSkStaffServlet?index=${sessionScope.pageindex+1 }" class="right-font08">��һҳ</a> |                 
                  <a href="PageFindSkStaffServlet?index=${sessionScope.pagenumber }" class="right-font08">ĩҳ</a>
               </c:if>  
               
               <c:if test="${sessionScope.pageindex==sessionScope.pagenumber }">   
                   <a  class="right-font08">��һҳ</a> |
                   <a  class="right-font08">ĩҳ</a>
               </c:if> 
         ] </td>
        <td width="3%">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
</table>
</div>
</body>
</html>
