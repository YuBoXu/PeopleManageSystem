<%@ page language="java" contentType="text/html; charset=gb2312"
    pageEncoding="gb2312"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="css/common.css" type="text/css" />
<title>��������</title>

<style type="text/css">
<!--
.STYLE1 {color: #FF0000}
-->
</style>
</head>
<body>
<form action="hyAddManagerServlet" method="post" onsubmit="return checkForm()">
<div id="man_zone">
  
    <div class="MainDiv">
      <table width="99%" border="0" cellpadding="0" cellspacing="0" class="CContent">
        <tr>
          <th class="tablestyle_title" ><div align="left">��ӹ���Աҳ��</div></th>
        </tr>
        <tr>
          <td class="CPanel"><table width="100%" border="0" cellpadding="4" cellspacing="1" bgcolor="#464646" class="newfont03">
              <tr class="CTitle" >
                <td height="22" colspan="8" align="center" style="font-size:16px">��ӹ���Ա</td>
              </tr>
              <tr bgcolor="#EEEEEE">
                <td height="30" align="center"><div align="center">����Ա����<span class="STYLE1">*</span></div></td>
                <td width="160"><div align="center">��¼����<span class="STYLE1">*</span></div></td>
                <td width="123"><div align="center">ȷ������<span class="STYLE1">*</span></div></td>
                <td width="99"><div align="center">����</div></td>
                <td width="99"><div align="center">��ϵ�绰</div></td>
                <td width="147"><div align="center">�������</div></td>
                <td width="219"><div align="center">����</div></td>
              </tr>
              <tr bgcolor="#FFFFFF">
                <td height="40" align="center"><div align="center">
                    <label>
                    <input name="manager_name" id="manager_name" type="text" size="12" />
                    </label>
                </div></td>
                <td><div align="center">
                  <label>
                  <input name="manager_pwd" id="manager_pwd" type="password" value="" size="10" />
                  </label>
                </div>             </td>
                <td><div align="center">
                    <label>
                    <input name="manager_pwd1" id="manager_pwd1" type="password" value="" size="10" />
                    </label>
                </div></td>
                <td><div align="center">
                    <label>
                    <input name="manager_dept" id="manager_dept" type="text" value="" size="10" />
                    </label>
                </div></td>
                <td><div align="center">
                    <label>
                    <input name="manager_tel" id="manager_tel" type="text" value="" size="10" />
                    </label>
                </div></td>
                
                <td><div align="center">
                    <label>
                    <input name="manager_date" type="text"  onClick="WdatePicker()" readonly="readonly" value="" size="16" />
                    </label>
                </div></td>
                <td><div align="center"><a href="#"></a>
                    <label>
                  <input type="submit" id="sumbit"name="submit" value="���" />
                  </label>
                    <label>
                    <input type="reset" id="reset" name="reset" value="����" />
                    </label>
                    <label></label>
                </div></td>
              </tr>
          </table></td>
        </tr>
      </table>
    </div>
  </form>
</div>
</body>
<script language="javascript" type="text/javascript" src="js/My97DatePicker/WdatePicker.js"></script>
<script language="javascript">
function checkForm(){
var name=document.getElementById("manager_name");
if(name.value==''){
   window.alert("���������Ա����");
return false;
}
//-----
var pwd=document.getElementById("manager_pwd");
var pwd1=document.getElementById("manager_pwd1");
if(pwd.value==''){
   window.alert("����������");
return false;
}
if(pwd1.value==''){
   window.alert("��ȷ������");
return false;
}
if(pwd.value!=pwd1.value){
   window.alert("�����������벻һ��");
return false;
}

}
</script>
</html>