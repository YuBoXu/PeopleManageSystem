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
<form id="form1" name="form1" method="post" action="leavingse.html">

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
        <td>${sessionScope.leavedinfo.emp_number }</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td><div align="center">������</div></td>
        <td>${sessionScope.leavedinfo.emp_name }</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td><div align="center">�Ա�</div></td>
        <td>${sessionScope.leavedinfo.emp_sex }</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td><div align="center">�������ڣ�</div></td>
        <td>${sessionScope.leavedinfo.birthday }</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td><div align="center">���֤�ţ�</div></td>
        <td>${sessionScope.leavedinfo.idcard }</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td><div align="center">���ţ�</div></td>
        <td>${sessionScope.leavedinfo.dept_name }</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td><div align="center">��λ��</div></td>
        <td>${sessionScope.leavedinfo.job_name }</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td><div align="center">��ְ���ڣ�</div></td>
        <td>${sessionScope.leavedinfo.cometime }</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td><div align="center">�μӹ������ڣ�</div></td>
        <td>${sessionScope.leavedinfo.cometime }</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td><div align="center">�ù���ʽ��</div></td>
        <td>${sessionScope.leavedinfo.emptype }</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td><div align="center">��Ա��Դ��</div></td>
        <td>${sessionScope.leavedinfo.empfrom }</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td><div align="center">������ò��</div></td>
        <td>${sessionScope.leavedinfo.politic }</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td><div align="center">���壺</div></td>
        <td>${sessionScope.leavedinfo.emp_national }</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td><div align="center">���᣺</div></td>
        <td>${sessionScope.leavedinfo.nativehome }</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td><div align="center">��ϵ�绰��</div></td>
        <td>${sessionScope.leavedinfo.phone }</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td><div align="center">�����ʼ���</div></td>
        <td>${sessionScope.leavedinfo.email }</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td><div align="center">��ߣ�</div></td>
        <td>${sessionScope.leavedinfo.height}</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td><div align="center">Ѫ�ͣ�</div></td>
        <td>${sessionScope.leavedinfo.blood }</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td><div align="center">����״����</div></td>
        <td>${sessionScope.leavedinfo.marital }</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td><div align="center">���᣺</div></td>
        <td>${sessionScope.leavedinfo.nativehome }</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td><div align="center">�����أ�</div></td>
        <td>${sessionScope.leavedinfo.birthplace }</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td><div align="center">�������ڵأ�</div></td>
        <td>${sessionScope.leavedinfo.home }</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td><div align="center">���ѧ����</div></td>
        <td>${sessionScope.leavedinfo.education }</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td><div align="center">���ѧλ��</div></td>
        <td>${sessionScope.leavedinfo.heightdegree }</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td><div align="center">��ҵԺУ��</div></td>
        <td>${sessionScope.leavedinfo.school }</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td><div align="center">��ѧרҵ��</div></td>
        <td>${sessionScope.leavedinfo.major }</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td><div align="center">��ҵ���ڣ�</div></td>
        <td>${sessionScope.leavedinfo.graduatedata }</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>��ְ���ڣ�</td>
        <td>${sessionScope.leavedinfo.leave_time }</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>��ְ���ͣ�</td>
        <td>${sessionScope.leavedinfo.reason }</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>��ְȥ��</td>
        <td>${sessionScope.leavedinfo.place }</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td><div align="center">�Ƿ�����˲ſ⣺</div></td>
        <td>${sessionScope.leavedinfo.peoplelibrary }</td>
        <td>&nbsp;</td>
      </tr>
    </table>
    <p>
      <label>
      <input type="reset" name="Submit3" value="����" />
      </label>
    </p>
    <p>
      <label></label>
      <label></label></p>

</form>
</div>
</body>
</html>