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
  <form action="YgxxServlet" onsubmit="return link();" method="post" name="fom" id="fom" target="manFrame" >
    <div class="MainDiv">
      <table width="97%" border="0" cellpadding="0" cellspacing="0" class="CContent">
        <tr>
          <th class="tablestyle_title" ><div align="left">��ְ��Ա��Ϣҳ��</div></th>
        </tr>
        <tr>
          <td class="CPanel"><table width="95%" border="0" align="center" cellpadding="4" cellspacing="1" bgcolor="#464646" class="newfont03">
            <tr class="CTitle" >
              <td height="22" colspan="11" align="center" style="font-size:16px"><p>��ְ��Ա��Ϣ��</p>                </td>
            </tr>
            <tr bgcolor="#EEEEEE">
              <td rowspan="5" align="center"><div align="center">
                <p>Ա��������Ϣ</p>
                </div></td>
              <td width="84">Ա�����</td>
              <td width="107"><label>
               ${sessionScope.ygxx.emp_number }
              </label></td>
              <td width="84">����</td>
              <td width="87"><label>
               ${sessionScope.ygxx.emp_name }
              </label></td>
              <td width="84">�Ա�</td>
              <td width="89"><label>
               ${sessionScope.ygxx.emp_sex }
              </label></td>
              <td width="84">��������*</td>
              <td width="88"><label>
               ${sessionScope.ygxx.birthday }
              </label></td>
              <td width="84">���֤��*</td>
              <td width="179"><label>
			  ${sessionScope.ygxx.idcard }
              </label></td>
            </tr>
            <tr bgcolor="#EEEEEE">
              <td>����*</td>
              <td><label>
                ${sessionScope.ygxx.dept_name }
              </label></td>
              <td>��λ*</td>
              <td><label>
                ${sessionScope.ygxx.job_name }
              </label></td>
              <td>����*</td>
              <td><label>
               ${sessionScope.ygxx.emp_national}
              </label></td>
              <td>��ְ����*</td>
              <td><label>
                ${sessionScope.ygxx.toworktime }
              </label></td>
              <td>�μӹ�������*</td>
              <td><label>
                 ${sessionScope.ygxx.begintime }
              </label></td>
            </tr>
            <tr bgcolor="#EEEEEE">
              <td>�ù���ʽ*</td>
              <td><label>
                 ${sessionScope.ygxx.emptype }
              </label></td>
              <td>��Ա��Դ*</td>
              <td><label>
                 ${sessionScope.ygxx.empfrom }
              </label></td>
              <td>������ò</td>
              <td><label>
                 ${sessionScope.ygxx.politic }
              </label></td>
              <td>������</td>
              <td><label>
                  ${sessionScope.ygxx.birthplace }
              </label></td>
              <td>����</td>
              <td><label>
                  ${sessionScope.ygxx.nativehome }
              </label></td>
            </tr>
            <tr bgcolor="#EEEEEE">
              <td>��ϵ�绰</td>
              <td>  ${sessionScope.ygxx.phone }</td>
              <td>�����ʼ�</td>
              <td>  ${sessionScope.ygxx.email}</td>
              <td>���</td>
              <td>  ${sessionScope.ygxx.height }</td>
              <td>Ѫ��</td>
              <td><label>
                 ${sessionScope.ygxx.blood }
              </label></td>
              <td>����״��</td>
              <td><label>
                  ${sessionScope.ygxx.marital }
              </label></td>
            </tr>
            
            <tr bgcolor="#EEEEEE">
              <td>�������ڵ�</td>
              <td>  ${sessionScope.ygxx.home }</td>
              <td>���ѧ��</td>
              <td><label>
              ${sessionScope.ygxx.education }
              </label></td>
              <td>���ѧλ</td>
              <td><label>
               ${sessionScope.ygxx.heightdegree }
              </label></td>
              <td>��ҵԺУ</td>
              <td>  
              ${sessionScope.ygxx.school}
              </td>
              <td>��ѧרҵ</td>
			   <td>  
			   ${sessionScope.ygxx.major }
			   </td>
              
            </tr>
            <tr bgcolor="#EEEEEE">
              <td width="55" rowspan="8" align="center">������Ϣ</td>
              <td colspan="10"><strong>ְҵ����</strong></td>
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
              <td><p>��ע</p>                </td>
             </tr>
             <tr bgcolor="#EEEEEE">
              <td>${sessionScope.ygxx.begintime }</td>
              <td>${sessionScope.ygxx.endtime }</td>
              <td>${sessionScope.ygxx.company }</td>
              <td>${sessionScope.ygxx.jobdescribe }</td>
              <td>${sessionScope.ygxx.position }</td>
              <td>${sessionScope.ygxx.salary }</td>
              <td>${sessionScope.ygxx.referencepeople }</td>
              <td>${sessionScope.ygxx.referenceposition }</td>
              <td>${sessionScope.ygxx.referencephone }</td>
              <td colspan="3">${sessionScope.ygxx.explanation }</td>
            </tr>
             
            <tr bgcolor="#EEEEEE">
              <td colspan="2"><strong>�������*</strong></td>
              <td colspan="3"><label>
               ${sessionScope.ygxx.language}
              </label></td>
              <td colspan="2">������������̶�</td>
              <td colspan="5"><label>
               ${sessionScope.ygxx.languageskill}
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
               ${sessionScope.ygxx.ralation }
              </label></td>
              <td colspan="2">${sessionScope.ygxx.sname }</td>
              <td colspan="3">${sessionScope.ygxx.job }</td>
              <td>${sessionScope.ygxx.position }</td>
              <td colspan="4">${sessionScope.ygxx.phone }</td>
          </table></td>
        </tr>
      </table>
	  <br>
      
    </div>
  </form>
</div>
</body>
</html>
