<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<link rel="stylesheet" href="css/common.css" type="text/css" />
<title>试用期管理</title>
<script language="javascript" type="text/javascript" src="js/My97DatePicker/WdatePicker.js"></script>
<script language="javascript">


</script>
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
<form id="form1" name="form1" method="post" action="FindTemporaryEmpServlet"  >
  <p>试用期员工查询</p>
  <table width="100%" border="0">
    <tr>
      <td><div align="center"><span class="STYLE5">试用期员工查询</span></div></td>
    </tr>
  </table>
  <label><br />
  </label>
  <table width="45%" border="0" align="center">
    <tr>
      <td colspan="2"><span class="STYLE4">请输入查询条件：（至少填写一项）</span></td>
      </tr>
    <tr>
      <td width="43%"><label><span class="STYLE4">员工编号：</span></label></td>
      <td width="57%"><input type="text" name="bianhao" /></td>
      </tr>
    <tr>
      <td><span class="STYLE4">员工姓名 (支持模糊查询)：</span></td>
      <td><input type="text" name="xingming" /></td>
      </tr>
    <tr>
      <td><span class="STYLE4">试用期开始时间：</span></td>
      <td><input type="text" id="starttime2" name="starttime2" onClick="WdatePicker()" readonly="readonly"  /></td>
      </tr>
    <tr>
      <td><span class="STYLE4">试用期结束时间：</span></td>
      <td><input type="text" name="time2" onClick="WdatePicker()" readonly="readonly"   /></td>
      </tr>
    <tr>
      <td colspan="2"  align="center">
      <input type="submit" name="Submit" value="查询" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <input type="reset" name="Submit"  value="取消"/></td> 
      </tr>
  </table>
  <p>&nbsp;</p>
</form>
</div>
</body>
</html>
