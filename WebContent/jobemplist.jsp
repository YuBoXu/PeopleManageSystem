<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<link rel="stylesheet" href="css/common.css" type="text/css" />
<title>���Ź���</title>
<SCRIPT language=JavaScript>
function sousuo(){
	window.open("gaojisousuo.htm","","depended=0,alwaysRaised=1,width=800,height=510,location=0,menubar=0,resizable=0,scrollbars=0,status=0,toolbar=0");
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

function link(){
    document.getElementById("fom").action="addrenwu.htm";
   document.getElementById("fom").submit();
}
function link1(){
     location.href="adddept.html";
}
function link2(){
      if (document.fom.delid.onchick==true){
	  alert("����ѡ��û�п�ִ�еĲ�����");
	  }else {
	   location.href="multimod.html";
	  }
}

</SCRIPT>

</head>

<body>
<div id="man_zone">
  <form name="fom" id="fom" method="post" action="">
    <table width="100%" border="0" cellspacing="0" cellpadding="0" >
      <tr>
        <td height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="62" background="../images/nav04.gif"><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td width="21"><img src="images/ico07.gif" width="20" height="18" /></td>
                <td width="538">��λԱ����Ϣ�б�</td>
                <td width="144" align="left"><a href="#" onclick="sousuo()"></a></td>
              </tr>
            </table></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td><table id="subtree1" style="DISPLAY: " width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td height="40" class="font42"><table width="100%" border="0" cellpadding="4" cellspacing="1" bgcolor="#464646" class="newfont03">
                  <tr class="CTitle" >
                    <td height="22" colspan="12" align="center" style="font-size:16px">�� λ Ա �� �� Ϣ �� ��</td>
                  </tr>
                  <tr bgcolor="#EEEEEE">
                    <td width="3%" align="center" height="30"><div align="center">���</div></td>
                    <td width="8%"><div align="center">��λ���</div></td>
                    <td width="11%"><div align="center">��λ����</div></td>
                    <td width="7%"><div align="center">���ű��</div></td>
                    <td width="9%"><div align="center">��������</div></td>
                    <td width="8%"><div align="center">Ա������</div></td>
                    <td width="8%"><div align="center">Ա�����</div></td>
                   <!--  <td width="8%"><div align="center">ְ��</div></td> -->
                    <td><div align="center">��ϵ�绰</div></td>
                    <td width="19%"><div align="center">��ְ����</div></td>
                    <td width="9%"><div align="center">�����ܼ�</div></td>
                  </tr>
                  
            <c:forEach var="jobemp" items="${sessionScope.jobempinfo }" varStatus="xuhao">     
                  <tr bgcolor="#FFFFFF">
                    <td height="20"><div align="center"> ${xuhao.index }</div></td>
                    <td><div align="center">${jobemp.job_number }</div></td>
                    <td><div align="center">${jobemp.job_name }</div></td>
                    <td ><div align="center">${jobemp.dept_number } </div></td>
                    <td ><div align="center">${jobemp.dept_name } </div></td>
                    <td><div align="center"> ${jobemp.emp_name }</div></td>
                    <td><div align="center"> ${jobemp.emp_number }</div></td>
                  <!--   <td><div align="center"> 64275080 </div></td> -->
                    <td><div align="center"> ${jobemp.phone } </div></td>
                    <td><div align="center">${jobemp.toworktime } </div></td>
                    <td><div align="center">${jobemp.job_sum }</div></td>
                  </tr>
              </c:forEach>     
                  
                
                 
                 <!--  <tr bgcolor="#FFFFFF">
                    <td height="20"><div align="center">5</div></td>
                    <td><div align="center">2</div></td>
                    <td><div align="center">��������</div></td>
                    <td ><div align="center"> 5 </div></td>
                    <td ><div align="center">������</div></td>
                    <td><div align="center">����</div></td>
                    <td><div align="center"> 64275088 </div></td>
                    <td><div align="center"> 64275080 </div></td>
                    <td><div align="center"> 13032173891 </div></td>
                    <td><div align="center"> 1997-08-06 </div></td>
                    <td><div align="center">5</div></td>
                  </tr> -->
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
                            <td width="49%">�� 1 ҳ | �� <span class="right-text09">1</span> ҳ</td>
                            <td width="48%" align="right">&nbsp;</td>
                            <td width="5%">&nbsp;</td>
                          </tr>
                      </table></td>
                    </tr>
                </table></td>
          </tr>
        </table></td>
      </tr>
    </table>
  </form>
</div>
</body>
</html>
