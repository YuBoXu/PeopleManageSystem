<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<link rel="stylesheet" href="css/common.css" type="text/css" />
<title>��ϸ��Ϣ</title>
</head>

<body>
<div id="man_zone">
<form id="form1" name="form1" method="post" action="leaving.jsp?empnumber=${sessionScope.empinfo.emp_number }&jobnumber=${sessionScope.empinfo.job_number }">
  <table width="698" border="1" bordercolor="#FFFFFF" bgcolor="#FFFFFF">
    <tr>
      <th colspan="3" scope="col"><div align="center">Ա����ϸ��Ϣ</div></th>
    </tr>
    <tr>
      <td width="113"><div align="center">����</div></td>
      <td width="287"><div align="center">����</div></td>
      <td width="276"><div align="center">��ע</div></td>
    </tr>
    <tr>
      <td><div align="center">Ա���ţ�</div></td>
      <td>${sessionScope.empinfo.emp_number }</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><div align="center">������</div></td>
      <td>${sessionScope.empinfo.emp_name }</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><div align="center">�Ա�</div></td>
      <td>${sessionScope.empinfo.emp_sex }</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><div align="center">�������ڣ�</div></td>
      <td>${sessionScope.empinfo.birthday }</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><div align="center">���֤�ţ�</div></td>
      <td>${sessionScope.empinfo.idcard }</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><div align="center">���ţ�</div></td>
      <td>${sessionScope.empinfo.dept_name }</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><div align="center">��λ��</div></td>
      <td>${sessionScope.empinfo.job_name }</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><div align="center">��ְ���ڣ�</div></td>
      <td>${sessionScope.empinfo.cometime}</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><div align="center">�μӹ������ڣ�</div></td>
      <td>${sessionScope.empinfo.cometime }</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><div align="center">�ù���ʽ��</div></td>
      <td>${sessionScope.empinfo.emptype }</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><div align="center">��Ա��Դ��</div></td>
      <td>${sessionScope.empinfo.empfrom }</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><div align="center">������ò��</div></td>
      <td>${sessionScope.empinfo.politic }</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><div align="center">���壺</div></td>
      <td>${sessionScope.empinfo.emp_national }</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><div align="center">���᣺</div></td>
      <td>${sessionScope.empinfo.nativehome }</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><div align="center">��ϵ�绰��</div></td>
      <td>${sessionScope.empinfo.phone }</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><div align="center">�����ʼ���</div></td>
      <td>${sessionScope.empinfo.email }</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><div align="center">��ߣ�</div></td>
      <td>${sessionScope.empinfo.height }</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><div align="center">Ѫ�ͣ�</div></td>
      <td>${sessionScope.empinfo.blood }</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><div align="center">����״����</div></td>
      <td>${sessionScope.empinfo.marital }</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><div align="center">���᣺</div></td>
      <td>${sessionScope.empinfo.nativehome }</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><div align="center">�����أ�</div></td>
      <td>${sessionScope.empinfo.birthplace }</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><div align="center">�������ڵأ�</div></td>
      <td>${sessionScope.empinfo.home }</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><div align="center">���ѧ����</div></td>
      <td>${sessionScope.empinfo.education }</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><div align="center">���ѧλ��</div></td>
      <td>${sessionScope.empinfo.heightdegree }</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><div align="center">��ҵԺУ��</div></td>
      <td>${sessionScope.empinfo.school }</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><div align="center">��ѧרҵ��</div></td>
      <td>${sessionScope.empinfo.major }</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><div align="center">��ҵ���ڣ�</div></td>
      <td>${sessionScope.empinfo.graduatedata }</td>
      <td>&nbsp;</td>
    </tr>
  </table>
  <p>
    <label>
    <input type="submit" name="Submit" value="������ְ" />
    </label>
    <label>
    <input type="reset" name="Submit2" value="����" onclick="history.go(-1)"/>
    </label>
  </p>
</form>
</div>
</body>
<!-- <script type="text/javascript">
function back(){
	window.back();
}
</script> -->
</html>
