<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<link rel="stylesheet" href="css/common.css" type="text/css" />
<title>���Ź���</title>
<SCRIPT language=JavaScript>

function link1(){
     alert("�ò�������Ա��������ɾ����");
}
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
<form name="fom" id="fom" method="post" action="">
<table width="100%" border="0" cellspacing="0" cellpadding="0" >
  
  <tr>
    <td height="30">      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="62" background="../images/nav04.gif">
            
		   <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
		    <tr>
			  <td width="21"><img src="images/ico07.gif" width="20" height="18" /></td>
			  <td width="538">�鿴������Ϣ</td>
			  <td width="144" align="left"><a href="#" onclick="sousuo()"></a></td>	
		    </tr>
          </table></td>
        </tr>
    </table></td></tr>
  <tr>
    <td><table id="subtree1" style="DISPLAY: " width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td><table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
          	 <tr>
               <td height="20"><span class="newfont07">������<a href="#" class="right-font08 STYLE1" onclick="selectAll();">ȫѡ</a>-<a href="#" class="right-font08 STYLE1 " onclick="unselectAll();">��ѡ </a><a href="multidel.html" class="STYLE1" > ɾ��</a>             </td>
          	   <td align="right"></td>
          	 </tr>
              <tr>
                <td height="40" colspan="2" class="font42">
				<table width="100%" border="0" cellpadding="4" cellspacing="1" bgcolor="#464646" class="newfont03">
				 <tr class="CTitle" >
                    	<td height="22" colspan="10" align="center" style="font-size:16px">������ϸ�б�</td>
                  </tr>
                  <tr bgcolor="#EEEEEE">
				    <td width="4%" align="center" height="30"><div align="center">ѡ��</div></td>
                    <td width="8%"><div align="center">���ű��</div></td>
                    <td width="10%"><div align="center">��������</div></td>
					<td width="7%"><div align="center">����</div></td>
                    <td width="11%"><div align="center">�绰</div></td>
					<td width="9%"><div align="center">����</div></td>
					<td width="9%"><div align="center">����</div></td>
					<td width="10%"><div align="center">�ϼ�����</div></td>
					<td width="13%"><div align="center">��������</div></td>
					<td width="19%"><div align="center">����</div></td>
                  </tr>
               <c:forEach var="dept" items="${sessionScope.deptinfo }" varStatus="state">   
                  <tr bgcolor="#FFFFFF">
				    <td height="20"><div align="center">
				      <input type="checkbox" name="delid"/>
				      </div></td>
                    <td ><div align="center">${state.index+1 }</div></td>
                    <td ><div align="center"><a href="listmokuaimingxi.htm" onclick=""></a>${dept.dept_name }</div>
                    </td>
					<td>
					  <div align="center">
					  ${dept.dept_type }
					      </div>
			</td>
                    <td><div align="center">${dept.dept_phone }</div></td>
                    <td><div align="center">${dept.dept_fax }</div></td>
                    <td><div align="center">${dept.dept_describe }</div></td>
                    <td><div align="center">${dept.dept_top }</div></td>
                    <td><div align="center">${dept.dept_date }</div></td>
                    <td><div align="center"> <a href="deptmod.html">�༭ </a>|<a href="#" onclick="link1();"> ɾ�� </a>|<a href="depemplist.html"> ��ѯ������Ա��</a></div></td>
                  </tr>
				</c:forEach>   
            </table></td>
        </tr>
      </table>
      <table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="6"><img src="../images/spacer.gif" width="1" height="1" /></td>
        </tr>
        <tr>
          <td height="33"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="right-font08">
              <tr>
                <td width="49%">�� <span class="right-text09">5</span> ҳ | �� <span class="right-text09">1</span> ҳ</td>
                <td width="48%" align="right">[<a href="#" class="right-font08">��ҳ</a> | <a href="#" class="right-font08">��һҳ</a> | <a href="#" class="right-font08">��һҳ</a> | <a href="#" class="right-font08">ĩҳ</a>] ת����</td>
                <td width="5%"><table width="20" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td width="1%"><input name="textfield3" type="text" class="right-textfield03" size="3" /></td>
                      <td width="87%"><input name="Submit23222" type="button" class="button08" value="GO" />
                      </td>
                    </tr>
                </table></td>
              </tr>
          </table></td>
        </tr>
      </table></td>
  </tr>
</table>
</td>
</tr>
</table>
</form>


 
 
</div>
</body>
</html>
