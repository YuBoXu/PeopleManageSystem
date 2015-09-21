<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/common.css" type="text/css" />
<title>管理区域</title>
<style type="text/css">
<!--
.STYLE3 {font-size: 10; }
-->
</style>
</head>
<body>
<div id="man_zone">
  <form action="hyOutServlet"  method="post" target="_top">
    <div class="MainDiv">
      <table width="97%" border="0" cellpadding="0" cellspacing="0" class="CContent">
        <tr>
          <th class="tablestyle_title" ><div align="left">退出系统页面</div></th>
        </tr>
        <tr>
          <td class="CPanel"><table width="95%" border="0" align="center" cellpadding="4" cellspacing="1" bgcolor="#464646" class="newfont03">
            <tr class="CTitle" >
              <td height="22" colspan="11" align="center" style="font-size:16px"><p>是否退出登陆系统</p>                </td>
            </tr>
            
      </table>
	 
      <div align="center">
        <input type="submit" name="submit" value="确定" /><a href="javascript:mySubmit()"></a>
         &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     
        <input type="button" name="cancel" value="取消" /><a href="javascript:myCancel()"></a>
      </div>
  </form>
</div>
</body>
<script language="javascript" type="text/javascript">
function mySubmit()
{
	System.out.println("");
	System.exit(0);
	
}
function myCancel()
{
	window.history.back();
}  
</script>
</html>