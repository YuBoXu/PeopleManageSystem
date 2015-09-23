<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<link rel="stylesheet" href="css/common.css" type="text/css" />
<title>试用期管理</title>
<script language="javascript">
function yanzheng(){
var yf=document.form1.select.value;
if(yf=='hehe'){
alert("请输入统计月份");
return false;
}
}
//----

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
.STYLE6 {color: #FF0000}
.STYLE8 {color: #006600}
</style>

</head>

<body>
<div id="man_zone">
<form id="form1" name="form1" method="post"  onsubmit="return yanzheng();" action="renshilist.jsp"  >
  <p><span class="STYLE5">人事月报查询</span></p>
  <table width="100%" border="0">
    <tr>
      <td><div align="center"><span class="STYLE5">人事月报查询</span></div></td>
    </tr>
  </table>
  <label><br />
  </label>
  <table width="45%" border="0" align="center">
    <tr>
      <td colspan="2"><span class="STYLE4">请输入查询条件：</span></td>
      </tr>
    
    <tr>
      <td><span class="STYLE4">统计年份：</span></td>
      <td><select name="select2">
        <option value="hehe">---请选择---</option>
        
        <option value="2000">2000</option>
        <option value="2001">2001</option>
        <option value="2002">2002</option>
        <option value="2003">2003</option>
        <option value="2004">2004</option>
        <option value="2005">2005</option>
        <option value="2006">2006</option>
        <option value="2007">2007</option>
        <option value="2008">2008</option>
        <option value="2009">2009</option>
        <option value="2010">2010</option>
        <option value="2011">2011</option>
        <option value="2012">2012</option>
        <option value="2013">2013</option>
         <option value="2014">2014</option>
        <option value="2015">2015</option>
      </select></td>
    </tr>
    <tr>
      <td width="43%"><span class="STYLE4">统计月份：</span></td>
      <td width="57%"><label></label>
        <select name="select">
          <option value="hehe">---请选择---</option>
          <option value="1">1</option>
          <option value="2">2</option>
          <option value="3">3</option>
          <option value="4">4</option>
          <option value="5">5</option>
          <option value="6">6</option>
          <option value="7">7</option>
          <option value="8">8</option>
          <option value="9">9</option>
          <option value="10">10</option>
          <option value="11">11</option>
          <option value="12">12</option>
        </select>
      </label></td>
      </tr>
    
    <tr>
      <td colspan="2" align="center"><input type="submit" name="Submit" value="查询" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="reset" name="Submit2" value="取消"/></td>
      <td>&nbsp;</td>
      </tr>
  </table>
  <p>&nbsp;</p>
</form>
</div>
</body>
</html>