<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<link rel="stylesheet" href="css/common.css" type="text/css" />
<title>��������</title>
<style type="text/css">
<!--
.STYLE4 {color: #FF0000}
.STYLE7 {color: #666}
-->
</style>
<script language="javascript" type="text/javascript" src="js/My97DatePicker/WdatePicker.js"></script>
<script language="javascript" type="text/javascript">

//-----
function yanzheng(){
var bh=document.form1.bianhao.value;
var xm=document.form1.xingming.value;
var bm=document.form1.bumen.value;
var sj=document.form1.time.value;                                                                                                     
if(bh==''&&xm==''&&bm==''&&sj==''){                                                                                                                            
alert("����д��ѯ����");
return false;  }  
                                                                                            
}

function link(){                                                                                                  
			if(document.fom.ename.value =='')  
	          { alert("Ա����������Ϊ�գ�");   
	           return false;
			} 
			if(document.fom.bthday.value =='')  
	          { 
			  alert("�������ڲ���Ϊ�գ�");   
	          return false;} 
			if(document.fom.id.value =='')  
	          { alert("���֤�Ų���Ϊ�գ�"); 
		  
	        return false;} 
			if(document.fom.st.value =='')  
	          { alert("������д�����ڿ�ʼʱ�䣡"); 
		  
	        return false;} 
			if(document.fom.et.value =='')  
	          { alert("������д�����ڽ���ʱ�䣡"); 
		  
	        return false;} 
			return true;                                                                   
	                                                                                         
	}                                                                                                                    
	                      
</script>
</head>

<body>
<div id="man_zone">
  <form action="AddEmpInfoServlet" onsubmit="return link();" method="post" name="fom" id="fom" target="manFrame" >
    <div class="MainDiv">
   <table width="97%" border="0" cellpadding="0" cellspacing="0" class="CContent">
        <tr>
          <th class="tablestyle_title" ><div align="left">Ա����ְҳ��</div></th>
        </tr>
        <tr>
          <td class="CPanel"><table width="100%" border="1">
              <tr>
                <td colspan="13"><div align="center">Ա����ְ��Ϣ��</div></td>
              </tr>
              <tr>
                <td width="7%" rowspan="4"><div align="center">
                    <p>Ա��������Ϣ</p>
                </div></td>
                <td width="6%" class="newfont03" colspan="2">����<span class="STYLE4">*</span></td>
                <td width="10%" class="newfont03" colspan="2"><label>
                  <input name="ename" type="text" size="10" />
                </label></td>
                <td width="6%" class="newfont03">�Ա�</td>
                <td width="9%" class="newfont03"><label>
                  <select name="sex">
                    <option value="��">��</option>
                    <option value="Ů">Ů</option>
                  </select>
                </label></td>
                <td width="4%" class="newfont03">����</td>
                <td width="6%" class="newfont03"><select name="nation">
                    <option value="�� ">��</option>
                    <option value="��">��</option>
                    <option value="��">��</option>
                    <option value="����">����</option>
                    <option value="��">��</option>
                </select></td>
                <td width="6%" class="newfont03">��������<span class="STYLE4">*</span></td>
                <td width="8%"><input name="bthday" type="text" size="10" onClick="WdatePicker()" readonly="readonly"  /></td>
                <td width="6%">���֤��<span class="STYLE4">*</span></td>
                <td width="12%"><input name="idcard" type="text" size="20" /></td>
              </tr>
              <tr>
                <td class="newfont03">�ù���ʽ</td>
                <td class="newfont03"><select name="emptype">
                    <option value="��ʽԱ��">��ʽԱ��</option>
                    <option value="��ʱԱ��">��ʱԱ��</option>
                </select></td>
                <td class="newfont03">��Ա��Դ</td>
                <td class="newfont03"><select name="empfrom">
                    <option value="�����Ƹ">�����Ƹ</option>
                    <option value="У԰��Ƹ">У԰��Ƹ</option>
                    <option value="����">����</option>
                </select></td>
                <td class="newfont03">������ò</td>
                <td class="newfont03"><select name="politic">
                    <option value="��Ա">��Ա</option>
                    <option value="Ԥ����Ա">Ԥ����Ա</option>
                    <option value="��Ա">��Ա</option>
                    <option value="����">����</option>
                </select></td>
                <td class="newfont03">������</td>
                <td class="newfont03"><input name="birthplace" type="text" size="6" /></td>
                <td class="newfont03">����</td>
                <td><input name="nationalhome" type="text" value="��˳" size="6" /></td>
                <td>����</td>
                <td><input name="home" type="text" value="��˳" size="6" /></td>
              </tr>
              <tr>
                <td class="newfont03">��ϵ�绰</td>
                <td class="newfont03"><input name="phone" type="text" size="10" /></td>
                <td class="newfont03">�����ʼ�</td>
                <td class="newfont03"><input name="email" type="text" size="10" /></td>
                <td>���</td>
                <td colspan="3"><input name="height" type="text" size="10" /></td>
                <td>Ѫ��</td>
                <td><select name="blood">
                    <option value="A��">A��</option>
                    <option value="B��">B��</option>
                    <option value="AB��">AB��</option>
                    <option value="O��">O��</option>
                    <option value="������">������</option>
                </select></td>
                <td>����״��</td>
                <td><select name="marital">
                    <option value="�ѻ�">�ѻ�</option>
                    <option value="δ��">δ��</option>
                    <option value="ɥż">ɥż</option>
                    <option value="���">���</option>
                    <option value="����">����</option>
                </select></td>
              </tr>
              <tr>
                <td class="newfont03">���ѧ��</td>
                <td class="newfont03"><label>
                  <select name="education">
                    <option value="��������">��������</option>
                    <option value="��ר">��ר</option>
                    <option value="����">����</option>
                    <option value="�о���">�о���</option>
                  </select>
                </label></td>
                <td class="newfont03">���ѧλ</td>
                <td class="newfont03"><label>
                  <select name="hightdegree">
                    <option value="��ѧλ">��ѧλ</option>
                  </select>
                </label></td>
                <td class="newfont03">��ҵԺУ</td>
                <td colspan="3"><input name="school" type="text" size="10" /></td>
                <td>��ѧרҵ</td>
                <td><input name="major" type="text" size="10" /></td>
                <td>��ҵ����</td>
                <td><input name="graduatedate" type="text" size="12" onClick="WdatePicker()" readonly="readonly"/></td>
              </tr>
              <tr>
                <td>���Ÿ�λ����</td>
                <td class="newfont03" colspan="2">��������<span class="STYLE4">*</span></td>
                <td class="newfont03"  colspan="3"><label>
                  <select name="job_dept_r_id">
                  	<c:forEach var="dept" items="${sessionScope.deptlist }">
						<option value="${dept.dept_number }">${dept.dept_name }</option>
					</c:forEach>	
						<!-- <option value="2">������</option>
						<option value="4">����</option>
						<option value="5">���۲�</option>
						<option value="6">������</option> -->
				  </select>
                </label></td>
				<td class="newfont03" colspan="2">��λ����<span class="STYLE4">*</span></td>
                <td class="newfont03"  colspan="5"><label>
                  <select name="job_job_r_id">
                  	<c:forEach var="job" items="${sessionScope.joblist }">
                  		<option value="${job.job_number }">${job.job_name }</option>
                  	</c:forEach>	
						<!-- <option value="2">�����ܼ�</option>
						<option value="3">��������</option>
						<option value="4">�����з�</option>
						<option value="5">�����ܼ�</option>
						<option value="6">��������</option> -->
				  </select>
                </label></td>
              </tr>
              <tr>
                <td>�����ڰ���</td>
                <td class="newfont03">�Ƿ���������</td>
                <td class="newfont03"><label>
                  <select name="tryuse">
                    <option value="��">�� </option>
                    <option value="��">��</option>
                  </select>
                </label></td>
                <td class="newfont03">��ʼʱ��<span class="STYLE4">*</span></td>
                <td class="newfont03"><input name="starttime" type="text" size="12" onClick="WdatePicker()" readonly="readonly"  /></td>
                <td class="newfont03">����ʱ��<span class="STYLE4">*</span></td>
                <td colspan="3"><input name="endtime" type="text" size="12" onClick="WdatePicker()" readonly="readonly"  /></td>
                <td colspan="2"><span class="newfont03"><span class="STYLE7">��ע</span></span></td>
                <td colspan="2"><input name="other" type="text" size="18"  /></td>
              </tr>
              
            </table>
            <table border="1">
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
              <td><input name="begintime" type="text" size="12" onClick="WdatePicker()" readonly="readonly"  /></td>
              <td><input name="lasttime" type="text" size="12" onClick="WdatePicker()" readonly="readonly"  /></td>
              <td><input name="company" type="text" size="12" /></td>
              <td><input name="jobdescribe" type="text" size="12" /></td>
              <td><input name="position" type="text" size="12" /></td>
              <td><input name="slary" type="text" size="12" /></td>
              <td><input name="referencepeople" type="text" size="12" /></td>
              <td><input name="referenceposition" type="text" size="12" /></td>
              <td><input name="referencephone" type="text" size="12" /></td>
              <td colspan="3"><input name="explannation" type="text" size="25" /></td>
            </tr>
            <tr bgcolor="#EEEEEE">
              <td colspan="2"><strong>�������*</strong></td>
              <td colspan="3"><label>
                <select name="otherlanguage">
                  <option value="Ӣ��">Ӣ��</option>
                  <option value="����">����</option>
                  <option value="����">����</option>
                  <option value="����">����</option>
                  <option value="����">����</option>
                </select>
              </label></td>
              <td colspan="2">������������̶�</td>
              <td colspan="5"><label>
          <select name="languageskill">
            <option>0 ��ȫ����</option>
            <option>1 ���������ܽ���ҵ��ͨ</option>
            <option>2 ���޵�ҵ��ͨ</option>
            <option>3 һ�㣬ҵ��ͨ������������</option>
            <option>4 �ã� �����ѵؽ���̸�кͽ���</option>
            <option>5 �����������������������</option>
          </select>
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
                <select name="ralation">
                  <option value="����">����</option>
                  <option value="ĸ��">ĸ��</option>
                  <option value="��ż">��ż</option>
                </select>
              </label></td>
              <td colspan="2"><input name="ralationname" type="text" size="12" /></td>
              <td colspan="3"><input name="ralationjob" type="text" size="25" /></td>
              <td><input name="ralationposition" type="text" size="12" /></td>
              <td colspan="4"><input name="ralationphone" type="text" size="12" /></td>
              </tr>
            
          </table></td>
        </tr>
			</table>
          </td>
        </tr>

      </table>
	  <br>
      <div align="center">
        <input type="submit" name="Submit" value="����" />
       &nbsp;&nbsp;
&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     
<input type="reset" name="reset" value="����" />
      </div>
    </div>
  </form>
</div>
</body>
</html>