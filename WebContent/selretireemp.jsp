<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<link rel="stylesheet" href="css/common.css" type="text/css" />
<title>��ְԱ����ѯ</title>
<script language="javascript" type="text/javascript" src="js/My97DatePicker/WdatePicker.js"></script>
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
.STYLE6 {color: #FF0000}
.STYLE8 {color: #006600}
</style>

</head>

<body>
<div id="man_zone">
<form id="form1" name="form1" method="post"  action="newemplist.html"  >
  <p><span class="STYLE5">��ְԱ����ѯ</span></p>
  <table width="100%" border="0">
    <tr>
      <td><div align="center"><span class="STYLE5">��ְԱ����ѯ</span></div></td>
    </tr>
  </table>
  <label><br />
  </label>
  <table width="45%" border="0" align="center">
    <tr>
      <td colspan="2"><span class="STYLE4">�������ѯ������</span></td>
      </tr>
    
    <tr>
      <td width="43%"><span class="STYLE4">ͳ�ƿ�ʼʱ�䣺</span></td>
      <td width="57%"><input type="text" id="starttime2"  onClick="WdatePicker()" readonly="readonly"  name="time"/>
        <span class="STYLE6">*����</span></td>
      </tr>
    <tr>
      <td><span class="STYLE4">ͳ�ƽ���ʱ�䣺</span></td>
      <td><input type="text"  onClick="WdatePicker()" readonly="readonly"  name="time2" />
        <span class="STYLE6">        *����</span></td>
      </tr>
    <tr>
      <td><span class="STYLE4">ָ�����ţ�</span></td>
      <td> <select name="super">
							<option value="1">������</option>
							<option value="2">������</option>
							<option value="3">������</option>
							<option value="4">���۲�</option>
							<option value="5">����</option>
					  </select>
        <span class="STYLE8">        ѡ��</span></td>
    </tr>
    <tr>
      <td><input type="submit" name="Submit" value="��ѯ" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="reset" name="Submit2" value="ȡ��"/></td>
      <td>&nbsp;</td>
      </tr>
  </table>
  <p>&nbsp;</p>
</form>
</div>

</body>
</html>