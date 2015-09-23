<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<link rel="stylesheet" href="css/common.css" type="text/css" />
<title>邮件发送</title>
<style type="text/css">
<!--
.STYLE3 {font-size: 10; }
-->
</style>
<script language="javascript" type="text/javascript">

  function link(){
  if(document.fom.id.value==""&&document.fom.id2.value==""){
	alert("员工编号和员工姓名您必须填写一项！");
	return false;
}


	if(document.fom.title.value.length>0){		
	}else{
		alert("邮件标题不能为空！");
		return false;
	}
	if(document.fom.email.value.length>0){		
	}else{
		alert("邮件内容不能为空！");
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
          <th class="tablestyle_title" ><div align="left">发送邮件页面</div></th>
        </tr>
        <tr>
          <td class="CPanel"><table width="99%" border="0" align="center" cellpadding="4" cellspacing="1" bgcolor="#464646" class="newfont03">
            <tr class="CTitle" >
              <td height="22" colspan="16" align="center" style="font-size:16px">发送邮件</td>
            </tr>
            <tr bgcolor="#EEEEEE">
              <td colspan="16" align="center"><div align="center">
                <p>员工编号员工姓名（至少添一项）</p>
                <p>
                  <label>员工编号：
                    <input type="text" name="id" />
                    </label>
                	员工姓名：
                  <input type="text" name="id2" />
                </p>
                <p>邮件标题 <input type="text" name="title" size="40"/></p>
                <p>邮件内容:</p>
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
        <input type="submit" name="Submit"  class= "myButton1" value="发 送" />
        &nbsp;&nbsp;
        &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="reset" name="Submit"  class= "myButton1" value="取 消" />
      </div>
    </div>
  </form>
</div>
</body>
</html>