<%@ page language="java" contentType="text/html; charset=gb2312"
    pageEncoding="gb2312"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="css/common.css" type="text/css" />
<title>Insert title here</title>
<style type="text/css">
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-image: url(../images/bg.gif);
}
.STYLE4 {color: #666}
.STYLE5 {font-size: 16px}
</style>
</head>
<body>
<div id="man_zone">
<form action="hySelectManagerServlet" method="post"  onsubmit="return checkForm()" >
  ����Ա��ѯ
  </label>
  <label></label>
  <label></label>
  <label></label>
  <label></label>
  <label><br />
  </label>
  <table width="100%" border="0">
    <tr>
     <td height="22" align="center" style="font-size:16px"><div align="center">����Ա��ѯ
         </label>
     </div>       </td></td>
    </tr>
  </table>
  <label><br />
  </label>
    <table width="55%" border="0" align="center">
    <tr>
      <td colspan="2"><span class="STYLE4">�������ѯ��������������дһ����߶��</span></td>
      </tr>
    <tr>
      <td width="43%"><label><span class="STYLE4">����Ա��ţ�      </span></label></td>
      <td width="57%"><input type="text" id = "manager_id" name="manager_id" /></td>
      </tr>
    <tr>
      <td><span class="STYLE4">����Ա������֧��ģ����ѯ�� ��</span></td>
      <td><input type="text" id = "manager_name" name="manager_name"  /></td>
      </tr>
    <tr>
      <td><span class="STYLE4">����Ա���ţ�</span></td>
      <td><input type="text" id = "manager_dept" name="manager_dept"  /></td>
      </tr>
    <tr>
      <td align="center" colspan="2"><input type="submit" id = "submit" name="sumbit" value="��ѯ" />&nbsp;
        <input type="button" id="cancel" name="cancel" value="ȡ��" />     </td>
      </tr>
  </table>

</form>
</div>
</body>
<script language="javascript">

//---
function cancel(){
location.href("test.html");
return false;
}
//-----
function checkForm(){
var id=document.getElementById("manager_id");
var name=document.getElementById("manager_name");
var dept=document.getElementById("manager_dept");
                                                                                                  
if(id.value==''&&name.value==''&&dept.value==''){                                                                                                                            
   window.alert("����д��ѯ����");
   return false; 
}                                                                                                                         
}
</script>
</html>