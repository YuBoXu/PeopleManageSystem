<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/common.css" type="text/css" />
<title>登录系统</title>
<style type="text/css">
body{
background:url("images/bg1.jpg")
}
</style>
</head>
<body>
<form action="hyLoginServlet"  method="post" onsubmit="return checkForm()"  >

                
				<form name="form1" method="post" onSubmit=" return yanzheng();"  action="index.html" >
                  <table width="320" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="40" height="50"><img src="images/user.gif" alt="a" width="30" height="30"></td>
                      <td width="38" height="50">用户</td>
                      <td width="242" height="50">
					  <input type="text" name="manager_name" id="manager_name" style="width:164px; height:32px; line-height:34px; background:url(images/inputbg.gif) repeat-x; border:solid 1px #d1d1d1; font-size:9pt; font-family:Verdana, Geneva, sans-serif;">
					  </td>
                    </tr>
                    <tr>
                      <td height="50"><img src="images/password.gif" alt="a" width="28" height="32"></td>
                      <td height="50">密码</td>
                      <td height="50">
					  <input type="password" name="manager_pwd" id="manager_pwd" style="width:164px; height:32px; line-height:34px; background:url(images/inputbg.gif) repeat-x; border:solid 1px #d1d1d1; font-size:9pt; ">
					  </td>
                    </tr>
                    <tr>
                      <td height="40">&nbsp;</td>
                      <td height="40">&nbsp;</td>
                      <td height="60"><label>
                        <input type="submit" name="submit"   value="登录系统">
                        </label>
                      </td>
                    </tr>
                  </table>
                 </form>
              </form>
  
</body>
<script language="javascript">
function checkForm(){
var name=document.getElementById("manager_name");
if(name.value==''){
   window.alert("请输入管理员姓名");
return false;
}
//-----
var pwd=document.getElementById("manager_pwd");

if(pwd.value==''){
   window.alert("请输入密码");
return false;
}

}
</script>
</html>