<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<link rel="stylesheet" href="css/common.css" type="text/css" />
<title>��ƸԱ������</title>
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
.STYLE3 {color: #0000FF}
-->
</style>
</head>

<body>
<div id="man_zone">
<form name="fom" id="fom" method="post" action="">
<table id="subtree1" style="DISPLAY: " width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td height="20"><p class="newfont07">ѡ��<a href="#" class="right-font08 STYLE3" onclick="selectAll();">ȫѡ</a>-<a href="#" class="right-font08 STYLE3" onclick="unselectAll();">��ѡ</a></p></td>
      </tr>
      <tr>
        <td height="40" class="font42"><table width="100%" border="0" cellpadding="4" cellspacing="1" class="newfont03">
          <tr class="CTitle" >
            <td height="22" colspan="7" align="right" style="font-size:16px"><div align="center"><span class="STYLE4">��ƸԱ���б�</span></div></td>
            <td height="22" align="right" style="font-size:16px"></td>
          </tr>
          <tr bgcolor="#EEEEEE">
            <td width="4%" align="center" height="30">ѡ��</td>
            <td width="10%">Ա�����</td>
            <td width="10%">��������</td>
            <td width="10%">��λ����</td>
            <td width="10%">���� </td>
            <td width="5%">�Ա�</td>
            <td width="12%">��ְ����</td>
            <td width="12%">ѧ��</td>
          </tr>
          <tr bgcolor="#FFFFFF">
            <td height="20"><input type="checkbox" name="delid"/></td>
            <td >1</td>
            <td>�������</td>
            <td>java����ʦ</td>
            <td>tom</td>
            <td>Ů</td>
            <td>2001</td>
            <td>����</td>
          </tr>
         
          <tr bgcolor="#FFFFFF">
            <td height="20" colspan="7">�� <span class="right-text09">5</span> ҳ | �� <span class="right-text09">1</span> ҳ
              <div align="right"></div></td>
            <td>[<a href="#" class="right-font08">��ҳ</a> | <a href="#" class="right-font08">��һҳ</a> | <a href="#" class="right-font08">��һҳ</a> | <a href="#" class="right-font08">ĩҳ</a>]</td>
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