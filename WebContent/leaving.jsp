<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<link rel="stylesheet" href="css/common.css" type="text/css" />
<title>无标题文档</title>

</head>

<body>
<div id="man_zone">
<form id="form1" name="form1" method="post" action="LeavingManageServlet">
  <table width="500" align="center" height="190" border="1" bordercolor="#FFFFFF">
    <tr>
      <th colspan="2" scope="col"><strong>填写离职信息</strong>
     <%String empnumber=request.getParameter("empnumber");
		String jobnumber = request.getParameter("jobnumber");%>
		<input type="text" name="empnumber" value="<%=empnumber%>" style="visibility: hidden;"/>
		<input type="text" name="jobnumber" value="<%=jobnumber%>" style="visibility: hidden;"/>
      </th>
    </tr>
    <tr>
      <td width="100">离职日期：</td>
      <td width="50" bgcolor="#FFFFFF"><label>
      <input name="lztime" type="text" id="starttime2"/>
      </label></td>
      
    </tr>
    <tr>
      <td>离职类型：</td>
      <td bgcolor="#FFFFFF"><label>
        <select name="lztype">
          <option value="0">请输入离职类型</option>
          <option value="主动辞职">主动辞职</option>
          <option value="辞退">辞退</option>
          <option value="退休">退休</option>
          <option value="开除">开除</option>
          <option value="试用期未通过">试用期未通过</option>
          </select>
      </label></td>
      
    </tr>
    <tr>
      <td>离职去向：</td>
      <td bgcolor="#FFFFFF"><label>
        <input type="text" name="lzgoto" />
      </label></td>
     
    </tr>
    <tr>
      <td height="40">是否进入人才库：</td>
      <td bgcolor="#FFFFFF"><label>
        <input name="radiobutton" type="radio" value="是" checked="checked" />
      是 
      <input type="radio" name="radiobutton" value="否" />
      否</label></td>
    </tr>
  </table>
  <p align="center">
    <label>
    <input type="submit" name="Submit" value="离职" />
    </label>
    <label>
    <input type="reset" name="Submit2" value="重置" />
    </label>
  </p>
</form>
</div>

</body>
</html>
