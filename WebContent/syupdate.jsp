<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<link rel="stylesheet" href="css/common.css" type="text/css" />
<title>�ޱ����ĵ�</title>
<style type="text/css">
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-image: url(../images/bg.gif);
}
.STYLE1 {color: #FFFFFF}
.STYLE2 {font-size: 16px}
</style>
<script type="text/javascript">
function yanzheng(){

//----���˽����֤----//
var kaohe=document.form1.zt.value;                                                                                                         
				if(kaohe=="haha"){                                                                                                                            
					alert("��ѡ�񿼺˽��");                                                                                                                     
					return false;                                                                                                                           
				}

                                                                                             
var py=document.form1.pingyu.value;                                                                                                         
if(py==''){                                                                                                                            
alert("����д��������");
return false;                                                                                                                           
				}
//-----
var zhuan=document.form1.zt.value;
if(zhuan=='ת��'||zhuan=='����')
{
 var b2 = confirm('�Ƿ�����޸ģ�'); 
 if(b2==true){
  window.location.href='trueupdate.html'; 
  return true;
 }
  if(b2 == false){                                                                         
	 window.location.href='syupdate.jsp';    
	   return false;                                                                            
	    }
return b2;
}
 //-------
if(zhuan=='��¼��')
{
 var b1 = confirm('�Ƿ������ְ����'); 
 if(b1==true){
  window.location.href='leavingselect.jsp'; 
  return true;
 }
  if(b1 == false){                                                                         
  window.location.href='syupdate.jsp';    
  return false;                                                                            
  }
return b1;
}
  
}
</script>
<script language="javascript" type="text/javascript" src="js/My97DatePicker/WdatePicker.js"></script>
</head>

<body>
<div id="man_zone">
<p class="STYLE1"></p>
<form id="form1" name="form1" method="post" action="EditTemporaryInfoServlet"  onsubmit=" return yanzheng();">
<p>�����ڿ��˱�</p>
<input name="number" value="${sessionScope.temporaryinfo.emp_number }" style="visibility: hidden;"/>
<table width="100%" border="0">
  <tr>
    <td><div align="center" class="STYLE2">�����ڿ��˱�</div></td>
  </tr>
</table>
 <label><br />
  </label>
<table width="34%" height="100%" border="0" align="center" >
  <tr>
    <td width="93">���˽��</td>
    <td width="192">
      <select name="zt">
        <option value="haha">----��ѡ��----</option>
        <option value="ת��">ת��</option>
        <option value="����">����</option>
        <option value="��¼��">��¼��</option>
      </select>
   
    </td>
    <td width="47">*����</td>
  </tr>
  <tr>
    <td>��������</td>
    <td><input type="text" id="starttime2" onClick="WdatePicker()" readonly="readonly"  name="time" value="${sessionScope.temporaryinfo.dealtime }"/></td>
    <td>*����</td>
  </tr>
  <tr>
    <td>�����ڿ�������</td>
    <td>
      <textarea name="pingyu" cols="25" rows="10"  >${sessionScope.temporaryinfo.checkresult }</textarea>
    </td>
    <td>*����</td>
  </tr>
  <tr>
    <td>��ע</td>
    <td>
      <textarea name="textarea" cols="25" rows="10">${sessionScope.temporaryinfo.checkexplanation }</textarea>
    </td>
    <td>ѡ��</td>
  </tr>
  <tr>
    <td>
      <input type="submit" name="Submit" value="�޸�"   />
    
    </td>
    <td>
      <input type="button" name="Submit2" value="ȡ��"   onclick="return cancle()"/>
   
    </td>
    <td>&nbsp;</td>
  </tr>
</table>
</form>

</body>
</html>