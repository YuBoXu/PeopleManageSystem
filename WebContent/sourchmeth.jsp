<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<link rel="stylesheet" href="css/common.css" type="text/css" />
<title>�ѵ���Ա����ѯ</title>
<style type="text/css">
<!--
.STYLE1 {color: #FF0000}
.STYLE3 {color: #000000}
-->
</style>
<script language="javascript" type="text/javascript" src="js/My97DatePicker/WdatePicker.js"></script>
<script language="javascript">

function link1(){
var bh=document.fom.bianhao.value;
var xm=document.fom.xingming.value;
var ks=document.fom.stime.value;
var js=document.fom.etime.value; 
var xz=document.fom.r.value;                                                                                                     
if(bh==''&&xm==''&&ks==''&&js==''){
alert("����д��ѯ����");
return false;  }      
 return true;                                                                                                                  
}
</script>
</head>

<body>
<div id="man_zone">
  <form action="FindMovedServlet" onsubmit="return link1();" method="post"  name="fom" id="fom" target="manFrame" >
    <div class="MainDiv">
      <table width="99%" border="0" cellpadding="1" cellspacing="0" class="CContent">
        <tr>
          <th class="tablestyle_title" ><div align="left">�ѵ���Ա����ѯ</div></th>
        </tr>
        <tr>
          <td class="CPanel"><table width="100%" border="0" cellpadding="1" cellspacing="1" bgcolor="#464646" class="newfont03">
              <tr class="CTitle" >
                <td height="22" align="center" style="font-size:16px"><div align="center">�ѵ���Ա����ѯ</div></td>
              </tr>
              <tr bgcolor="#EEEEEE">
                <td align="center"><br/>
                  <table width="55%" border="1" align="center">
                    <tr>
                      <td colspan="4"><div align="left"><span class="STYLE3">�������ѯ��������������дһ�</span></div></td>
                    </tr>
                    <tr>
                      <td width="14%"><label>
                      <div align="left"><span class="STYLE3">Ա����ţ�</span></div>
                      </label></td>
                      <td colspan="3"><div align="left">
                        <input name="empid" type="text" size="15" />
                      </div></td>
                    </tr>
                    <tr>
                      <td><div align="left"><span class="STYLE3">Ա������ ��</span></div></td>
                      <td colspan="3"><div align="left">
                        <input name="emp_name" type="text" size="15" />
                      </div></td>
                    </tr>
                    <tr>
                      <td><div align="left"><span class="STYLE3">��ʼʱ�䣺</span></div></td>
                      <td width="28%"><div align="left">
                        <input name="starttime" type="text" onClick="WdatePicker()" readonly="readonly" size="15" />
                      </div></td>
                      <td width="14%"><div align="left"><span class="STYLE3">����ʱ�䣺</span></div></td>
                      <td width="30%"><div align="left">
                        <input name="endtime" type="text"  onClick="WdatePicker()" readonly="readonly" size="15" />
                      </div></td>
                    </tr>
                    
                    <tr>
                      <td height="49"><div align="left"><span class="STYLE3">������ʽ��</span></div></td>
                      <td colspan="3"><label>
                      <div align="left">
                        <input name="moveway" type="radio" value="����" checked="checked" />
                        ��������
                        <input type="radio" name="moveway" value="����" />
                        ��������
                       </div>
                      </label></td>
                    </tr>

					<tr>
                      <td height="49"><div align="left"><span class="STYLE3">����ԭ��</span></div></td>
                      <td colspan="3"><label>
                      <div align="left">
                        <input type="radio" name="movereason" value="��ְ"  checked="checked"  />
                        ��ְ
                        <input type="radio" name="movereason" value="��ְ" />
                        ��ְ 
                        <input type="radio" name="movereason" value="����" />
                        ����</div>
                      </label></td>
                    </tr>
                    <tr>
                      <td height="53"><div align="left"></div></td>
                      <td colspan="3"><div align="left">
  <input type="submit" name="Submit" value="��ѯ" />
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input type="reset" name="Submit" value="���" />
                      </div></td>
                    </tr>
                  </table>
                <p>&nbsp;</p>                <div align="center">
                  <label></label>
                </div></td>
              </tr>
              
          </table></td>
        </tr>
      </table>
    </div>
  </form>
</div>
<body>

</body>
</html>