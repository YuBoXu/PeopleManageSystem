<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<link rel="stylesheet" href="css/common.css" type="text/css" />
<title>��������</title>
<style type="text/css">
<!--
.STYLE3 {font-size: 10; }
-->
</style>
<script language="javascript" type="text/javascript">
function link1(){                                                                                                  
	location.href="ygxx.html"
	 
		} 

</script>
</head>

<body>

<div id="man_zone">

  <form action="tianjia2.html" onsubmit="return link();" method="post" " name="fom" id="fom" target="manFrame" >
    <div class="MainDiv">
      <table width="97%" border="0" cellpadding="0" cellspacing="0" class="CContent">
        <tr>
          <th class="tablestyle_title" ><div align="left">�˲ſ���Ա��Ϣҳ��</div></th>
        </tr>
        <tr>
          <td class="CPanel"><table width="95%" border="0" align="center" cellpadding="4" cellspacing="1" bgcolor="#464646" class="newfont03">
            <tr class="CTitle" >
              <td height="22" colspan="13" align="center" style="font-size:16px"><p>�˲ſ���Ա��Ϣ��</p>                </td>
            </tr>
            <tr bgcolor="#EEEEEE">
              <td rowspan="4" align="center"><div align="center">
                <p>Ա��������Ϣ</p>
                </div></td>
              <td width="84">�˲ſ���*</td>
              <td width="84"><label>
               ${sessionScope.empinfo.emp_number }
              </label></td>
              <td width="84">����*</td>
              <td width="84"><label>
                 ${sessionScope.empinfo.emp_name }
              </label></td>
              <td width="84">�Ա�</td>
              <td width="84"><label>
                ${sessionScope.empinfo.emp_sex }
              </label></td>
              <td width="84">��������*</td>
              <td width="84"><label>
                 ${sessionScope.empinfo.birthday }
              </label></td>
              <td width="84">���֤��*</td>
              <td colspan="3"><label>
                  ${sessionScope.empinfo.idcard }
              </label></td>
            </tr>
            
            <tr bgcolor="#EEEEEE">
              <td>�ù���ʽ*</td>
              <td><label>
                ${sessionScope.empinfo.emptype }
              </label></td>
              <td>��Ա��Դ*</td>
              <td><label>
              ${sessionScope.empinfo.empfrom }
              </label></td>

              <td>������ò</td>
              <td><label>
                ${sessionScope.empinfo.politic }
              </label></td>
              <td>������</td>
              <td><label>
                ${sessionScope.empinfo.birthplace }
              </label></td>
              <td>����</td>
              <td width="57"><label>
                 ${sessionScope.empinfo.nativehome }
              </label></td>
              <td width="38">����</td>
              <td width="62"> ${sessionScope.empinfo.emp_national }</td>
            </tr>
            <tr bgcolor="#EEEEEE">
              <td>��ϵ�绰</td>
              <td> ${sessionScope.empinfo.phone }</td>
              <td>�����ʼ�</td>
              <td> ${sessionScope.empinfo.email }</td>
              <td>���</td>
              <td> ${sessionScope.empinfo.height }</td>
              <td>Ѫ��</td>
              <td><label>
                ${sessionScope.empinfo.blood }
              </label></td>
              <td>����״��</td>
              <td><label>
                 ${sessionScope.empinfo.marital }
              </label></td>
              <td>����</td>
              <td> ${sessionScope.empinfo.home }</td>
            </tr>
            
            <tr bgcolor="#EEEEEE">
              <td height="51">���ѧ��</td>
              <td><label>
                 ${sessionScope.empinfo.education }
              </label></td>
              <td>���ѧλ</td>
              <td><label>
                ${sessionScope.empinfo.heightdegree }
              </label></td>
              <td>��ҵԺУ</td>
              <td> ${sessionScope.empinfo.school }</td>
              <td>��ѧרҵ</td>
              <td> ${sessionScope.empinfo.major }</td>
              <td>��ҵ���� </td>
              <td colspan="3"><label>
                 ${sessionScope.empinfo.graduatedata }
                </label></td>
            </tr>
            <tr bgcolor="#EEEEEE">
              <td width="12" rowspan="7" align="center">������Ϣ</td>
              <td colspan="12"><strong>ְҵ����</strong></td>
              </tr>
            <tr bgcolor="#EEEEEE">
              <td>��ʼ����*</td>
              <td>��������*</td>
              <td>���ڵ�λ</td>
              <td>��������</td>
              <td>����ְ��</td>
              <td>��н/��н</td>
              <td>֤����</td>
              <td>֤����ְ��</td>
              <td>֤���˵绰</td>
              <td colspan="3"><p>��ע</p>                </td>
            </tr>
            <tr bgcolor="#EEEEEE">
              <td> ${sessionScope.occupationinfo.begintime }</td>
              <td> ${sessionScope.occupationinfo.endtime }</td>
              <td>${sessionScope.occupationinfo.company }</td>
              <td>${sessionScope.occupationinfo.jobdescribe }</td>
              <td>${sessionScope.occupationinfo.position }</td>
              <td>${sessionScope.occupationinfo.salary }</td>
              <td>${sessionScope.occupationinfo.referencepeople }</td>
              <td>${sessionScope.occupationinfo.referenceposition }</td>
              <td>${sessionScope.occupationinfo.referencephone }</td>
              <td colspan="3">${sessionScope.occupationinfo.explanation }</td>
            </tr>
            <tr bgcolor="#EEEEEE">
              <td colspan="2"><strong>�������*</strong></td>
              <td colspan="3"><label>
                 ${sessionScope.empinfo.otherlanguage }
              </label></td>
              <td colspan="2">������������̶�</td>
              <td colspan="5"><label>
          ${sessionScope.empinfo.languageskill }
        </label></td>
              </tr>
            <tr bgcolor="#EEEEEE">
              <td colspan="12"><strong>��ͥ��Ա������ϵ</strong></td>
              </tr>
            <tr bgcolor="#EEEEEE">
              <td colspan="2">�뱾�˹�ϵ*</td>
              <td colspan="2">����*</td>
              <td colspan="3">���ڵ�λ</td>
              <td>ְλ</td>
              <td colspan="4">��ϵ�绰</td>
              </tr>
            <tr bgcolor="#EEEEEE">
              <td colspan="2"><label>
               ${sessionScope.ralationinfo.ralation }
              </label></td>
              <td colspan="2">${sessionScope.ralationinfo.sname }</td>
              <td colspan="3">${sessionScope.ralationinfo.job }</td>
              <td>${sessionScope.ralationinfo.position }</td>
              <td colspan="4">${sessionScope.ralationinfo.phone }</td>
              </tr>
            
          </table></td>
        </tr>
      </table>
	  <br>
     
 
  </form>
</div>
</body>
</html>
