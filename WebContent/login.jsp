<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录系统</title>
<style type="text/css">
<!--
*{overflow:hidden; font-size:9pt;}
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-image: url(images/bg.gif);
	background-repeat: repeat-x;
}
-->
</style>
</head>
<body>
<form action="hyLoginServlet"  method="post" onsubmit="return checkForm()"  >
 <DIV id="Layer1" style="position:absolute; left:782px;  
   top:335px; width:446px; height:173px; z-index:1; " >
  
  
<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="446" height="168">
    <param name="movie" value="images/63.swf">
    <param name="quality" value="high">
		<param name="wmode" value="transparent"> 
    <embed src="file:///C|/Documents and Settings/user/My Documents/63.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="746" height="168"></embed>
  </object>
   

</DIV>
    
  
  <table width="100%"  height="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="561" style="background:url(images/lbg.gif)"><table width="940" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td height="238" style="background:url(images/login01.jpg)">&nbsp;</td>
          </tr>
          <tr>
            <td height="190"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="208" height="190" style="background:url(images/login02.jpg)">&nbsp;</td>
                <td width="518" style="background:url(images/login03.jpg)">
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
                        <input type="submit" name="submit"  style=" border:0px; width:95px; height:40px; line-height:40px; background:url(images/login.gif) repeat-x;  font-size:9pt; " value="登录系统">
                        </label>
                      </td>
                    </tr>
                  </table>
                 </form>
                </td>
                <td width="214" style="background:url(images/login04.jpg)" >&nbsp;</td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td height="133" style="background:url(images/login05.jpg)">&nbsp;</td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
</table>
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