<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<link rel="stylesheet" href="css/common.css" type="text/css" />
<title>��λ����</title>
<style type="text/css">
<!--
.STYLE1 {color: #FF0000}
.STYLE3 {
	font-size: 12px;
	font-weight: bold;
}
-->
</style>
<script type="text/javascript" language="javascript">
function link1(){
 
    if(document.fom.jobname.value==""){
   	alert("��λ���Ʋ���Ϊ�գ�");
	return false;
   }
    if(document.fom.size.value==""){
   	alert("��λ���Ʋ���Ϊ�գ�");
	return false;
   }
   if(document.fom.limt.value==""){
   	alert("�����޶�����Ϊ�գ�");
	return false;
   }
   return true;
   }
</script>
</head>

<body>
<div id="man_zone">
<form action="EditJobServlet" onsubmit="return link1(); " target="manFrame" name="fom"  id="fom">
<table width="100%" border="0" cellpadding="4" cellspacing="1" bgcolor="#464646" class="newfont03">
  <tr class="CTitle" >��λ��Ϣ�޸�
    <td height="22" colspan="9" align="center" style="font-size:16px"><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td width="21">&nbsp;</td>
        <td width="538"><span class="STYLE3">�޸ĸ�λ��Ϣ</span></td>
        <td width="144" align="left"><a href="#" onclick="sousuo()"></a></td>
      </tr>
    </table></td>
  </tr>
  <tr bgcolor="#EEEEEE">
    <td width="5%" align="center" height="30"><div align="center">���</div></td>
    <td width="11%"><div align="center">��λ����<span class="STYLE1">*</span></div></td>
    <td width="7%"><div align="center">����</div></td>
    <td width="11%"><div align="center">��������</div></td>
    <td width="11%"><div align="center">��λ����<span class="STYLE1">*</span></div></td>
    <td width="11%"><div align="center">�����޶�<span class="STYLE1">*</span></div></td>
    <td width="20%"><div align="center">����</div></td>
  </tr>
  <tr bgcolor="#FFFFFF">
    <td height="20"><div align="center"> 1 </div></td>
    
      <input name="jobid" type="hidden" value="${sessionScope.job.job_number }" size="15"/>
    
    <td ><div align="center">
      <label>
      <input name="jobname" type="text" value="${sessionScope.job.job_name }" size="10" />
      </label>
    </div></td>
     <td><div align="center">
                    <select name="select" >
                      <option value="����">����</option>
                      <option value="����">����</option>
                      <option value="Ӫ��">Ӫ��</option>
                      <option value="�г�">�г�</option>
                    </select>
                </div></td>
                <td><div align="center"><label>
						<select name="deptId">
							<option value="������">������</option>
							<option value="������">������</option>
							<option value="������">������</option>
							<option value="���۲�">���۲�</option>
							<option value="����">����</option>
					  </select>
                </label></div></td>
    <td><div align="center">
      <label>
      <input name="size" type="text" value="${sessionScope.job.job_count }" size="5" />
      </label>
    </div></td>
   <td><div align="center">
                  <label>
                  <select name="select2">
                    <option value="��">��</option>
                    <option value="��">��</option>
                     </select>
                  </label>
                </div></td>
    <td><div align="center">
      <label>
      <input name="Submit" type="submit" value="����" />
      </label>
      <label>
      <input name="reset" type="reset" value="ȡ��" />
      </label>
    </div></td>
  </tr>
</table>
</form>
</div>
</body>
</html>
