<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<link rel="stylesheet" href="css/common.css" type="text/css" />
<title>新聘员工报表</title>
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
<form id="form" name="form" method="post" action="FindNewServlet"  >
  <p><span class="STYLE5">新聘员工查询</span></p>
  <table width="100%" border="0">
    <tr>
      <td><div align="center"><span class="STYLE5">新聘员工查询</span></div></td>
    </tr>
  </table>
  <label><br />
  </label>
  <table width="45%" border="0" align="center">
    <tr>
      <td colspan="2"><span class="STYLE4">请输入查询条件：</span></td>
      </tr>
    
    <tr>
      <td width="43%"><span class="STYLE4">统计开始时间：</span></td>
      <td width="57%"><input type="text" id="starttime"onClick="WdatePicker()" readonly="readonly" name="starttime"/>
        <span class="STYLE6">*必填</span></td>
      </tr>
    <tr>
      <td><span class="STYLE4">统计结束时间：</span></td>
      <td><input type="text"  onClick="WdatePicker()" readonly="readonly"  name="endtime" />
        <span class="STYLE6">        *必填</span></td>
      </tr>
    <tr>
      <td><span class="STYLE4">指定部门：</span></td>
      <td><select name="deptname">
							<option value="行政部">行政部</option>
							<option value="生产部">生产部</option>
							<option value="技术部">技术部</option>
							<option value="销售部">销售部</option>
							<option value="财务部">财务部</option>
					  </select>
        <span class="STYLE8">        选填</span></td>
    </tr>
    <tr>
      <td colspan="2" align="center"><input type="submit" name="Submit" value="查询" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="reset" name="Submit" value="取消"/></td>
     
      </tr>
  </table>
  <p>&nbsp;</p>
</form>
</div>
</body>
</html>