<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<link rel="stylesheet" href="css/common.css" type="text/css" />
<title>�ʼ�����</title>
<style type="text/css">
<!--
.STYLE3 {font-size: 10; }
-->
</style>
<script language="javascript" type="text/javascript">

  function link(){
  if(document.fom.id.value==""&&document.fom.id2.value==""){
	alert("Ա����ź�Ա��������������дһ�");
	return false;
}


	if(document.fom.title.value.length>0){		
	}else{
		alert("�ʼ����ⲻ��Ϊ�գ�");
		return false;
	}
	if(document.fom.email.value.length>0){		
	}else{
		alert("�ʼ����ݲ���Ϊ�գ�");
		return false;
	}

		return true;
}
  
  
</script>
</head>

<body>
<div id="man_zone">
  <form action="SendEmailServlet" onsubmit="return link();" method="post" name="fom" id="fom" target="manFrame" >
    <div class="MainDiv">
      <table width="97%" border="0" cellpadding="0" cellspacing="0" class="CContent">
        <tr>
          <th class="tablestyle_title" ><div align="left">�����ʼ�ҳ��</div></th>
        </tr>
        <tr>
          <td class="CPanel"><table width="99%" border="0" align="center" cellpadding="4" cellspacing="1" bgcolor="#464646" class="newfont03">
            <tr class="CTitle" >
              <td height="22" colspan="16" align="center" style="font-size:16px">�����ʼ�</td>
            </tr>
            <tr bgcolor="#EEEEEE">
              <td colspan="16" align="center"><div align="center">
                <p>Ա�����Ա��������������һ�</p>
                <p>
                  <label>Ա����ţ�
                    <input type="text" name="id" />
                    </label>
                	Ա��������
                  <input type="text" name="id2" />
                </p>
                <p>�ʼ����� <input type="text" name="title" size="40"/></p>
                <p>�ʼ�����:</p>
                <p><textarea rows="10" cols="80" name="email" ></textarea></p>
              </div>
                    <div align="center" class="STYLE3">
                      <label></label>
                    </div>
                <div align="center" class="STYLE3">
                      <label></label>
                  </div></td>
            </tr>
          </table></td>
        </tr>
      </table>
      <br />
      <div align="center">
        <input type="submit" name="Submit"  class= "myButton1" value="�� ��" />
        &nbsp;&nbsp;
        &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="reset" name="Submit"  class= "myButton1" value="ȡ ��" />
      </div>
    </div>
  </form>
</div>
</body>
</html>