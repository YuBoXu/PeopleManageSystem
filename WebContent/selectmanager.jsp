<%@ page language="java" contentType="text/html; charset=gb2312"
    pageEncoding="gb2312"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="css/common.css" type="text/css" />
<title>Insert title here</title>
<style type="text/css">
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-image: url(../images/bg.gif);
}
.STYLE4 {color: #666}
.STYLE5 {font-size: 16px}
</style>
</head>
<body>
<div id="man_zone">
<form action="hySelectManagerServlet" method="post"  onsubmit="return checkForm()" >
  管理员查询
  </label>
  <label></label>
  <label></label>
  <label></label>
  <label></label>
  <label><br />
  </label>
  <table width="100%" border="0">
    <tr>
     <td height="22" align="center" style="font-size:16px"><div align="center">管理员查询
         </label>
     </div>       </td></td>
    </tr>
  </table>
  <label><br />
  </label>
    <table width="55%" border="0" align="center">
    <tr>
      <td colspan="2"><span class="STYLE4">请输入查询条件：（可以填写一项或者多项）</span></td>
      </tr>
    <tr>
      <td width="43%"><label><span class="STYLE4">管理员编号：      </span></label></td>
      <td width="57%"><input type="text" id = "manager_id" name="manager_id" /></td>
      </tr>
    <tr>
      <td><span class="STYLE4">管理员姓名（支持模糊查询） ：</span></td>
      <td><input type="text" id = "manager_name" name="manager_name"  /></td>
      </tr>
    <tr>
      <td><span class="STYLE4">管理员部门：</span></td>
      <td><input type="text" id = "manager_dept" name="manager_dept"  /></td>
      </tr>
    <tr>
      <td align="center" colspan="2"><input type="submit" id = "submit" name="sumbit" value="查询" />&nbsp;
        <input type="button" id="cancel" name="cancel" value="取消" />     </td>
      </tr>
  </table>

</form>
</div>
</body>
<script language="javascript">

//---
function cancel(){
location.href("test.html");
return false;
}
//-----
function checkForm(){
var id=document.getElementById("manager_id");
var name=document.getElementById("manager_name");
var dept=document.getElementById("manager_dept");
                                                                                                  
if(id.value==''&&name.value==''&&dept.value==''){                                                                                                                            
   window.alert("请填写查询条件");
   return false; 
}                                                                                                                         
}
</script>
</html>