<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<link rel="stylesheet" href="css/common.css" type="text/css" />
<title>���Ÿ�λ����ҳ��</title>
<style type="text/css">
<!--
.STYLE3 {font-size: 10; }
.STYLE4 {color: #FF0000}
-->
</style>
<script language="javascript" type="text/javascript">
 
  function changeJob( ){  
        
     var dept=document.form.newdept_name.value;   
     var newOption1,newOption2,newOption3;  
     switch(dept){  
         //�����û�ѡ���ʡ�ݶ�̬�������������б�  
       case  "������" :  
            newOption1= new Option("����","1");  
            newOption2= new Option("������","2");  
            newOption3= new Option("ְԱ","3"); 
            break;  
       case "������" :   
            newOption1= new Option("�����ܼ�","5");  
            newOption2= new Option("CTO","6");
            newOption3= new Option("����ʦ","4");  
            break;  
       case "������" :   
           newOption1= new Option("����","7");  
           newOption2= new Option("ְԱ","8");  
           newOption3= new Option("������","9");  
            break;
           
      }  
      //���ԭ��ѡ��  
     document.form.newjob_id.options.length=0;  
     //��ѡ����ӵ�ѡ������  
     document.form.newjob_id.options.add(newOption1);  
     document.form.newjob_id.options.add(newOption2);  
     document.form.newjob_id.options.add(newOption2); 
  }  

</script>
</head>

<body>
<div id="man_zone">
  <form action="MoveEmpServlet" onsubmit="return link();" method="post" name="form" id="form" target="manFrame" >
    <div class="MainDiv">
      <table width="97%" border="0" cellpadding="0" cellspacing="0" class="CContent">
        <tr>
          <th class="tablestyle_title" ><div align="left">���Ÿ�λ����ҳ��</div></th>
        </tr>
        <tr>
          <td class="CPanel"><table width="102%" border="0" align="center" cellpadding="4" cellspacing="1" bgcolor="#464646" class="newfont03">
            <tr class="CTitle" >
              <td height="22" colspan="15" align="center" style="font-size:16px"><p>���Ÿ�λ��������</p>
                <p>&nbsp;</p></td>
            </tr>
            <tr>
              <td rowspan="4" align="center"><div align="center">
                  <p>����Ա��������Ϣ</p>
                </div></td>
              <td height="30" ><div align="center" class="STYLE3">Ա�����</div></td>
              <td><div align="center" class="STYLE3">Ա������</div></td>
              <td><div align="center" class="STYLE3">�Ա�</div></td>
              <td><div align="center" class="STYLE3">��������</div></td>
              <td width="71"><div align="center" class="STYLE3">������ò</div></td>
              <td width="71"><div align="center" class="STYLE3">����</div></td>
              <td width="71"><div align="center" class="STYLE3">����</div></td>
              <td><div align="center" class="STYLE3">���֤��</div>
                  <div align="center" class="STYLE3"></div></td>
              <td colspan="3"><div align="center" class="STYLE3">����״��</div></td>
              <td width="44" ><div align="center" class="STYLE3">���</div></td>
              <td width="43"><div align="center" class="STYLE3">Ѫ��</div></td>
              <td><div align="center" class="STYLE3">��ϵ�绰</div></td>
            </tr>
            <c:forEach var="info" items="${sessionScope.info }">
            <tr>
           <input type="hidden"  name="empid" value=" ${info. emp_number}"/>
              <td ><div align="center" class="STYLE3" >${info. emp_number}</div></td>
              <td><div align="center" class="STYLE3">${info.emp_name}</div></td>
              <td><div align="center" class="STYLE3">${info.emp_sex}</div></td>
              <td><div align="center" class="STYLE3">${info.birthday}</div></td>
              <td><div align="center" class="STYLE3">${info.politic}</div></td>
              <td><div align="center" class="STYLE3">${info.emp_nationa}</div></td>
              <td><div align="center" class="STYLE3">${info.nativehoml}</div></td>
                <td>  <div align="center" class="STYLE3"></div>${info.idcard}</td>
              <td colspan="3"><div align="center" class="STYLE3">${info.marita}</div>
                  <div align="center" class="STYLE3"></div></td>
              <td><div align="center" class="STYLE3">${info.height}</div></td>
              <td><div align="center" class="STYLE3">${info.blood}</div></td>
              <td width="85"><div align="center" class="STYLE3">${info.phone}</div></td>
            </tr>
            <tr >
              <td><div align="center" class="STYLE3">������</div></td>
              <td><div align="center" class="STYLE3">�������ڵ�</div></td>
              <td><div align="center" class="STYLE3">���ѧ��</div></td>
              <td><div align="center" class="STYLE3">���ѧλ</div></td>
              <td colspan="2"><div align="center" class="STYLE3">��ҵԺУ</div></td>
              <td><span class="STYLE3">��ҵרҵ</span></td>
              <td><span class="STYLE3">��ѧרҵ</span></td>
              <td colspan="4"><div align="center" class="STYLE3">��ҵ����</div></td>
              <td colspan="2"><div align="center" class="STYLE3">�����ʼ�</div></td>
              </tr>
            <tr >
              <td height="37"><div align="center" class="STYLE3">${info.birthplace}</div></td>
              <td><div align="center" class="STYLE3">${info.home}</div></td>
              <td><div align="center" class="STYLE3">${info.education}</div></td>
              <td><div align="center" class="STYLE3">${info.heightdegree}</div></td>
              <td colspan="2"><div align="center" class="STYLE3">${info.school}</div></td>
              <td><span class="STYLE3">${info.major}</span></td>
              <td><span class="STYLE3">${info.major}</span></td>
              <td colspan="4"><div align="center" class="STYLE3">
                <div align="center" class="STYLE3">${info.graduatedata}</div>
              </div></td>
              <td colspan="2" ><div align="center" class="STYLE3">${info.email}</div></td>
              </tr>
              </c:forEach>
            <tr >
              <td width="55" rowspan="2" align="center"><div align="center" class="STYLE3">��ת��Ϣ</div></td>
              <td width="70" height="30"><div align="center" class="STYLE3">ԭ���ű��<span class="STYLE4">*</span></div></td>
              <td width="70"><div align="center" class="STYLE3">ԭ��������<span class="STYLE4">*</span></div></td>
              <td width="71"><div align="center" class="STYLE3">ԭ��λ���<span class="STYLE4">*</span></div></td>
              <td width="71"><div align="center" class="STYLE3">ԭ��λ����<span class="STYLE4">*</span></div></td>
              <td  colspan="4"><div align="center" class="STYLE3">�²��ż���λ<span class="STYLE4">*</span></div></td>
              
              <td colspan="4"><div align="center" class="STYLE3">��ת����</div>
                  <div align="center" class="STYLE3"></div></td>
              <td colspan="2"><div align="center" class="STYLE3">��ת����<span class="STYLE4">*</span></div></td>
              </tr>
    
            <tr >
              <td width="70" height="32" >
                <label></label>
                <label> </label>
                <div align="center">
                  ${sessionScope.moveInfo.dept_number}
 
                </div>
              </td>
              <td ><div align="center" class="STYLE3">
              	<input type="hidden"  name="dept_name" value="${sessionScope.moveInfo.dept_name}">
                  <label>
                   ${sessionScope.moveInfo.dept_name}
                  </label>
              </div></td>
              <td ><span class="STYLE3">
                <label></label>
                <label>
                 ${sessionScope.moveInfo.job_number}
                </label>
              </span></td>
              <input type="hidden"  name="job_name" value="${sessionScope.moveInfo.job_name}">
              <td  name="job_name"><span class="STYLE3">
                <label></label>
                <label>
                 ${sessionScope.moveInfo.job_name}
                </label>
              </span></td>
              <td colspan="4"><span class="STYLE3">
                <label></label>
                <label>
					<select name="newdept_name" onChange="changeJob()">
					    <option value="��">��ѡ����</option>
						<option value="������">������</option>
						<option value="������">������</option>
						<option value="���۲�">���۲�</option>
						<option value="������">������</option>
				  </select>
				    </div>
                  
				  <select name="newjob_id" >
				  
				  </select>
				  
                </label>
              </span></td>
              <td colspan="2"><div align="center" class="STYLE3">
                  <label>
                  <select name="type">
                    <option value="����">����</option>
                    <option value="����">����</option>
                  </select>
                  </label>
                </div>
                  <div align="center" class="STYLE3">
                    <label></label>
                  </div>
                <div align="center" class="STYLE3"></div></td>
              <td colspan="2" ><span class="STYLE3">
                <select name="reason">
                  <option value="��ְ">��ְ</option>
                  <option value="��ְ">��ְ</option>
                </select>
              </span></td>
              <td colspan="2" ><div align="center" class="STYLE3">
                  <label></label>
                  <label>
                  <input name="movetime" type="text" size="12" />
                  </label>
              </div></td>
              </tr>
          </table></td>
        </tr>
      </table>
	  <br>
      <div align="center">
        <input type="submit" name="Submit" value="��ת" />
       &nbsp;&nbsp;
&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     
<input type="button" name="ca" value="ȡ��" onclick="window.history.back()"/>
  
      </div>
    </div>
  
  </form>
</div>
</body>
</html>