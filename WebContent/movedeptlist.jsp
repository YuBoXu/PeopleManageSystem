<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<link rel="stylesheet" href="css/common.css" type="text/css" />
<title>��λ����Ա������</title>
<SCRIPT language="javascript">

function selectAll(){
	var obj = document.fom.elements;
	for (var i=0;i<obj.length;i++){
		if (obj[i].name == "delid"){
			obj[i].checked = true;
		}
	}
}

function unselectAll(){
	var obj = document.fom.elements;
	for (var i=0;i<obj.length;i++){
		if (obj[i].name == "delid"){
			if (obj[i].checked==true) obj[i].checked = false;
			else obj[i].checked = true;
		}
	}
}
</SCRIPT>
<style type="text/css">
<!--
.STYLE1 {color: #0000FF}
-->
</style>
</head>

<body>
<div id="man_zone">
<form name="form" id="form" method="post" action="">
<table id="subtree1" style="DISPLAY: " width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td height="20"><p class="newfont07">ѡ��<a href="#" class="right-font08 STYLE1" onclick="selectAll();">ȫѡ</a>-<a href="#" class="right-font08 STYLE1" onclick="unselectAll();">��ѡ</a></p></td>
      </tr>
      <tr>
        <td height="40" class="font42"><table width="100%" border="0" align="center" cellpadding="4" cellspacing="1" class="newfont03">
          <tr class="CTitle" >
            <td height="22" colspan="6" align="right" style="font-size:16px"><div align="center"><span class="STYLE3">��λ����Ա���б� </span></div></td>
            <td height="22" align="right" style="font-size:16px"><input type="button" name="Submit" value="����" /></td>
            </tr>
          <tr bgcolor="#EEEEEE">
            <td width="128" height="30" align="center">ѡ��</td>
            <td width="128">ԭ��������</td>
            <td width="128">�²�������</td>
       
            <td width="128">���� </td>
            <td width="128">�Ա�</td>
            <td width="130">��������</td>
            <td>����ԭ��</td>
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
         
          <tr bgcolor="#FFFFFF">
            <td height="20" colspan="5">�� <span class="right-text09">1</span> ҳ | �� <span class="right-text09">1</span> ҳ</td>
            <td colspan="2">[<a href="#" class="right-font08">��ҳ</a> | <a href="#" class="right-font08">��һҳ</a> | <a href="#" class="right-font08">��һҳ</a> | <a href="#" class="right-font08">ĩҳ</a>]</td>
            </tr>
        </table></td>
      </tr>
    </table>
        <p>&nbsp;</p></td>
  </tr>
</table>
</form>

</body>
</html>