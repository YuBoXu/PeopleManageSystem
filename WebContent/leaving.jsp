<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<link rel="stylesheet" href="css/common.css" type="text/css" />
<title>�ޱ����ĵ�</title>

</head>

<body>
<div id="man_zone">
<form id="form1" name="form1" method="post" action="LeavingManageServlet">
  <table width="500" align="center" height="190" border="1" bordercolor="#FFFFFF">
    <tr>
      <th colspan="2" scope="col"><strong>��д��ְ��Ϣ</strong>
     <%String empnumber=request.getParameter("empnumber");
		String jobnumber = request.getParameter("jobnumber");%>
		<input type="text" name="empnumber" value="<%=empnumber%>" style="visibility: hidden;"/>
		<input type="text" name="jobnumber" value="<%=jobnumber%>" style="visibility: hidden;"/>
      </th>
    </tr>
    <tr>
      <td width="100">��ְ���ڣ�</td>
      <td width="50" bgcolor="#FFFFFF"><label>
      <input name="lztime" type="text" id="starttime2"/>
      </label></td>
      
    </tr>
    <tr>
      <td>��ְ���ͣ�</td>
      <td bgcolor="#FFFFFF"><label>
        <select name="lztype">
          <option value="0">��������ְ����</option>
          <option value="������ְ">������ְ</option>
          <option value="����">����</option>
          <option value="����">����</option>
          <option value="����">����</option>
          <option value="������δͨ��">������δͨ��</option>
          </select>
      </label></td>
      
    </tr>
    <tr>
      <td>��ְȥ��</td>
      <td bgcolor="#FFFFFF"><label>
        <input type="text" name="lzgoto" />
      </label></td>
     
    </tr>
    <tr>
      <td height="40">�Ƿ�����˲ſ⣺</td>
      <td bgcolor="#FFFFFF"><label>
        <input name="radiobutton" type="radio" value="��" checked="checked" />
      �� 
      <input type="radio" name="radiobutton" value="��" />
      ��</label></td>
    </tr>
  </table>
  <p align="center">
    <label>
    <input type="submit" name="Submit" value="��ְ" />
    </label>
    <label>
    <input type="reset" name="Submit2" value="����" />
    </label>
  </p>
</form>
</div>

</body>
</html>
