<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<link rel="stylesheet" href="css/common.css" type="text/css" />
<title>��������</title>
<style type="text/css">
<!--
.STYLE1 {color: #FF0000}
-->
</style>
<script type="text/javascript" language="javascript">
function link1(){
   if(document.fom.jobname.value==""){
   	alert("��û�������λ����");
	return false;
   }
    if(document.fom.size.value==""){
   	alert("��λ���Ʋ���Ϊ�գ�");
	return false;
   }
   
  
   }
</script>
</head>

<body>
<div id="man_zone">
  <form action="AddJobServlet" method="post" name="fom" id="fom" target="manFrame" onsubmit="return link1();">
    <div class="MainDiv">
      <table width="99%" border="0" cellpadding="0" cellspacing="0" class="CContent">
        <tr>
          <th class="tablestyle_title" ><div align="left">��λ���ҳ��</div></th>
        </tr>
        <tr>
          <td class="CPanel"><table width="100%" border="0" cellpadding="4" cellspacing="1" bgcolor="#464646" class="newfont03">
              <tr class="CTitle" >
                <td height="22" colspan="10" align="center" style="font-size:16px" >�� �� �� λ</td>
              </tr>
              <tr bgcolor="#EEEEEE">
                <td colspan="2" align="center"><div align="center">���</div>
                <div align="center"></div></td>
                <td><div align="center">��λ����<span class="STYLE1">*</span></div></td>
                <td><div align="center">����</div></td>
                <td><div align="center">��λ����<span class="STYLE1">*</span></div></td>
                <td><div align="center">�����޶�<span class="STYLE1">*</span></div></td>
                <td><div align="center">����</div></td>
              </tr>
              <tr bgcolor="#FFFFFF">
                <td colspan="2" align="center"><div align="center">1</div></td>
                <td ><div align="center">
                  <label>
                  <input name="jobname" type="text" size="16" />
                  </label>
                </div></td>
                <td><div align="center">
                    <select name="select">
                      <option value="����">����</option>
                      <option value="����">����</option>
                      <option value="Ӫ��">Ӫ��</option>
                      <option value="�г�">�г�</option>
                    </select>
                </div></td>
                <td><div align="center">
                    <label>
                    <input name="size" type="text" size="10" value="0" />
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
                  <input name="Submit" type="submit" value="����">
                  </label>
                  <label>
                  <input name="reset" type="reset" value="ȡ��" />
                  </label>
</div></td>
              </tr>
          </table></td>
        </tr>
      </table>
    </div>
  </form>
</div>
</body>
</html>
