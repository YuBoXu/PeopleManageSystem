<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<link rel="stylesheet" href="css/common.css" type="text/css" />
<title>�ޱ����ĵ�</title>
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
</style>
</head>

<body>
<div id="man_zone">
<form id="form1" name="form1" method="post"  onsubmit="return yanzheng();" action="FindSkStaffServlet">
  ת��Ա����ѯ
  </label>
  <label></label>
  <label></label>
  <label></label>
  <label></label>
  <label><br />
  </label>
  <table width="100%" border="0">
    <tr>
     <td height="22" align="center" style="font-size:16px"><div align="center">ת��Ա����ѯ
         </label>
     </div>       </td></td>
    </tr>
  </table>
  <label><br />
  </label>
    <table width="50%" border="0" align="center">
    <tr>
      <td colspan="2"><span class="STYLE4">�������ѯ��������������дһ�</span></td>
      </tr>
    <tr>
      <td width="43%"><label><span class="STYLE4">Ա����ţ�      </span></label></td>
      <td width="57%"><input type="text" name="bianhao" /></td>
      </tr>
    <tr>
      <td><span class="STYLE4">Ա��������֧��ģ����ѯ�� ��</span></td>
      <td><input type="text" name="xingming" /></td>
      </tr>
    <tr>
      <td>Ա�����ţ�</td>
      <td><input type="text" name="bumen" /></td>
      </tr>
    <tr>
      <td><span class="STYLE4">ת��ʱ�䣺</span></td>
      <td><input type="text" name="time" onClick="WdatePicker()" readonly="readonly" /></td>
      </tr>
    <tr>
      <td colspan="2" align="center"><input type="submit" name="buttion" value="��ѯ" />&nbsp;
        <input type="submit" name="Submit2" value="ȡ��"  onclick=" return cancle()" />     </td>
     
      </tr>
  </table>

</form>
</div>
</body>
</html>